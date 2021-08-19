unit AWS.Polly.Model.InvalidLexiconException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EInvalidLexiconException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EInvalidLexiconException }

function EInvalidLexiconException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EInvalidLexiconException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EInvalidLexiconException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
