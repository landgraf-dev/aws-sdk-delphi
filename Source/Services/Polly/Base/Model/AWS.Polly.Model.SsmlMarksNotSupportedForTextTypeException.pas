unit AWS.Polly.Model.SsmlMarksNotSupportedForTextTypeException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  ESsmlMarksNotSupportedForTextTypeException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ESsmlMarksNotSupportedForTextTypeException }

function ESsmlMarksNotSupportedForTextTypeException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ESsmlMarksNotSupportedForTextTypeException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ESsmlMarksNotSupportedForTextTypeException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
