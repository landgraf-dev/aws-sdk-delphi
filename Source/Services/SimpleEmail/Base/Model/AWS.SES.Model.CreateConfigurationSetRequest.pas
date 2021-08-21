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
    function GetKeepConfigurationSet: Boolean;
    procedure SetKeepConfigurationSet(const Value: Boolean);
    function Obj: TCreateConfigurationSetRequest;
    function IsSetConfigurationSet: Boolean;
    property ConfigurationSet: TConfigurationSet read GetConfigurationSet write SetConfigurationSet;
    property KeepConfigurationSet: Boolean read GetKeepConfigurationSet write SetKeepConfigurationSet;
  end;
  
  TCreateConfigurationSetRequest = class(TAmazonSimpleEmailServiceRequest, ICreateConfigurationSetRequest)
  strict private
    FConfigurationSet: TConfigurationSet;
    FKeepConfigurationSet: Boolean;
    function GetConfigurationSet: TConfigurationSet;
    procedure SetConfigurationSet(const Value: TConfigurationSet);
    function GetKeepConfigurationSet: Boolean;
    procedure SetKeepConfigurationSet(const Value: Boolean);
  strict protected
    function Obj: TCreateConfigurationSetRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSet: Boolean;
    property ConfigurationSet: TConfigurationSet read GetConfigurationSet write SetConfigurationSet;
    property KeepConfigurationSet: Boolean read GetKeepConfigurationSet write SetKeepConfigurationSet;
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
    if not KeepConfigurationSet then
      FConfigurationSet.Free;
    FConfigurationSet := Value;
  end;
end;

function TCreateConfigurationSetRequest.GetKeepConfigurationSet: Boolean;
begin
  Result := FKeepConfigurationSet;
end;

procedure TCreateConfigurationSetRequest.SetKeepConfigurationSet(const Value: Boolean);
begin
  FKeepConfigurationSet := Value;
end;

function TCreateConfigurationSetRequest.IsSetConfigurationSet: Boolean;
begin
  Result := FConfigurationSet <> nil;
end;

end.
