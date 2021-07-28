unit AWS.SES.Model.DeleteConfigurationSetEventDestinationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDeleteConfigurationSetEventDestinationRequest = class;
  
  IDeleteConfigurationSetEventDestinationRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestinationName: string;
    procedure SetEventDestinationName(const Value: string);
    function Obj: TDeleteConfigurationSetEventDestinationRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestinationName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestinationName: string read GetEventDestinationName write SetEventDestinationName;
  end;
  
  TDeleteConfigurationSetEventDestinationRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteConfigurationSetEventDestinationRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEventDestinationName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestinationName: string;
    procedure SetEventDestinationName(const Value: string);
  strict protected
    function Obj: TDeleteConfigurationSetEventDestinationRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestinationName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestinationName: string read GetEventDestinationName write SetEventDestinationName;
  end;
  
implementation

{ TDeleteConfigurationSetEventDestinationRequest }

function TDeleteConfigurationSetEventDestinationRequest.Obj: TDeleteConfigurationSetEventDestinationRequest;
begin
  Result := Self;
end;

function TDeleteConfigurationSetEventDestinationRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TDeleteConfigurationSetEventDestinationRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TDeleteConfigurationSetEventDestinationRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TDeleteConfigurationSetEventDestinationRequest.GetEventDestinationName: string;
begin
  Result := FEventDestinationName.ValueOrDefault;
end;

procedure TDeleteConfigurationSetEventDestinationRequest.SetEventDestinationName(const Value: string);
begin
  FEventDestinationName := Value;
end;

function TDeleteConfigurationSetEventDestinationRequest.IsSetEventDestinationName: Boolean;
begin
  Result := FEventDestinationName.HasValue;
end;

end.
