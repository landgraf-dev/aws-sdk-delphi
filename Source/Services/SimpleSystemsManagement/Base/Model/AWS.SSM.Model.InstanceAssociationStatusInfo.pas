unit AWS.SSM.Model.InstanceAssociationStatusInfo;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.InstanceAssociationOutputUrl;

type
  TInstanceAssociationStatusInfo = class;
  
  IInstanceAssociationStatusInfo = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetErrorCode: string;
    procedure SetErrorCode(const Value: string);
    function GetExecutionDate: TDateTime;
    procedure SetExecutionDate(const Value: TDateTime);
    function GetExecutionSummary: string;
    procedure SetExecutionSummary(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOutputUrl: TInstanceAssociationOutputUrl;
    procedure SetOutputUrl(const Value: TInstanceAssociationOutputUrl);
    function GetKeepOutputUrl: Boolean;
    procedure SetKeepOutputUrl(const Value: Boolean);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
    function Obj: TInstanceAssociationStatusInfo;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetDetailedStatus: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetErrorCode: Boolean;
    function IsSetExecutionDate: Boolean;
    function IsSetExecutionSummary: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetName: Boolean;
    function IsSetOutputUrl: Boolean;
    function IsSetStatus: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ErrorCode: string read GetErrorCode write SetErrorCode;
    property ExecutionDate: TDateTime read GetExecutionDate write SetExecutionDate;
    property ExecutionSummary: string read GetExecutionSummary write SetExecutionSummary;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Name: string read GetName write SetName;
    property OutputUrl: TInstanceAssociationOutputUrl read GetOutputUrl write SetOutputUrl;
    property KeepOutputUrl: Boolean read GetKeepOutputUrl write SetKeepOutputUrl;
    property Status: string read GetStatus write SetStatus;
  end;
  
  TInstanceAssociationStatusInfo = class
  strict private
    FAssociationId: Nullable<string>;
    FAssociationName: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FDetailedStatus: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FErrorCode: Nullable<string>;
    FExecutionDate: Nullable<TDateTime>;
    FExecutionSummary: Nullable<string>;
    FInstanceId: Nullable<string>;
    FName: Nullable<string>;
    FOutputUrl: TInstanceAssociationOutputUrl;
    FKeepOutputUrl: Boolean;
    FStatus: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetDetailedStatus: string;
    procedure SetDetailedStatus(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetErrorCode: string;
    procedure SetErrorCode(const Value: string);
    function GetExecutionDate: TDateTime;
    procedure SetExecutionDate(const Value: TDateTime);
    function GetExecutionSummary: string;
    procedure SetExecutionSummary(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOutputUrl: TInstanceAssociationOutputUrl;
    procedure SetOutputUrl(const Value: TInstanceAssociationOutputUrl);
    function GetKeepOutputUrl: Boolean;
    procedure SetKeepOutputUrl(const Value: Boolean);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
  strict protected
    function Obj: TInstanceAssociationStatusInfo;
  public
    destructor Destroy; override;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetDetailedStatus: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetErrorCode: Boolean;
    function IsSetExecutionDate: Boolean;
    function IsSetExecutionSummary: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetName: Boolean;
    function IsSetOutputUrl: Boolean;
    function IsSetStatus: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property DetailedStatus: string read GetDetailedStatus write SetDetailedStatus;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ErrorCode: string read GetErrorCode write SetErrorCode;
    property ExecutionDate: TDateTime read GetExecutionDate write SetExecutionDate;
    property ExecutionSummary: string read GetExecutionSummary write SetExecutionSummary;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Name: string read GetName write SetName;
    property OutputUrl: TInstanceAssociationOutputUrl read GetOutputUrl write SetOutputUrl;
    property KeepOutputUrl: Boolean read GetKeepOutputUrl write SetKeepOutputUrl;
    property Status: string read GetStatus write SetStatus;
  end;
  
implementation

{ TInstanceAssociationStatusInfo }

destructor TInstanceAssociationStatusInfo.Destroy;
begin
  OutputUrl := nil;
  inherited;
end;

function TInstanceAssociationStatusInfo.Obj: TInstanceAssociationStatusInfo;
begin
  Result := Self;
end;

function TInstanceAssociationStatusInfo.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TInstanceAssociationStatusInfo.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TInstanceAssociationStatusInfo.GetAssociationName: string;
begin
  Result := FAssociationName.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetAssociationName(const Value: string);
begin
  FAssociationName := Value;
end;

function TInstanceAssociationStatusInfo.IsSetAssociationName: Boolean;
begin
  Result := FAssociationName.HasValue;
end;

function TInstanceAssociationStatusInfo.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TInstanceAssociationStatusInfo.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TInstanceAssociationStatusInfo.GetDetailedStatus: string;
begin
  Result := FDetailedStatus.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetDetailedStatus(const Value: string);
begin
  FDetailedStatus := Value;
end;

function TInstanceAssociationStatusInfo.IsSetDetailedStatus: Boolean;
begin
  Result := FDetailedStatus.HasValue;
end;

function TInstanceAssociationStatusInfo.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TInstanceAssociationStatusInfo.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TInstanceAssociationStatusInfo.GetErrorCode: string;
begin
  Result := FErrorCode.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetErrorCode(const Value: string);
begin
  FErrorCode := Value;
end;

function TInstanceAssociationStatusInfo.IsSetErrorCode: Boolean;
begin
  Result := FErrorCode.HasValue;
end;

function TInstanceAssociationStatusInfo.GetExecutionDate: TDateTime;
begin
  Result := FExecutionDate.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetExecutionDate(const Value: TDateTime);
begin
  FExecutionDate := Value;
end;

function TInstanceAssociationStatusInfo.IsSetExecutionDate: Boolean;
begin
  Result := FExecutionDate.HasValue;
end;

function TInstanceAssociationStatusInfo.GetExecutionSummary: string;
begin
  Result := FExecutionSummary.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetExecutionSummary(const Value: string);
begin
  FExecutionSummary := Value;
end;

function TInstanceAssociationStatusInfo.IsSetExecutionSummary: Boolean;
begin
  Result := FExecutionSummary.HasValue;
end;

function TInstanceAssociationStatusInfo.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TInstanceAssociationStatusInfo.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TInstanceAssociationStatusInfo.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetName(const Value: string);
begin
  FName := Value;
end;

function TInstanceAssociationStatusInfo.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TInstanceAssociationStatusInfo.GetOutputUrl: TInstanceAssociationOutputUrl;
begin
  Result := FOutputUrl;
end;

procedure TInstanceAssociationStatusInfo.SetOutputUrl(const Value: TInstanceAssociationOutputUrl);
begin
  if FOutputUrl <> Value then
  begin
    if not KeepOutputUrl then
      FOutputUrl.Free;
    FOutputUrl := Value;
  end;
end;

function TInstanceAssociationStatusInfo.GetKeepOutputUrl: Boolean;
begin
  Result := FKeepOutputUrl;
end;

procedure TInstanceAssociationStatusInfo.SetKeepOutputUrl(const Value: Boolean);
begin
  FKeepOutputUrl := Value;
end;

function TInstanceAssociationStatusInfo.IsSetOutputUrl: Boolean;
begin
  Result := FOutputUrl <> nil;
end;

function TInstanceAssociationStatusInfo.GetStatus: string;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TInstanceAssociationStatusInfo.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function TInstanceAssociationStatusInfo.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
