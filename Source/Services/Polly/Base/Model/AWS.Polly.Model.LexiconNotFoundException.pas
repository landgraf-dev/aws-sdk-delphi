unit AWS.Polly.Model.LexiconNotFoundException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  ELexiconNotFoundException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ELexiconNotFoundException }

function ELexiconNotFoundException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ELexiconNotFoundException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ELexiconNotFoundException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
