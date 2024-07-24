unit AWS.SSM.Model.Association;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.AssociationOverview, 
  AWS.SSM.Model.Target;

type
  TAssociation = class;
  
  IAssociation = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetLastExecutionDate: TDateTime;
    procedure SetLastExecutionDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOverview: TAssociationOverview;
    procedure SetOverview(const Value: TAssociationOverview);
    function GetKeepOverview: Boolean;
    procedure SetKeepOverview(const Value: Boolean);
    function GetScheduleExpression: string;
    procedure SetScheduleExpression(const Value: string);
    function GetScheduleOffset: Integer;
    procedure SetScheduleOffset(const Value: Integer);
    function GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    procedure SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
    function GetKeepTargetMaps: Boolean;
    procedure SetKeepTargetMaps(const Value: Boolean);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function Obj: TAssociation;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetLastExecutionDate: Boolean;
    function IsSetName: Boolean;
    function IsSetOverview: Boolean;
    function IsSetScheduleExpression: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargets: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property LastExecutionDate: TDateTime read GetLastExecutionDate write SetLastExecutionDate;
    property Name: string read GetName write SetName;
    property Overview: TAssociationOverview read GetOverview write SetOverview;
    property KeepOverview: Boolean read GetKeepOverview write SetKeepOverview;
    property ScheduleExpression: string read GetScheduleExpression write SetScheduleExpression;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
  TAssociation = class
  strict private
    FAssociationId: Nullable<string>;
    FAssociationName: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FInstanceId: Nullable<string>;
    FLastExecutionDate: Nullable<TDateTime>;
    FName: Nullable<string>;
    FOverview: TAssociationOverview;
    FKeepOverview: Boolean;
    FScheduleExpression: Nullable<string>;
    FScheduleOffset: Nullable<Integer>;
    FTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    FKeepTargetMaps: Boolean;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetLastExecutionDate: TDateTime;
    procedure SetLastExecutionDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOverview: TAssociationOverview;
    procedure SetOverview(const Value: TAssociationOverview);
    function GetKeepOverview: Boolean;
    procedure SetKeepOverview(const Value: Boolean);
    function GetScheduleExpression: string;
    procedure SetScheduleExpression(const Value: string);
    function GetScheduleOffset: Integer;
    procedure SetScheduleOffset(const Value: Integer);
    function GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    procedure SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
    function GetKeepTargetMaps: Boolean;
    procedure SetKeepTargetMaps(const Value: Boolean);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
  strict protected
    function Obj: TAssociation;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetLastExecutionDate: Boolean;
    function IsSetName: Boolean;
    function IsSetOverview: Boolean;
    function IsSetScheduleExpression: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargets: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property LastExecutionDate: TDateTime read GetLastExecutionDate write SetLastExecutionDate;
    property Name: string read GetName write SetName;
    property Overview: TAssociationOverview read GetOverview write SetOverview;
    property KeepOverview: Boolean read GetKeepOverview write SetKeepOverview;
    property ScheduleExpression: string read GetScheduleExpression write SetScheduleExpression;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
implementation

{ TAssociation }

constructor TAssociation.Create;
begin
  inherited;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TAssociation.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  Overview := nil;
  inherited;
end;

function TAssociation.Obj: TAssociation;
begin
  Result := Self;
end;

function TAssociation.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TAssociation.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TAssociation.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TAssociation.GetAssociationName: string;
begin
  Result := FAssociationName.ValueOrDefault;
end;

procedure TAssociation.SetAssociationName(const Value: string);
begin
  FAssociationName := Value;
end;

function TAssociation.IsSetAssociationName: Boolean;
begin
  Result := FAssociationName.HasValue;
end;

function TAssociation.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TAssociation.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TAssociation.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TAssociation.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TAssociation.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TAssociation.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TAssociation.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TAssociation.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TAssociation.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TAssociation.GetLastExecutionDate: TDateTime;
begin
  Result := FLastExecutionDate.ValueOrDefault;
end;

procedure TAssociation.SetLastExecutionDate(const Value: TDateTime);
begin
  FLastExecutionDate := Value;
end;

function TAssociation.IsSetLastExecutionDate: Boolean;
begin
  Result := FLastExecutionDate.HasValue;
end;

function TAssociation.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAssociation.SetName(const Value: string);
begin
  FName := Value;
end;

function TAssociation.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TAssociation.GetOverview: TAssociationOverview;
begin
  Result := FOverview;
end;

procedure TAssociation.SetOverview(const Value: TAssociationOverview);
begin
  if FOverview <> Value then
  begin
    if not KeepOverview then
      FOverview.Free;
    FOverview := Value;
  end;
end;

function TAssociation.GetKeepOverview: Boolean;
begin
  Result := FKeepOverview;
end;

procedure TAssociation.SetKeepOverview(const Value: Boolean);
begin
  FKeepOverview := Value;
end;

function TAssociation.IsSetOverview: Boolean;
begin
  Result := FOverview <> nil;
end;

function TAssociation.GetScheduleExpression: string;
begin
  Result := FScheduleExpression.ValueOrDefault;
end;

procedure TAssociation.SetScheduleExpression(const Value: string);
begin
  FScheduleExpression := Value;
end;

function TAssociation.IsSetScheduleExpression: Boolean;
begin
  Result := FScheduleExpression.HasValue;
end;

function TAssociation.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TAssociation.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TAssociation.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TAssociation.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TAssociation.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TAssociation.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TAssociation.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TAssociation.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TAssociation.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TAssociation.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TAssociation.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TAssociation.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TAssociation.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
