unit AWS.SNS.Model.EndpointDisabledException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Exception;

type
  EEndpointDisabledException = class(EAmazonSimpleNotificationServiceException)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ EEndpointDisabledException }

function EEndpointDisabledException.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure EEndpointDisabledException.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function EEndpointDisabledException.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
