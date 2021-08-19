unit AWS.Polly.Model.InvalidSsmlException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EInvalidSsmlException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidSsmlException }

function EInvalidSsmlException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidSsmlException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidSsmlException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
