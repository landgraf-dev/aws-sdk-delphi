unit AWS.SES.Model.DeleteConfigurationSetRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDeleteConfigurationSetRequest = class;
  
  IDeleteConfigurationSetRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function Obj: TDeleteConfigurationSetRequest;
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
  TDeleteConfigurationSetRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteConfigurationSetRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  strict protected
    function Obj: TDeleteConfigurationSetRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ TDeleteConfigurationSetRequest }

function TDeleteConfigurationSetRequest.Obj: TDeleteConfigurationSetRequest;
begin
  Result := Self;
end;

function TDeleteConfigurationSetRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TDeleteConfigurationSetRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TDeleteConfigurationSetRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
