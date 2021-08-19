unit AWS.Polly.Model.ServiceFailureException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Exception;

type
  EServiceFailureException = class(EAmazonPollyException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EServiceFailureException }

function EServiceFailureException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EServiceFailureException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EServiceFailureException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
