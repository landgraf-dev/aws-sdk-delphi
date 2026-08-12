# Local patch: `AWS.S3.Transform.CommonPrefixUnmarshaller.pas`

**Date:** 2026-08-11
**Found by:** DUnitX suite run against a real Backblaze B2 account.

## Symptom

Listing an S3 "directory" with `Delimiter = '/'` against **Backblaze B2** returns:

- **zero `Contents`** whenever the directory also has at least one sub-directory, and
- **exactly one `CommonPrefixes` entry — the last one** — no matter how many sub-directories exist.

Measured against a real B2 bucket. Six objects exist under `unit_tests/probe/`:

```
--- ListObjects prefix="unit_tests/probe/" delimiter="/"
  page 1: objects=0 prefixes=1 IsTruncated=False NextMarker=""
    <DIR>  unit_tests/probe/dirC/          <- dirA and dirB missing, aaa.txt and zzz.txt missing

--- ListObjects prefix="unit_tests/probe/" delimiter=""      (no delimiter, same data)
  page 1: objects=6 prefixes=0 IsTruncated=False NextMarker=""
    unit_tests/probe/
    unit_tests/probe/aaa.txt
    unit_tests/probe/dirA/
    unit_tests/probe/dirB/
    unit_tests/probe/dirC/
    unit_tests/probe/zzz.txt
```

The data is in the bucket and B2 returns it; the SDK loses it while parsing.

`IsTruncated`, `NextMarker`, `MaxKeys`, `Name` etc. are lost in the same way if they appear after `<CommonPrefixes>` in the response, so a truncated listing can also silently stop paginating.

## Cause

`TCommonPrefixUnmarshaller.Unmarshall` had a **dangling `else`**:

```pascal
while AContext.Read do
  if AContext.IsStartElement or AContext.IsAttribute then
    if AContext.TestExpression('Prefix', TargetDepth) then
    begin
      ...
      Continue;
    end
  else                                                    // binds to the INNER if
    if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
      Exit(UnmarshalledObject);
```

In Object Pascal an `else` binds to the nearest unmatched `if`, so the `else` above belongs to `TestExpression('Prefix', ...)`, not to `IsStartElement or IsAttribute`. Consequences:

1. On `</CommonPrefixes>` the outer condition is False and there is no outer `else`, so **the loop never exits at its own end element**. It runs until `AContext.Read` returns False, i.e. to the end of the document, consuming every following `<Contents>`, `<CommonPrefixes>`, `<IsTruncated>`, … element.
2. Each further `<Prefix>` it passes over is assigned to the *same* object, so the **last** prefix in the document wins — which is why `dirC` came back rather than `dirA`.

Every other generated unmarshaller in this family (e.g. `AWS.S3.Transform.ObjectUnmarshaller.pas`) tests more than one field name and therefore already wraps its inner `if`s in `begin … end`, which binds the `else` correctly. This file only tests one field, so the generator emitted it without the block. The same shape exists in 42 other files, nearly all under `Services\S3Control` plus `AWS.S3.Transform.CopyObjectResponseUnmarshaller.pas` and `AWS.S3.Transform.CopyPartResponseUnmarshaller.pas`; those are top-level response unmarshallers with nothing following them in the document, so the over-read is currently harmless there. Only this one is reached in a loop with siblings after it.

## Why it never showed up before

The over-read only loses data that appears **after** the first `<CommonPrefixes>` element in the XML.

- **AWS S3, MinIO, SeaweedFS** serialise `<Contents>` first and `<CommonPrefixes>` last, so nothing follows the damage.
- **Backblaze B2** serialises `<CommonPrefixes>` first, so the entire `<Contents>` list follows it and is swallowed.

## The fix

Wrap the inner `if` in `begin … end` so the `else` binds to the outer `if`:

```pascal
while AContext.Read do
  if AContext.IsStartElement or AContext.IsAttribute then
  begin                                                   // ADDED
    if AContext.TestExpression('Prefix', TargetDepth) then
    begin
      var Unmarshaller := TStringUnmarshaller.Instance;
      UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
      Continue;
    end;
  end                                                     // ADDED
  else
    if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
      Exit(UnmarshalledObject);
```

No behaviour change for providers that were already working: with `<Contents>` first, the elements this loop used to swallow were only the trailing ones it should never have read anyway.
