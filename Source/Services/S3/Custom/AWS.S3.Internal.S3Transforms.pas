unit AWS.S3.Internal.S3Transforms;

interface

uses
  System.SysUtils, System.DateUtils;

type
  TS3Transforms = class
  public
    class function ToDateTime(const Value: string): TDateTime; static;
  end;

implementation

{ TS3Transforms }

class function TS3Transforms.ToDateTime(const Value: string): TDateTime;
begin
  // Actually this is wrong. We should parse RFC 822 / RFC 1123 format
  // The parser should return the value in local time zone
  {$MESSAGE WARN 'Implement this correctly'}
  Result := StrToDateTime(Value);
  Result := TTimeZone.Local.ToUniversalTime(Result);

end;

end.
