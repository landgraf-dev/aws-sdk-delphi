unit AWS.Polly.Model.MaxLexiconsNumberExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EMaxLexiconsNumberExceededException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EMaxLexiconsNumberExceededException }

function EMaxLexiconsNumberExceededException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EMaxLexiconsNumberExceededException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EMaxLexiconsNumberExceededException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
