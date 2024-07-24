unit AWS.SSM.Model.ServiceSetting;

interface

uses
  AWS.Nullable;

type
  TServiceSetting = class;
  
  IServiceSetting = interface
    function GetARN: string;
    procedure SetARN(const Value: string);
    function GetLastModifiedDate: TDateTime;
    procedure SetLastModifiedDate(const Value: TDateTime);
    function GetLastModifiedUser: string;
    procedure SetLastModifiedUser(const Value: string);
    function GetSettingId: string;
    procedure SetSettingId(const Value: string);
    function GetSettingValue: string;
    procedure SetSettingValue(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
    function Obj: TServiceSetting;
    function IsSetARN: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetLastModifiedUser: Boolean;
    function IsSetSettingId: Boolean;
    function IsSetSettingValue: Boolean;
    function IsSetStatus: Boolean;
    property ARN: string read GetARN write SetARN;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property LastModifiedUser: string read GetLastModifiedUser write SetLastModifiedUser;
    property SettingId: string read GetSettingId write SetSettingId;
    property SettingValue: string read GetSettingValue write SetSettingValue;
    property Status: string read GetStatus write SetStatus;
  end;
  
  TServiceSetting = class
  strict private
    FARN: Nullable<string>;
    FLastModifiedDate: Nullable<TDateTime>;
    FLastModifiedUser: Nullable<string>;
    FSettingId: Nullable<string>;
    FSettingValue: Nullable<string>;
    FStatus: Nullable<string>;
    function GetARN: string;
    procedure SetARN(const Value: string);
    function GetLastModifiedDate: TDateTime;
    procedure SetLastModifiedDate(const Value: TDateTime);
    function GetLastModifiedUser: string;
    procedure SetLastModifiedUser(const Value: string);
    function GetSettingId: string;
    procedure SetSettingId(const Value: string);
    function GetSettingValue: string;
    procedure SetSettingValue(const Value: string);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
  strict protected
    function Obj: TServiceSetting;
  public
    function IsSetARN: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetLastModifiedUser: Boolean;
    function IsSetSettingId: Boolean;
    function IsSetSettingValue: Boolean;
    function IsSetStatus: Boolean;
    property ARN: string read GetARN write SetARN;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property LastModifiedUser: string read GetLastModifiedUser write SetLastModifiedUser;
    property SettingId: string read GetSettingId write SetSettingId;
    property SettingValue: string read GetSettingValue write SetSettingValue;
    property Status: string read GetStatus write SetStatus;
  end;
  
implementation

{ TServiceSetting }

function TServiceSetting.Obj: TServiceSetting;
begin
  Result := Self;
end;

function TServiceSetting.GetARN: string;
begin
  Result := FARN.ValueOrDefault;
end;

procedure TServiceSetting.SetARN(const Value: string);
begin
  FARN := Value;
end;

function TServiceSetting.IsSetARN: Boolean;
begin
  Result := FARN.HasValue;
end;

function TServiceSetting.GetLastModifiedDate: TDateTime;
begin
  Result := FLastModifiedDate.ValueOrDefault;
end;

procedure TServiceSetting.SetLastModifiedDate(const Value: TDateTime);
begin
  FLastModifiedDate := Value;
end;

function TServiceSetting.IsSetLastModifiedDate: Boolean;
begin
  Result := FLastModifiedDate.HasValue;
end;

function TServiceSetting.GetLastModifiedUser: string;
begin
  Result := FLastModifiedUser.ValueOrDefault;
end;

procedure TServiceSetting.SetLastModifiedUser(const Value: string);
begin
  FLastModifiedUser := Value;
end;

function TServiceSetting.IsSetLastModifiedUser: Boolean;
begin
  Result := FLastModifiedUser.HasValue;
end;

function TServiceSetting.GetSettingId: string;
begin
  Result := FSettingId.ValueOrDefault;
end;

procedure TServiceSetting.SetSettingId(const Value: string);
begin
  FSettingId := Value;
end;

function TServiceSetting.IsSetSettingId: Boolean;
begin
  Result := FSettingId.HasValue;
end;

function TServiceSetting.GetSettingValue: string;
begin
  Result := FSettingValue.ValueOrDefault;
end;

procedure TServiceSetting.SetSettingValue(const Value: string);
begin
  FSettingValue := Value;
end;

function TServiceSetting.IsSetSettingValue: Boolean;
begin
  Result := FSettingValue.HasValue;
end;

function TServiceSetting.GetStatus: string;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TServiceSetting.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function TServiceSetting.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
