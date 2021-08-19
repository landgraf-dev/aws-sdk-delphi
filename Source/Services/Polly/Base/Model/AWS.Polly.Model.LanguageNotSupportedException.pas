unit AWS.Polly.Model.LanguageNotSupportedException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  ELanguageNotSupportedException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ELanguageNotSupportedException }

function ELanguageNotSupportedException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ELanguageNotSupportedException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ELanguageNotSupportedException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
