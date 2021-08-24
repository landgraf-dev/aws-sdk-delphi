unit AWS.SESv2.Model.GetConfigurationSetRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TGetConfigurationSetRequest = class;
  
  IGetConfigurationSetRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function Obj: TGetConfigurationSetRequest;
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
  TGetConfigurationSetRequest = class(TAmazonSimpleEmailServiceV2Request, IGetConfigurationSetRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  strict protected
    function Obj: TGetConfigurationSetRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ TGetConfigurationSetRequest }

function TGetConfigurationSetRequest.Obj: TGetConfigurationSetRequest;
begin
  Result := Self;
end;

function TGetConfigurationSetRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TGetConfigurationSetRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TGetConfigurationSetRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
