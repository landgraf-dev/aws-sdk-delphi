unit AWS.S3.Model.Rule;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.AbortIncompleteMultipartUpload, 
  AWS.S3.Model.LifecycleExpiration, 
  AWS.S3.Model.NoncurrentVersionExpiration, 
  AWS.S3.Model.NoncurrentVersionTransition, 
  AWS.S3.Enums, 
  AWS.S3.Model.Transition;

type
  TRule = class;
  
  IRule = interface
    function GetAbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload;
    procedure SetAbortIncompleteMultipartUpload(const Value: TAbortIncompleteMultipartUpload);
    function GetKeepAbortIncompleteMultipartUpload: Boolean;
    procedure SetKeepAbortIncompleteMultipartUpload(const Value: Boolean);
    function GetExpiration: TLifecycleExpiration;
    procedure SetExpiration(const Value: TLifecycleExpiration);
    function GetKeepExpiration: Boolean;
    procedure SetKeepExpiration(const Value: Boolean);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetNoncurrentVersionExpiration: TNoncurrentVersionExpiration;
    procedure SetNoncurrentVersionExpiration(const Value: TNoncurrentVersionExpiration);
    function GetKeepNoncurrentVersionExpiration: Boolean;
    procedure SetKeepNoncurrentVersionExpiration(const Value: Boolean);
    function GetNoncurrentVersionTransition: TNoncurrentVersionTransition;
    procedure SetNoncurrentVersionTransition(const Value: TNoncurrentVersionTransition);
    function GetKeepNoncurrentVersionTransition: Boolean;
    procedure SetKeepNoncurrentVersionTransition(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetStatus: TExpirationStatus;
    procedure SetStatus(const Value: TExpirationStatus);
    function GetTransition: TTransition;
    procedure SetTransition(const Value: TTransition);
    function GetKeepTransition: Boolean;
    procedure SetKeepTransition(const Value: Boolean);
    function Obj: TRule;
    function IsSetAbortIncompleteMultipartUpload: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetID: Boolean;
    function IsSetNoncurrentVersionExpiration: Boolean;
    function IsSetNoncurrentVersionTransition: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTransition: Boolean;
    property AbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload read GetAbortIncompleteMultipartUpload write SetAbortIncompleteMultipartUpload;
    property KeepAbortIncompleteMultipartUpload: Boolean read GetKeepAbortIncompleteMultipartUpload write SetKeepAbortIncompleteMultipartUpload;
    property Expiration: TLifecycleExpiration read GetExpiration write SetExpiration;
    property KeepExpiration: Boolean read GetKeepExpiration write SetKeepExpiration;
    property ID: string read GetID write SetID;
    property NoncurrentVersionExpiration: TNoncurrentVersionExpiration read GetNoncurrentVersionExpiration write SetNoncurrentVersionExpiration;
    property KeepNoncurrentVersionExpiration: Boolean read GetKeepNoncurrentVersionExpiration write SetKeepNoncurrentVersionExpiration;
    property NoncurrentVersionTransition: TNoncurrentVersionTransition read GetNoncurrentVersionTransition write SetNoncurrentVersionTransition;
    property KeepNoncurrentVersionTransition: Boolean read GetKeepNoncurrentVersionTransition write SetKeepNoncurrentVersionTransition;
    property Prefix: string read GetPrefix write SetPrefix;
    property Status: TExpirationStatus read GetStatus write SetStatus;
    property Transition: TTransition read GetTransition write SetTransition;
    property KeepTransition: Boolean read GetKeepTransition write SetKeepTransition;
  end;
  
  TRule = class
  strict private
    FAbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload;
    FKeepAbortIncompleteMultipartUpload: Boolean;
    FExpiration: TLifecycleExpiration;
    FKeepExpiration: Boolean;
    FID: Nullable<string>;
    FNoncurrentVersionExpiration: TNoncurrentVersionExpiration;
    FKeepNoncurrentVersionExpiration: Boolean;
    FNoncurrentVersionTransition: TNoncurrentVersionTransition;
    FKeepNoncurrentVersionTransition: Boolean;
    FPrefix: Nullable<string>;
    FStatus: Nullable<TExpirationStatus>;
    FTransition: TTransition;
    FKeepTransition: Boolean;
    function GetAbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload;
    procedure SetAbortIncompleteMultipartUpload(const Value: TAbortIncompleteMultipartUpload);
    function GetKeepAbortIncompleteMultipartUpload: Boolean;
    procedure SetKeepAbortIncompleteMultipartUpload(const Value: Boolean);
    function GetExpiration: TLifecycleExpiration;
    procedure SetExpiration(const Value: TLifecycleExpiration);
    function GetKeepExpiration: Boolean;
    procedure SetKeepExpiration(const Value: Boolean);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetNoncurrentVersionExpiration: TNoncurrentVersionExpiration;
    procedure SetNoncurrentVersionExpiration(const Value: TNoncurrentVersionExpiration);
    function GetKeepNoncurrentVersionExpiration: Boolean;
    procedure SetKeepNoncurrentVersionExpiration(const Value: Boolean);
    function GetNoncurrentVersionTransition: TNoncurrentVersionTransition;
    procedure SetNoncurrentVersionTransition(const Value: TNoncurrentVersionTransition);
    function GetKeepNoncurrentVersionTransition: Boolean;
    procedure SetKeepNoncurrentVersionTransition(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetStatus: TExpirationStatus;
    procedure SetStatus(const Value: TExpirationStatus);
    function GetTransition: TTransition;
    procedure SetTransition(const Value: TTransition);
    function GetKeepTransition: Boolean;
    procedure SetKeepTransition(const Value: Boolean);
  strict protected
    function Obj: TRule;
  public
    destructor Destroy; override;
    function IsSetAbortIncompleteMultipartUpload: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetID: Boolean;
    function IsSetNoncurrentVersionExpiration: Boolean;
    function IsSetNoncurrentVersionTransition: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTransition: Boolean;
    property AbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload read GetAbortIncompleteMultipartUpload write SetAbortIncompleteMultipartUpload;
    property KeepAbortIncompleteMultipartUpload: Boolean read GetKeepAbortIncompleteMultipartUpload write SetKeepAbortIncompleteMultipartUpload;
    property Expiration: TLifecycleExpiration read GetExpiration write SetExpiration;
    property KeepExpiration: Boolean read GetKeepExpiration write SetKeepExpiration;
    property ID: string read GetID write SetID;
    property NoncurrentVersionExpiration: TNoncurrentVersionExpiration read GetNoncurrentVersionExpiration write SetNoncurrentVersionExpiration;
    property KeepNoncurrentVersionExpiration: Boolean read GetKeepNoncurrentVersionExpiration write SetKeepNoncurrentVersionExpiration;
    property NoncurrentVersionTransition: TNoncurrentVersionTransition read GetNoncurrentVersionTransition write SetNoncurrentVersionTransition;
    property KeepNoncurrentVersionTransition: Boolean read GetKeepNoncurrentVersionTransition write SetKeepNoncurrentVersionTransition;
    property Prefix: string read GetPrefix write SetPrefix;
    property Status: TExpirationStatus read GetStatus write SetStatus;
    property Transition: TTransition read GetTransition write SetTransition;
    property KeepTransition: Boolean read GetKeepTransition write SetKeepTransition;
  end;
  
implementation

{ TRule }

destructor TRule.Destroy;
begin
  Transition := nil;
  NoncurrentVersionTransition := nil;
  NoncurrentVersionExpiration := nil;
  Expiration := nil;
  AbortIncompleteMultipartUpload := nil;
  inherited;
end;

function TRule.Obj: TRule;
begin
  Result := Self;
end;

function TRule.GetAbortIncompleteMultipartUpload: TAbortIncompleteMultipartUpload;
begin
  Result := FAbortIncompleteMultipartUpload;
end;

procedure TRule.SetAbortIncompleteMultipartUpload(const Value: TAbortIncompleteMultipartUpload);
begin
  if FAbortIncompleteMultipartUpload <> Value then
  begin
    if not KeepAbortIncompleteMultipartUpload then
      FAbortIncompleteMultipartUpload.Free;
    FAbortIncompleteMultipartUpload := Value;
  end;
end;

function TRule.GetKeepAbortIncompleteMultipartUpload: Boolean;
begin
  Result := FKeepAbortIncompleteMultipartUpload;
end;

procedure TRule.SetKeepAbortIncompleteMultipartUpload(const Value: Boolean);
begin
  FKeepAbortIncompleteMultipartUpload := Value;
end;

function TRule.IsSetAbortIncompleteMultipartUpload: Boolean;
begin
  Result := FAbortIncompleteMultipartUpload <> nil;
end;

function TRule.GetExpiration: TLifecycleExpiration;
begin
  Result := FExpiration;
end;

procedure TRule.SetExpiration(const Value: TLifecycleExpiration);
begin
  if FExpiration <> Value then
  begin
    if not KeepExpiration then
      FExpiration.Free;
    FExpiration := Value;
  end;
end;

function TRule.GetKeepExpiration: Boolean;
begin
  Result := FKeepExpiration;
end;

procedure TRule.SetKeepExpiration(const Value: Boolean);
begin
  FKeepExpiration := Value;
end;

function TRule.IsSetExpiration: Boolean;
begin
  Result := FExpiration <> nil;
end;

function TRule.GetID: string;
begin
  Result := FID.ValueOrDefault;
end;

procedure TRule.SetID(const Value: string);
begin
  FID := Value;
end;

function TRule.IsSetID: Boolean;
begin
  Result := FID.HasValue;
end;

function TRule.GetNoncurrentVersionExpiration: TNoncurrentVersionExpiration;
begin
  Result := FNoncurrentVersionExpiration;
end;

procedure TRule.SetNoncurrentVersionExpiration(const Value: TNoncurrentVersionExpiration);
begin
  if FNoncurrentVersionExpiration <> Value then
  begin
    if not KeepNoncurrentVersionExpiration then
      FNoncurrentVersionExpiration.Free;
    FNoncurrentVersionExpiration := Value;
  end;
end;

function TRule.GetKeepNoncurrentVersionExpiration: Boolean;
begin
  Result := FKeepNoncurrentVersionExpiration;
end;

procedure TRule.SetKeepNoncurrentVersionExpiration(const Value: Boolean);
begin
  FKeepNoncurrentVersionExpiration := Value;
end;

function TRule.IsSetNoncurrentVersionExpiration: Boolean;
begin
  Result := FNoncurrentVersionExpiration <> nil;
end;

function TRule.GetNoncurrentVersionTransition: TNoncurrentVersionTransition;
begin
  Result := FNoncurrentVersionTransition;
end;

procedure TRule.SetNoncurrentVersionTransition(const Value: TNoncurrentVersionTransition);
begin
  if FNoncurrentVersionTransition <> Value then
  begin
    if not KeepNoncurrentVersionTransition then
      FNoncurrentVersionTransition.Free;
    FNoncurrentVersionTransition := Value;
  end;
end;

function TRule.GetKeepNoncurrentVersionTransition: Boolean;
begin
  Result := FKeepNoncurrentVersionTransition;
end;

procedure TRule.SetKeepNoncurrentVersionTransition(const Value: Boolean);
begin
  FKeepNoncurrentVersionTransition := Value;
end;

function TRule.IsSetNoncurrentVersionTransition: Boolean;
begin
  Result := FNoncurrentVersionTransition <> nil;
end;

function TRule.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TRule.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TRule.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TRule.GetStatus: TExpirationStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TRule.SetStatus(const Value: TExpirationStatus);
begin
  FStatus := Value;
end;

function TRule.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TRule.GetTransition: TTransition;
begin
  Result := FTransition;
end;

procedure TRule.SetTransition(const Value: TTransition);
begin
  if FTransition <> Value then
  begin
    if not KeepTransition then
      FTransition.Free;
    FTransition := Value;
  end;
end;

function TRule.GetKeepTransition: Boolean;
begin
  Result := FKeepTransition;
end;

procedure TRule.SetKeepTransition(const Value: Boolean);
begin
  FKeepTransition := Value;
end;

function TRule.IsSetTransition: Boolean;
begin
  Result := FTransition <> nil;
end;

end.
