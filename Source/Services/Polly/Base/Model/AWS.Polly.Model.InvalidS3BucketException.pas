unit AWS.Polly.Model.InvalidS3BucketException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EInvalidS3BucketException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidS3BucketException }

function EInvalidS3BucketException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidS3BucketException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidS3BucketException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
