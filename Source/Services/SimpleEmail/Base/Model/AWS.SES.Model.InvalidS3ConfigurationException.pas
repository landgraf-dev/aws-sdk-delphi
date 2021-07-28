unit AWS.SES.Model.InvalidS3ConfigurationException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EInvalidS3ConfigurationException = class(EAmazonSimpleEmailServiceException)
  strict private
    FBucket: Nullable<string>;
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  public
    function IsSetBucket: Boolean;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ EInvalidS3ConfigurationException }

function EInvalidS3ConfigurationException.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure EInvalidS3ConfigurationException.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function EInvalidS3ConfigurationException.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
