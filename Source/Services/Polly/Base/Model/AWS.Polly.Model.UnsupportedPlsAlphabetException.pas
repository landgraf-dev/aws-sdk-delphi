unit AWS.Polly.Model.UnsupportedPlsAlphabetException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EUnsupportedPlsAlphabetException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EUnsupportedPlsAlphabetException }

function EUnsupportedPlsAlphabetException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EUnsupportedPlsAlphabetException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EUnsupportedPlsAlphabetException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
