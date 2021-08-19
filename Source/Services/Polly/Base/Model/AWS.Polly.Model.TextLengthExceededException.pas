unit AWS.Polly.Model.TextLengthExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  ETextLengthExceededException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ETextLengthExceededException }

function ETextLengthExceededException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ETextLengthExceededException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ETextLengthExceededException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
