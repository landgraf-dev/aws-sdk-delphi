# Bug report: RFC822 date header parsing fails (AWS SDK for Delphi)

**Library:** Landgraf AWS SDK for Delphi, v0.7 (2021-09-03)
**Unit:** `Source/Core/AWS.SDKUtils.pas`
**Function:** `class function TAWSSDKUtils.TryRfc822ToDateTime`
**Service affected:** S3 (any operation that unmarshals a date *response header*)

---

## Symptom

Any S3 operation whose response carries an RFC822/1123 date header (e.g. the
`Last-Modified` header on `GetObject`, `PutObject`, `CopyObject`, `HeadObject`)
raises:

```
EConvertError: Invalid RFC822 date format: "Wed, 10 Jun 2026 00:51:41 GMT"
```

which the response pipeline re-wraps as:

```
EAmazonUnmarshallingException: Error unmarshalling response back from AWS
Invalid RFC822 date format: "Wed, 10 Jun 2026 00:51:41 GMT"
```

The date string in the message is a perfectly valid RFC822/RFC1123 timestamp, so
the failure is in the parser, not the server.

`ListObjects` is **not** affected because it parses object timestamps as ISO8601
from the XML body, a different code path.

## Call path

```
<response unmarshaller>
  -> TS3Transforms.ToDateTime            (Source/Services/S3/Custom/AWS.S3.Internal.S3Transforms.pas:36)
  -> TAWSSDKUtils.Rfc822ToDateTime       (raises EConvertError on failure)
  -> TAWSSDKUtils.TryRfc822ToDateTime    (returns False -> triggers the raise)
```

## Original code

```pascal
class function TAWSSDKUtils.TryRfc822ToDateTime(const S: string; var D: TDateTime): Boolean;
begin
  var Len := Length(S);
  if Len <> 29 then Exit(False);
  if S[4] <> ',' then Exit(False);
  if not S.EndsWith(' GMT') then Exit(False);
  Result := TryStrToDateTime(Copy(S, 5, 20), D, FRFC822FormatSettings);
  if Result then
    D := TTimeZone.Local.ToLocalTime(D);
end;
```

with the format settings configured in the class constructor as:

```pascal
FRFC822FormatSettings := TFormatSettings.Invariant;
FRFC822FormatSettings.ShortDateFormat := 'dd mmm yyyy';
```

## Root cause

There are three distinct problems, in order of severity:

1. **`TryStrToDateTime` cannot parse this layout with `FRFC822FormatSettings`
   (primary cause).**
   `TFormatSettings.Invariant` keeps `DateSeparator = '/'` and `TimeSeparator =
   ':'`. The RFC822 body is space-delimited (`dd mmm yyyy hh:nn:ss`) and uses a
   month *name*. `TryStrToDateTime('10 Jun 2026 00:51:41', D,
   FRFC822FormatSettings)` returns **False** even when the substring is correct.
   (Verified empirically: correcting only the substring below still failed; a
   component-wise parse of the very same string succeeded.)

2. **Off-by-one in the substring (`Copy(S, 5, 20)`).**
   For `'Wed, 10 Jun 2026 00:51:41 GMT'`, `Copy(S, 5, 20)` starts at the space
   *after* the comma and is 20 characters long, producing
   `' 10 Jun 2026 00:51:4'` — a leading space and the final seconds digit (`1`)
   truncated. The intended 20-char slice `'10 Jun 2026 00:51:41'` begins at
   position **6**, not 5.

3. **`if Len <> 29` rejects valid single-digit-day dates.**
   RFC1123 permits a single-digit day (`'Wed, 1 Jun 2026 00:51:41 GMT'`, 28
   chars). The hard length check returns `False` for those, so the raising
   wrapper throws for them too. The `S[4] <> ','` check has the same single-digit
   assumption.

## Suggested fix

Parse the components directly. This is locale-independent (no reliance on
`FormatSettings`), handles 1- and 2-digit days, and never raises on a well-formed
header:

