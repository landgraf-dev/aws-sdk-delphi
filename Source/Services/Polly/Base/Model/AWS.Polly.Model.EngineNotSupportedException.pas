unit AWS.Polly.Model.EngineNotSupportedException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EEngineNotSupportedException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EEngineNotSupportedException }

function EEngineNotSupportedException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EEngineNotSupportedException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EEngineNotSupportedException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
