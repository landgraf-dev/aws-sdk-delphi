unit AWS.Polly.Model.LexiconSizeExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  ELexiconSizeExceededException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ELexiconSizeExceededException }

function ELexiconSizeExceededException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ELexiconSizeExceededException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ELexiconSizeExceededException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
