unit AWS.Polly.Model.InvalidNextTokenException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EInvalidNextTokenException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidNextTokenException }

function EInvalidNextTokenException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidNextTokenException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidNextTokenException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
