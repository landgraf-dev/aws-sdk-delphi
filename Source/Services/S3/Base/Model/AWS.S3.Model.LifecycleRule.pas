unit AWS.S3.Model.LifecycleRule;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.AbortIncompleteMultipartUpload, 
  AWS.S3.Model.LifecycleExpiration, 
  AWS.S3.Model.LifecycleRuleFilter, 
  AWS.S3.Model.NoncurrentVersionExpiration, 
  AWS.S3.Model.NoncurrentVersionTransition, 
  AWS.S3.Enums, 
  AWS.S3.Model.Transition;

type
  TLifecycleRule = class;
  
  ILifecycleRule = interface
    function GetAbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload;
    procedure SetAbortIncompleteMultipartUpload(const Value: TAbortIncompleteMultipartUpload);
    function GetKeepAbortIncompleteMultipartUpload: Boolean;
    procedure SetKeepAbortIncompleteMultipartUpload(const Value: Boolean);
    function GetExpiration: TLifecycleExpiration;
    procedure SetExpiration(const Value: TLifecycleExpiration);
    function GetKeepExpiration: Boolean;
    procedure SetKeepExpiration(const Value: Boolean);
    function GetFilter: TLifecycleRuleFilter;
    procedure SetFilter(const Value: TLifecycleRuleFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetNoncurrentVersionExpiration: TNoncurrentVersionExpiration;
    procedure SetNoncurrentVersionExpiration(const Value: TNoncurrentVersionExpiration);
    function GetKeepNoncurrentVersionExpiration: Boolean;
    procedure SetKeepNoncurrentVersionExpiration(const Value: Boolean);
    function GetNoncurrentVersionTransitions: TObjectList<TNoncurrentVersionTransition>;
    procedure SetNoncurrentVersionTransitions(const Value: TObjectList<TNoncurrentVersionTransition>);
    function GetKeepNoncurrentVersionTransitions: Boolean;
    procedure SetKeepNoncurrentVersionTransitions(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetStatus: TExpirationStatus;
    procedure SetStatus(const Value: TExpirationStatus);
    function GetTransitions: TObjectList<TTransition>;
    procedure SetTransitions(const Value: TObjectList<TTransition>);
    function GetKeepTransitions: Boolean;
    procedure SetKeepTransitions(const Value: Boolean);
    function Obj: TLifecycleRule;
    function IsSetAbortIncompleteMultipartUpload: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetFilter: Boolean;
    function IsSetID: Boolean;
    function IsSetNoncurrentVersionExpiration: Boolean;
    function IsSetNoncurrentVersionTransitions: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTransitions: Boolean;
    property AbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload read GetAbortIncompleteMultipartUpload write SetAbortIncompleteMultipartUpload;
    property KeepAbortIncompleteMultipartUpload: Boolean read GetKeepAbortIncompleteMultipartUpload write SetKeepAbortIncompleteMultipartUpload;
    property Expiration: TLifecycleExpiration read GetExpiration write SetExpiration;
    property KeepExpiration: Boolean read GetKeepExpiration write SetKeepExpiration;
    property Filter: TLifecycleRuleFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property ID: string read GetID write SetID;
    property NoncurrentVersionExpiration: TNoncurrentVersionExpiration read GetNoncurrentVersionExpiration write SetNoncurrentVersionExpiration;
    property KeepNoncurrentVersionExpiration: Boolean read GetKeepNoncurrentVersionExpiration write SetKeepNoncurrentVersionExpiration;
    property NoncurrentVersionTransitions: TObjectList<TNoncurrentVersionTransition> read GetNoncurrentVersionTransitions write SetNoncurrentVersionTransitions;
    property KeepNoncurrentVersionTransitions: Boolean read GetKeepNoncurrentVersionTransitions write SetKeepNoncurrentVersionTransitions;
    property Prefix: string read GetPrefix write SetPrefix;
    property Status: TExpirationStatus read GetStatus write SetStatus;
    property Transitions: TObjectList<TTransition> read GetTransitions write SetTransitions;
    property KeepTransitions: Boolean read GetKeepTransitions write SetKeepTransitions;
  end;
  
  TLifecycleRule = class
  strict private
    FAbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload;
    FKeepAbortIncompleteMultipartUpload: Boolean;
    FExpiration: TLifecycleExpiration;
    FKeepExpiration: Boolean;
    FFilter: TLifecycleRuleFilter;
    FKeepFilter: Boolean;
    FID: Nullable<string>;
    FNoncurrentVersionExpiration: TNoncurrentVersionExpiration;
    FKeepNoncurrentVersionExpiration: Boolean;
    FNoncurrentVersionTransitions: TObjectList<TNoncurrentVersionTransition>;
    FKeepNoncurrentVersionTransitions: Boolean;
    FPrefix: Nullable<string>;
    FStatus: Nullable<TExpirationStatus>;
    FTransitions: TObjectList<TTransition>;
    FKeepTransitions: Boolean;
    function GetAbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload;
    procedure SetAbortIncompleteMultipartUpload(const Value: TAbortIncompleteMultipartUpload);
    function GetKeepAbortIncompleteMultipartUpload: Boolean;
    procedure SetKeepAbortIncompleteMultipartUpload(const Value: Boolean);
    function GetExpiration: TLifecycleExpiration;
    procedure SetExpiration(const Value: TLifecycleExpiration);
    function GetKeepExpiration: Boolean;
    procedure SetKeepExpiration(const Value: Boolean);
    function GetFilter: TLifecycleRuleFilter;
    procedure SetFilter(const Value: TLifecycleRuleFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetNoncurrentVersionExpiration: TNoncurrentVersionExpiration;
    procedure SetNoncurrentVersionExpiration(const Value: TNoncurrentVersionExpiration);
    function GetKeepNoncurrentVersionExpiration: Boolean;
    procedure SetKeepNoncurrentVersionExpiration(const Value: Boolean);
    function GetNoncurrentVersionTransitions: TObjectList<TNoncurrentVersionTransition>;
    procedure SetNoncurrentVersionTransitions(const Value: TObjectList<TNoncurrentVersionTransition>);
    function GetKeepNoncurrentVersionTransitions: Boolean;
    procedure SetKeepNoncurrentVersionTransitions(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetStatus: TExpirationStatus;
    procedure SetStatus(const Value: TExpirationStatus);
    function GetTransitions: TObjectList<TTransition>;
    procedure SetTransitions(const Value: TObjectList<TTransition>);
    function GetKeepTransitions: Boolean;
    procedure SetKeepTransitions(const Value: Boolean);
  strict protected
    function Obj: TLifecycleRule;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAbortIncompleteMultipartUpload: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetFilter: Boolean;
    function IsSetID: Boolean;
    function IsSetNoncurrentVersionExpiration: Boolean;
    function IsSetNoncurrentVersionTransitions: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTransitions: Boolean;
    property AbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload read GetAbortIncompleteMultipartUpload write SetAbortIncompleteMultipartUpload;
    property KeepAbortIncompleteMultipartUpload: Boolean read GetKeepAbortIncompleteMultipartUpload write SetKeepAbortIncompleteMultipartUpload;
    property Expiration: TLifecycleExpiration read GetExpiration write SetExpiration;
    property KeepExpiration: Boolean read GetKeepExpiration write SetKeepExpiration;
    property Filter: TLifecycleRuleFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property ID: string read GetID write SetID;
    property NoncurrentVersionExpiration: TNoncurrentVersionExpiration read GetNoncurrentVersionExpiration write SetNoncurrentVersionExpiration;
    property KeepNoncurrentVersionExpiration: Boolean read GetKeepNoncurrentVersionExpiration write SetKeepNoncurrentVersionExpiration;
    property NoncurrentVersionTransitions: TObjectList<TNoncurrentVersionTransition> read GetNoncurrentVersionTransitions write SetNoncurrentVersionTransitions;
    property KeepNoncurrentVersionTransitions: Boolean read GetKeepNoncurrentVersionTransitions write SetKeepNoncurrentVersionTransitions;
    property Prefix: string read GetPrefix write SetPrefix;
    property Status: TExpirationStatus read GetStatus write SetStatus;
    property Transitions: TObjectList<TTransition> read GetTransitions write SetTransitions;
    property KeepTransitions: Boolean read GetKeepTransitions write SetKeepTransitions;
  end;
  
implementation

{ TLifecycleRule }

constructor TLifecycleRule.Create;
begin
  inherited;
  FNoncurrentVersionTransitions := TObjectList<TNoncurrentVersionTransition>.Create;
  FTransitions := TObjectList<TTransition>.Create;
end;

destructor TLifecycleRule.Destroy;
begin
  Transitions := nil;
  NoncurrentVersionTransitions := nil;
  NoncurrentVersionExpiration := nil;
  Filter := nil;
  Expiration := nil;
  AbortIncompleteMultipartUpload := nil;
  inherited;
end;

function TLifecycleRule.Obj: TLifecycleRule;
begin
  Result := Self;
end;

function TLifecycleRule.GetAbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload;
begin
  Result := FAbortIncompleteMultipartUpload;
end;

procedure TLifecycleRule.SetAbortIncompleteMultipartUpload(const Value: TAbortIncompleteMultipartUpload);
begin
  if FAbortIncompleteMultipartUpload <> Value then
  begin
    if not KeepAbortIncompleteMultipartUpload then
      FAbortIncompleteMultipartUpload.Free;
    FAbortIncompleteMultipartUpload := Value;
  end;
end;

function TLifecycleRule.GetKeepAbortIncompleteMultipartUpload: Boolean;
begin
  Result := FKeepAbortIncompleteMultipartUpload;
end;

procedure TLifecycleRule.SetKeepAbortIncompleteMultipartUpload(const Value: Boolean);
begin
  FKeepAbortIncompleteMultipartUpload := Value;
end;

function TLifecycleRule.IsSetAbortIncompleteMultipartUpload: Boolean;
begin
  Result := FAbortIncompleteMultipartUpload <> nil;
end;

function TLifecycleRule.GetExpiration: TLifecycleExpiration;
begin
  Result := FExpiration;
end;

procedure TLifecycleRule.SetExpiration(const Value: TLifecycleExpiration);
begin
  if FExpiration <> Value then
  begin
    if not KeepExpiration then
      FExpiration.Free;
    FExpiration := Value;
  end;
end;

function TLifecycleRule.GetKeepExpiration: Boolean;
begin
  Result := FKeepExpiration;
end;

procedure TLifecycleRule.SetKeepExpiration(const Value: Boolean);
begin
  FKeepExpiration := Value;
end;

function TLifecycleRule.IsSetExpiration: Boolean;
begin
  Result := FExpiration <> nil;
end;

function TLifecycleRule.GetFilter: TLifecycleRuleFilter;
begin
  Result := FFilter;
end;

procedure TLifecycleRule.SetFilter(const Value: TLifecycleRuleFilter);
begin
  if FFilter <> Value then
  begin
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TLifecycleRule.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TLifecycleRule.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TLifecycleRule.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

function TLifecycleRule.GetID: string;
begin
  Result := FID.ValueOrDefault;
end;

procedure TLifecycleRule.SetID(const Value: string);
begin
  FID := Value;
end;

function TLifecycleRule.IsSetID: Boolean;
begin
  Result := FID.HasValue;
end;

function TLifecycleRule.GetNoncurrentVersionExpiration: TNoncurrentVersionExpiration;
begin
  Result := FNoncurrentVersionExpiration;
end;

procedure TLifecycleRule.SetNoncurrentVersionExpiration(const Value: TNoncurrentVersionExpiration);
begin
  if FNoncurrentVersionExpiration <> Value then
  begin
    if not KeepNoncurrentVersionExpiration then
      FNoncurrentVersionExpiration.Free;
    FNoncurrentVersionExpiration := Value;
  end;
end;

function TLifecycleRule.GetKeepNoncurrentVersionExpiration: Boolean;
begin
  Result := FKeepNoncurrentVersionExpiration;
end;

procedure TLifecycleRule.SetKeepNoncurrentVersionExpiration(const Value: Boolean);
begin
  FKeepNoncurrentVersionExpiration := Value;
end;

function TLifecycleRule.IsSetNoncurrentVersionExpiration: Boolean;
begin
  Result := FNoncurrentVersionExpiration <> nil;
end;

function TLifecycleRule.GetNoncurrentVersionTransitions: TObjectList<TNoncurrentVersionTransition>;
begin
  Result := FNoncurrentVersionTransitions;
end;

procedure TLifecycleRule.SetNoncurrentVersionTransitions(const Value: TObjectList<TNoncurrentVersionTransition>);
begin
  if FNoncurrentVersionTransitions <> Value then
  begin
    if not KeepNoncurrentVersionTransitions then
      FNoncurrentVersionTransitions.Free;
    FNoncurrentVersionTransitions := Value;
  end;
end;

function TLifecycleRule.GetKeepNoncurrentVersionTransitions: Boolean;
begin
  Result := FKeepNoncurrentVersionTransitions;
end;

procedure TLifecycleRule.SetKeepNoncurrentVersionTransitions(const Value: Boolean);
begin
  FKeepNoncurrentVersionTransitions := Value;
end;

function TLifecycleRule.IsSetNoncurrentVersionTransitions: Boolean;
begin
  Result := (FNoncurrentVersionTransitions <> nil) and (FNoncurrentVersionTransitions.Count > 0);
end;

function TLifecycleRule.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TLifecycleRule.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TLifecycleRule.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TLifecycleRule.GetStatus: TExpirationStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TLifecycleRule.SetStatus(const Value: TExpirationStatus);
begin
  FStatus := Value;
end;

function TLifecycleRule.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TLifecycleRule.GetTransitions: TObjectList<TTransition>;
begin
  Result := FTransitions;
end;

procedure TLifecycleRule.SetTransitions(const Value: TObjectList<TTransition>);
begin
  if FTransitions <> Value then
  begin
    if not KeepTransitions then
      FTransitions.Free;
    FTransitions := Value;
  end;
end;

function TLifecycleRule.GetKeepTransitions: Boolean;
begin
  Result := FKeepTransitions;
end;

procedure TLifecycleRule.SetKeepTransitions(const Value: Boolean);
begin
  FKeepTransitions := Value;
end;

function TLifecycleRule.IsSetTransitions: Boolean;
begin
  Result := (FTransitions <> nil) and (FTransitions.Count > 0);
end;

end.
