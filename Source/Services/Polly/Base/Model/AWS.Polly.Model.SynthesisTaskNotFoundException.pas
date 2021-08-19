unit AWS.Polly.Model.SynthesisTaskNotFoundException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  ESynthesisTaskNotFoundException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ ESynthesisTaskNotFoundException }

function ESynthesisTaskNotFoundException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure ESynthesisTaskNotFoundException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function ESynthesisTaskNotFoundException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
