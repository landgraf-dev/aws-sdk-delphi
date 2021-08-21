unit AWS.SES.Model.CreateConfigurationSetRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.SES.Model.ConfigurationSet;

type
  TCreateConfigurationSetRequest = class;
  
  ICreateConfigurationSetRequest = interface
    function GetConfigurationSet: TConfigurationSet;
    procedure SetConfigurationSet(const Value: TConfigurationSet);
    function Obj: TCreateConfigurationSetRequest;
    function IsSetConfigurationSet: Boolean;
    property ConfigurationSet: TConfigurationSet read GetConfigurationSet write SetConfigurationSet;
  end;
  
  TCreateConfigurationSetRequest = class(TAmazonSimpleEmailServiceRequest, ICreateConfigurationSetRequest)
  strict private
    FConfigurationSet: TConfigurationSet;
    function GetConfigurationSet: TConfigurationSet;
    procedure SetConfigurationSet(const Value: TConfigurationSet);
  strict protected
    function Obj: TCreateConfigurationSetRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSet: Boolean;
    property ConfigurationSet: TConfigurationSet read GetConfigurationSet write SetConfigurationSet;
  end;
  
implementation

{ TCreateConfigurationSetRequest }

destructor TCreateConfigurationSetRequest.Destroy;
begin
  ConfigurationSet := nil;
  inherited;
end;

function TCreateConfigurationSetRequest.Obj: TCreateConfigurationSetRequest;
begin
  Result := Self;
end;

function TCreateConfigurationSetRequest.GetConfigurationSet: TConfigurationSet;
begin
  Result := FConfigurationSet;
end;

procedure TCreateConfigurationSetRequest.SetConfigurationSet(const Value: TConfigurationSet);
begin
  if FConfigurationSet <> Value then
  begin
    FConfigurationSet.Free;
    FConfigurationSet := Value;
  end;
end;

function TCreateConfigurationSetRequest.IsSetConfigurationSet: Boolean;
begin
  Result := FConfigurationSet <> nil;
end;

end.
