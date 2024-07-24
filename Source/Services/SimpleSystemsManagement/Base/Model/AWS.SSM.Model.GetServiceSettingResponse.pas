unit AWS.SSM.Model.GetServiceSettingResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.ServiceSetting;

type
  TGetServiceSettingResponse = class;
  
  IGetServiceSettingResponse = interface(IAmazonWebServiceResponse)
    function GetServiceSetting: TServiceSetting;
    procedure SetServiceSetting(const Value: TServiceSetting);
    function GetKeepServiceSetting: Boolean;
    procedure SetKeepServiceSetting(const Value: Boolean);
    function Obj: TGetServiceSettingResponse;
    function IsSetServiceSetting: Boolean;
    property ServiceSetting: TServiceSetting read GetServiceSetting write SetServiceSetting;
    property KeepServiceSetting: Boolean read GetKeepServiceSetting write SetKeepServiceSetting;
  end;
  
  TGetServiceSettingResponse = class(TAmazonWebServiceResponse, IGetServiceSettingResponse)
  strict private
    FServiceSetting: TServiceSetting;
    FKeepServiceSetting: Boolean;
    function GetServiceSetting: TServiceSetting;
    procedure SetServiceSetting(const Value: TServiceSetting);
    function GetKeepServiceSetting: Boolean;
    procedure SetKeepServiceSetting(const Value: Boolean);
  strict protected
    function Obj: TGetServiceSettingResponse;
  public
    destructor Destroy; override;
    function IsSetServiceSetting: Boolean;
    property ServiceSetting: TServiceSetting read GetServiceSetting write SetServiceSetting;
    property KeepServiceSetting: Boolean read GetKeepServiceSetting write SetKeepServiceSetting;
  end;
  
implementation

{ TGetServiceSettingResponse }

destructor TGetServiceSettingResponse.Destroy;
begin
  ServiceSetting := nil;
  inherited;
end;

function TGetServiceSettingResponse.Obj: TGetServiceSettingResponse;
begin
  Result := Self;
end;

function TGetServiceSettingResponse.GetServiceSetting: TServiceSetting;
begin
  Result := FServiceSetting;
end;

procedure TGetServiceSettingResponse.SetServiceSetting(const Value: TServiceSetting);
begin
  if FServiceSetting <> Value then
  begin
    if not KeepServiceSetting then
      FServiceSetting.Free;
    FServiceSetting := Value;
  end;
end;

function TGetServiceSettingResponse.GetKeepServiceSetting: Boolean;
begin
  Result := FKeepServiceSetting;
end;

procedure TGetServiceSettingResponse.SetKeepServiceSetting(const Value: Boolean);
begin
  FKeepServiceSetting := Value;
end;

function TGetServiceSettingResponse.IsSetServiceSetting: Boolean;
begin
  Result := FServiceSetting <> nil;
end;

end.
