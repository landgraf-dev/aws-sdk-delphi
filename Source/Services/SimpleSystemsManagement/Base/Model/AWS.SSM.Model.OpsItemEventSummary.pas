unit AWS.SSM.Model.OpsItemEventSummary;

interface

uses
  AWS.SSM.Model.OpsItemIdentity, 
  AWS.Nullable;

type
  TOpsItemEventSummary = class;
  
  IOpsItemEventSummary = interface
    function GetCreatedBy: TOpsItemIdentity;
    procedure SetCreatedBy(const Value: TOpsItemIdentity);
    function GetKeepCreatedBy: Boolean;
    procedure SetKeepCreatedBy(const Value: Boolean);
    function GetCreatedTime: TDateTime;
    procedure SetCreatedTime(const Value: TDateTime);
    function GetDetail: string;
    procedure SetDetail(const Value: string);
    function GetDetailType: string;
    procedure SetDetailType(const Value: string);
    function GetEventId: string;
    procedure SetEventId(const Value: string);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
    function Obj: TOpsItemEventSummary;
    function IsSetCreatedBy: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetDetail: Boolean;
    function IsSetDetailType: Boolean;
    function IsSetEventId: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetSource: Boolean;
    property CreatedBy: TOpsItemIdentity read GetCreatedBy write SetCreatedBy;
    property KeepCreatedBy: Boolean read GetKeepCreatedBy write SetKeepCreatedBy;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property Detail: string read GetDetail write SetDetail;
    property DetailType: string read GetDetailType write SetDetailType;
    property EventId: string read GetEventId write SetEventId;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property Source: string read GetSource write SetSource;
  end;
  
  TOpsItemEventSummary = class
  strict private
    FCreatedBy: TOpsItemIdentity;
    FKeepCreatedBy: Boolean;
    FCreatedTime: Nullable<TDateTime>;
    FDetail: Nullable<string>;
    FDetailType: Nullable<string>;
    FEventId: Nullable<string>;
    FOpsItemId: Nullable<string>;
    FSource: Nullable<string>;
    function GetCreatedBy: TOpsItemIdentity;
    procedure SetCreatedBy(const Value: TOpsItemIdentity);
    function GetKeepCreatedBy: Boolean;
    procedure SetKeepCreatedBy(const Value: Boolean);
    function GetCreatedTime: TDateTime;
    procedure SetCreatedTime(const Value: TDateTime);
    function GetDetail: string;
    procedure SetDetail(const Value: string);
    function GetDetailType: string;
    procedure SetDetailType(const Value: string);
    function GetEventId: string;
    procedure SetEventId(const Value: string);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetSource: string;
    procedure SetSource(const Value: string);
  strict protected
    function Obj: TOpsItemEventSummary;
  public
    destructor Destroy; override;
    function IsSetCreatedBy: Boolean;
    function IsSetCreatedTime: Boolean;
    function IsSetDetail: Boolean;
    function IsSetDetailType: Boolean;
    function IsSetEventId: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetSource: Boolean;
    property CreatedBy: TOpsItemIdentity read GetCreatedBy write SetCreatedBy;
    property KeepCreatedBy: Boolean read GetKeepCreatedBy write SetKeepCreatedBy;
    property CreatedTime: TDateTime read GetCreatedTime write SetCreatedTime;
    property Detail: string read GetDetail write SetDetail;
    property DetailType: string read GetDetailType write SetDetailType;
    property EventId: string read GetEventId write SetEventId;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property Source: string read GetSource write SetSource;
  end;
  
implementation

{ TOpsItemEventSummary }

destructor TOpsItemEventSummary.Destroy;
begin
  CreatedBy := nil;
  inherited;
end;

function TOpsItemEventSummary.Obj: TOpsItemEventSummary;
begin
  Result := Self;
end;

function TOpsItemEventSummary.GetCreatedBy: TOpsItemIdentity;
begin
  Result := FCreatedBy;
end;

procedure TOpsItemEventSummary.SetCreatedBy(const Value: TOpsItemIdentity);
begin
  if FCreatedBy <> Value then
  begin
    if not KeepCreatedBy then
      FCreatedBy.Free;
    FCreatedBy := Value;
  end;
end;

function TOpsItemEventSummary.GetKeepCreatedBy: Boolean;
begin
  Result := FKeepCreatedBy;
end;

procedure TOpsItemEventSummary.SetKeepCreatedBy(const Value: Boolean);
begin
  FKeepCreatedBy := Value;
end;

function TOpsItemEventSummary.IsSetCreatedBy: Boolean;
begin
  Result := FCreatedBy <> nil;
end;

function TOpsItemEventSummary.GetCreatedTime: TDateTime;
begin
  Result := FCreatedTime.ValueOrDefault;
end;

procedure TOpsItemEventSummary.SetCreatedTime(const Value: TDateTime);
begin
  FCreatedTime := Value;
end;

function TOpsItemEventSummary.IsSetCreatedTime: Boolean;
begin
  Result := FCreatedTime.HasValue;
end;

function TOpsItemEventSummary.GetDetail: string;
begin
  Result := FDetail.ValueOrDefault;
end;

procedure TOpsItemEventSummary.SetDetail(const Value: string);
begin
  FDetail := Value;
end;

function TOpsItemEventSummary.IsSetDetail: Boolean;
begin
  Result := FDetail.HasValue;
end;

function TOpsItemEventSummary.GetDetailType: string;
begin
  Result := FDetailType.ValueOrDefault;
end;

procedure TOpsItemEventSummary.SetDetailType(const Value: string);
begin
  FDetailType := Value;
end;

function TOpsItemEventSummary.IsSetDetailType: Boolean;
begin
  Result := FDetailType.HasValue;
end;

function TOpsItemEventSummary.GetEventId: string;
begin
  Result := FEventId.ValueOrDefault;
end;

procedure TOpsItemEventSummary.SetEventId(const Value: string);
begin
  FEventId := Value;
end;

function TOpsItemEventSummary.IsSetEventId: Boolean;
begin
  Result := FEventId.HasValue;
end;

function TOpsItemEventSummary.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TOpsItemEventSummary.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TOpsItemEventSummary.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function TOpsItemEventSummary.GetSource: string;
begin
  Result := FSource.ValueOrDefault;
end;

procedure TOpsItemEventSummary.SetSource(const Value: string);
begin
  FSource := Value;
end;

function TOpsItemEventSummary.IsSetSource: Boolean;
begin
  Result := FSource.HasValue;
end;

end.
