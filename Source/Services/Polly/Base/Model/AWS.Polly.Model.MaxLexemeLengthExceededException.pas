unit AWS.Polly.Model.MaxLexemeLengthExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EMaxLexemeLengthExceededException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EMaxLexemeLengthExceededException }

function EMaxLexemeLengthExceededException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EMaxLexemeLengthExceededException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EMaxLexemeLengthExceededException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
