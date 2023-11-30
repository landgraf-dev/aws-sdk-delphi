unit AWS.SES.Model.DeleteConfigurationSetTrackingOptionsRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TDeleteConfigurationSetTrackingOptionsRequest = class;
  
  IDeleteConfigurationSetTrackingOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function Obj: TDeleteConfigurationSetTrackingOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
  TDeleteConfigurationSetTrackingOptionsRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteConfigurationSetTrackingOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  strict protected
    function Obj: TDeleteConfigurationSetTrackingOptionsRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ TDeleteConfigurationSetTrackingOptionsRequest }

function TDeleteConfigurationSetTrackingOptionsRequest.Obj: TDeleteConfigurationSetTrackingOptionsRequest;
begin
  Result := Self;
end;

function TDeleteConfigurationSetTrackingOptionsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TDeleteConfigurationSetTrackingOptionsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TDeleteConfigurationSetTrackingOptionsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
