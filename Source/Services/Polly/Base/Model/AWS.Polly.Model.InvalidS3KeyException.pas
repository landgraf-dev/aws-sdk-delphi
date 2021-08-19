unit AWS.Polly.Model.InvalidS3KeyException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EInvalidS3KeyException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidS3KeyException }

function EInvalidS3KeyException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidS3KeyException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidS3KeyException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
