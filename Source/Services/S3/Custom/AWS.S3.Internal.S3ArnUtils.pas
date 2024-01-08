unit AWS.S3.Internal.S3ArnUtils;

interface

uses
  AWS.Arn,
  AWS.S3.ArnExtensions;

type
  TS3ArnUtils = class
  public
    class function IsS3AccessPointsArn(const Bucket: string): Boolean; static;
    class function IsS3OutpostsArn(const Bucket: string): Boolean; static;
  end;

implementation

{ TS3ArnUtils }

class function TS3ArnUtils.IsS3AccessPointsArn(const Bucket: string): Boolean;
begin
  var Arn: TArn;
  if TArn.TryParse(Bucket, Arn) then
  begin
    var accessPointString: string;
    Exit(TArnExtensions.TryParseAccessPoint(Arn, accessPointString));
  end;
  Result := False;
end;

class function TS3ArnUtils.IsS3OutpostsArn(const Bucket: string): Boolean;
begin
  var Arn: TArn;
  Result := TArn.TryParse(bucket, Arn) and TArnExtensions.IsOutpostArn(Arn);
end;

end.
