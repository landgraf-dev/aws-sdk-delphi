unit AWS.SSM.Model.PatchComplianceData;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TPatchComplianceData = class;
  
  IPatchComplianceData = interface
    function GetCVEIds: string;
    procedure SetCVEIds(const Value: string);
    function GetClassification: string;
    procedure SetClassification(const Value: string);
    function GetInstalledTime: TDateTime;
    procedure SetInstalledTime(const Value: TDateTime);
    function GetKBId: string;
    procedure SetKBId(const Value: string);
    function GetSeverity: string;
    procedure SetSeverity(const Value: string);
    function GetState: TPatchComplianceDataState;
    procedure SetState(const Value: TPatchComplianceDataState);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function Obj: TPatchComplianceData;
    function IsSetCVEIds: Boolean;
    function IsSetClassification: Boolean;
    function IsSetInstalledTime: Boolean;
    function IsSetKBId: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetState: Boolean;
    function IsSetTitle: Boolean;
    property CVEIds: string read GetCVEIds write SetCVEIds;
    property Classification: string read GetClassification write SetClassification;
    property InstalledTime: TDateTime read GetInstalledTime write SetInstalledTime;
    property KBId: string read GetKBId write SetKBId;
    property Severity: string read GetSeverity write SetSeverity;
    property State: TPatchComplianceDataState read GetState write SetState;
    property Title: string read GetTitle write SetTitle;
  end;
  
  TPatchComplianceData = class
  strict private
    FCVEIds: Nullable<string>;
    FClassification: Nullable<string>;
    FInstalledTime: Nullable<TDateTime>;
    FKBId: Nullable<string>;
    FSeverity: Nullable<string>;
    FState: Nullable<TPatchComplianceDataState>;
    FTitle: Nullable<string>;
    function GetCVEIds: string;
    procedure SetCVEIds(const Value: string);
    function GetClassification: string;
    procedure SetClassification(const Value: string);
    function GetInstalledTime: TDateTime;
    procedure SetInstalledTime(const Value: TDateTime);
    function GetKBId: string;
    procedure SetKBId(const Value: string);
    function GetSeverity: string;
    procedure SetSeverity(const Value: string);
    function GetState: TPatchComplianceDataState;
    procedure SetState(const Value: TPatchComplianceDataState);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  strict protected
    function Obj: TPatchComplianceData;
  public
    function IsSetCVEIds: Boolean;
    function IsSetClassification: Boolean;
    function IsSetInstalledTime: Boolean;
    function IsSetKBId: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetState: Boolean;
    function IsSetTitle: Boolean;
    property CVEIds: string read GetCVEIds write SetCVEIds;
    property Classification: string read GetClassification write SetClassification;
    property InstalledTime: TDateTime read GetInstalledTime write SetInstalledTime;
    property KBId: string read GetKBId write SetKBId;
    property Severity: string read GetSeverity write SetSeverity;
    property State: TPatchComplianceDataState read GetState write SetState;
    property Title: string read GetTitle write SetTitle;
  end;
  
implementation

{ TPatchComplianceData }

function TPatchComplianceData.Obj: TPatchComplianceData;
begin
  Result := Self;
end;

function TPatchComplianceData.GetCVEIds: string;
begin
  Result := FCVEIds.ValueOrDefault;
end;

procedure TPatchComplianceData.SetCVEIds(const Value: string);
begin
  FCVEIds := Value;
end;

function TPatchComplianceData.IsSetCVEIds: Boolean;
begin
  Result := FCVEIds.HasValue;
end;

function TPatchComplianceData.GetClassification: string;
begin
  Result := FClassification.ValueOrDefault;
end;

procedure TPatchComplianceData.SetClassification(const Value: string);
begin
  FClassification := Value;
end;

function TPatchComplianceData.IsSetClassification: Boolean;
begin
  Result := FClassification.HasValue;
end;

function TPatchComplianceData.GetInstalledTime: TDateTime;
begin
  Result := FInstalledTime.ValueOrDefault;
end;

procedure TPatchComplianceData.SetInstalledTime(const Value: TDateTime);
begin
  FInstalledTime := Value;
end;

function TPatchComplianceData.IsSetInstalledTime: Boolean;
begin
  Result := FInstalledTime.HasValue;
end;

function TPatchComplianceData.GetKBId: string;
begin
  Result := FKBId.ValueOrDefault;
end;

procedure TPatchComplianceData.SetKBId(const Value: string);
begin
  FKBId := Value;
end;

function TPatchComplianceData.IsSetKBId: Boolean;
begin
  Result := FKBId.HasValue;
end;

function TPatchComplianceData.GetSeverity: string;
begin
  Result := FSeverity.ValueOrDefault;
end;

procedure TPatchComplianceData.SetSeverity(const Value: string);
begin
  FSeverity := Value;
end;

function TPatchComplianceData.IsSetSeverity: Boolean;
begin
  Result := FSeverity.HasValue;
end;

function TPatchComplianceData.GetState: TPatchComplianceDataState;
begin
  Result := FState.ValueOrDefault;
end;

procedure TPatchComplianceData.SetState(const Value: TPatchComplianceDataState);
begin
  FState := Value;
end;

function TPatchComplianceData.IsSetState: Boolean;
begin
  Result := FState.HasValue;
end;

function TPatchComplianceData.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TPatchComplianceData.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TPatchComplianceData.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

end.
