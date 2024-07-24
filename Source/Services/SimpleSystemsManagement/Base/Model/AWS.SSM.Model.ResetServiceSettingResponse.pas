unit AWS.SSM.Model.ResetServiceSettingResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.ServiceSetting;

type
  TResetServiceSettingResponse = class;
  
  IResetServiceSettingResponse = interface(IAmazonWebServiceResponse)
    function GetServiceSetting: TServiceSetting;
    procedure SetServiceSetting(const Value: TServiceSetting);
    function GetKeepServiceSetting: Boolean;
    procedure SetKeepServiceSetting(const Value: Boolean);
    function Obj: TResetServiceSettingResponse;
    function IsSetServiceSetting: Boolean;
    property ServiceSetting: TServiceSetting read GetServiceSetting write SetServiceSetting;
    property KeepServiceSetting: Boolean read GetKeepServiceSetting write SetKeepServiceSetting;
  end;
  
  TResetServiceSettingResponse = class(TAmazonWebServiceResponse, IResetServiceSettingResponse)
  strict private
    FServiceSetting: TServiceSetting;
    FKeepServiceSetting: Boolean;
    function GetServiceSetting: TServiceSetting;
    procedure SetServiceSetting(const Value: TServiceSetting);
    function GetKeepServiceSetting: Boolean;
    procedure SetKeepServiceSetting(const Value: Boolean);
  strict protected
    function Obj: TResetServiceSettingResponse;
  public
    destructor Destroy; override;
    function IsSetServiceSetting: Boolean;
    property ServiceSetting: TServiceSetting read GetServiceSetting write SetServiceSetting;
    property KeepServiceSetting: Boolean read GetKeepServiceSetting write SetKeepServiceSetting;
  end;
  
implementation

{ TResetServiceSettingResponse }

destructor TResetServiceSettingResponse.Destroy;
begin
  ServiceSetting := nil;
  inherited;
end;

function TResetServiceSettingResponse.Obj: TResetServiceSettingResponse;
begin
  Result := Self;
end;

function TResetServiceSettingResponse.GetServiceSetting: TServiceSetting;
begin
  Result := FServiceSetting;
end;

procedure TResetServiceSettingResponse.SetServiceSetting(const Value: TServiceSetting);
begin
  if FServiceSetting <> Value then
  begin
    if not KeepServiceSetting then
      FServiceSetting.Free;
    FServiceSetting := Value;
  end;
end;

function TResetServiceSettingResponse.GetKeepServiceSetting: Boolean;
begin
  Result := FKeepServiceSetting;
end;

procedure TResetServiceSettingResponse.SetKeepServiceSetting(const Value: Boolean);
begin
  FKeepServiceSetting := Value;
end;

function TResetServiceSettingResponse.IsSetServiceSetting: Boolean;
begin
  Result := FServiceSetting <> nil;
end;

end.
