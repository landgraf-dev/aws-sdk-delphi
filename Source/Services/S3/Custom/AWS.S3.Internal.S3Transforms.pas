unit AWS.S3.Internal.S3Transforms;

interface

uses
  System.SysUtils, System.DateUtils,
  AWS.SDKUtils;

type
  TS3Transforms = class
  public
    class function ToDateTime(const Value: string): TDateTime; static;
  end;

implementation

{ TS3Transforms }

class function TS3Transforms.ToDateTime(const Value: string): TDateTime;
begin
  Result := TAWSSDKUtils.Rfc822ToDateTime(Value);
end;

end.