```pascal
class function TAWSSDKUtils.TryRfc822ToDateTime(const S: string; var D: TDateTime): Boolean;
const
  MonthAbbr: array[1..12] of string =
    ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
     'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
var
  Core: string;
  Parts, TimeParts: TArray<string>;
  CommaPos, Mon, I, Yr, Dy, Hh, Nn, Ss: Integer;
begin
  Result := False;

  CommaPos := Pos(',', S);
  if CommaPos = 0 then
    Exit;

  // Strip the 'Ddd,' day-of-week prefix and the trailing ' GMT', leaving
  // 'dd mmm yyyy hh:nn:ss' (works for both 1- and 2-digit days).
  Core := Trim(Copy(S, CommaPos + 1, MaxInt));
  if Core.EndsWith(' GMT') then
    Core := Trim(Copy(Core, 1, Length(Core) - 4));

  // Parse component-by-component (locale independent), rather than relying on
  // TryStrToDateTime + FormatSettings which is unreliable for this layout.
  Parts := Core.Split([' '], TStringSplitOptions.ExcludeEmpty);
  if Length(Parts) <> 4 then
    Exit;

  Mon := 0;
  for I := 1 to 12 do
    if SameText(Parts[1], MonthAbbr[I]) then
    begin
      Mon := I;
      Break;
    end;

  TimeParts := Parts[3].Split([':']);
  if (Mon = 0) or (Length(TimeParts) <> 3) or
     not TryStrToInt(Parts[0], Dy) or
     not TryStrToInt(Parts[2], Yr) or
     not TryStrToInt(TimeParts[0], Hh) or
     not TryStrToInt(TimeParts[1], Nn) or
     not TryStrToInt(TimeParts[2], Ss) then
    Exit;

  Result := TryEncodeDateTime(Yr, Mon, Dy, Hh, Nn, Ss, 0, D);
  if Result then
    D := TTimeZone.Local.ToLocalTime(D);   // header is GMT/UTC -> convert to local
end;
```

`Trim`, `Pos`, `SameText`, `TryStrToInt` are in `System.SysUtils`;
`TryEncodeDateTime` is in `System.DateUtils` — both already in this unit's `uses`
clause, so no new dependencies are needed.

## Notes

- Only **parsing** (input) was broken. The formatting side
  (`FromDateTimeToRFC822` / `RFC822DateFormat` = `'ddd, dd MMM yyyy HH:mm:ss
  "GMT"'`) is unaffected and was left unchanged.
- A minimal alternative (just changing `Copy(S, 5, 20)` to `Copy(S, 6, 20)`) is
  **not** sufficient on its own — see root cause #1; the `TryStrToDateTime` call
  itself fails on this layout.

## How to reproduce

```pascal
uses AWS.SDKUtils;

var D: TDateTime;
// raises EConvertError before the fix; returns the correct local time after:
D := TAWSSDKUtils.Rfc822ToDateTime('Wed, 10 Jun 2026 00:51:41 GMT');

// single-digit day — rejected by the Len<>29 guard before the fix:
D := TAWSSDKUtils.Rfc822ToDateTime('Wed, 1 Jun 2026 00:51:41 GMT');
```

Or, end-to-end: perform a `GetObject` / `PutObject` against any S3 (or
S3-compatible, e.g. MinIO) endpoint and read the result — the `Last-Modified`
response header triggers the failure during unmarshalling.



---

## Why the SDK's own test suite doesn't catch it

I checked. The SDK **does** have an S3 test suite (`Tests/Source/AWSTests.S3.*`), but it misses this for three compounding reasons:

1. **The S3 tests are live integration tests, not unit tests.** `TGetObjectTestSetup.SetUp` calls `CreateBucketWithWait` → real `PutBucket`, then `PutObject`, against an actual S3 endpoint. They require real AWS credentials (the README's credential search order). So they don't run in ordinary CI or for most contributors — they only run if someone deliberately points them at a live account.
2. **Zero coverage of the date path.** `grep` across the whole test tree finds **no reference to `LastModified`** and **no test for `Rfc822ToDateTime`/`TryRfc822ToDateTime`** at all. The one `GetObject` test (`TGetObjectTests`) only checks **ranged byte-range reads** against the body — it never reads the parsed timestamp. So nothing ever asserts on the value the buggy function produces.
3. **It's environment-dependent, so even a live run on the author's machine likely didn't crash.** The root cause is `TryStrToDateTime` + `FRFC822FormatSettings` being unreliable for the `dd mmm yyyy hh:nn:ss` layout (locale + Delphi RTL version). On the author's config the buggy `Copy(S,5,20)` substring most likely still "parsed" — silently yielding a *wrong* seconds value rather than raising — which no test checks. On your Delphi/locale the same call returns `False`, so the wrapper raises.

Net: a header-only, value-unasserted, locale-sensitive code path behind credential-gated live tests — exactly the blind spot where a bug like this survives. The bug report ([07 aws sdk rfc822 date bug.md](vscode-webview://0d0461ugivndmv0v5ol4u3vtafqs7p891jp7brmm3cgd3l9oukuj/docs/07 aws sdk rfc822 date bug.md)) already gives them a deterministic, credential-free repro (`TAWSSDKUtils.Rfc822ToDateTime('Wed, 10 Jun 2026 00:51:41 GMT')`) they could turn into a proper unit test.
