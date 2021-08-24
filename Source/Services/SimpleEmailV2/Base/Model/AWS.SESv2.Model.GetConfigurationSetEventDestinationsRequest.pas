unit AWS.SESv2.Model.GetConfigurationSetEventDestinationsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TGetConfigurationSetEventDestinationsRequest = class;
  
  IGetConfigurationSetEventDestinationsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function Obj: TGetConfigurationSetEventDestinationsRequest;
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
  TGetConfigurationSetEventDestinationsRequest = class(TAmazonSimpleEmailServiceV2Request, IGetConfigurationSetEventDestinationsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  strict protected
    function Obj: TGetConfigurationSetEventDestinationsRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ TGetConfigurationSetEventDestinationsRequest }

function TGetConfigurationSetEventDestinationsRequest.Obj: TGetConfigurationSetEventDestinationsRequest;
begin
  Result := Self;
end;

function TGetConfigurationSetEventDestinationsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TGetConfigurationSetEventDestinationsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TGetConfigurationSetEventDestinationsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
