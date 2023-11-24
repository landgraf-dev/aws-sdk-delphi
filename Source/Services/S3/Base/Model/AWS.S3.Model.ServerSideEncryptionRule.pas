unit AWS.S3.Model.ServerSideEncryptionRule;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.ServerSideEncryptionByDefault;

type
  TServerSideEncryptionRule = class;
  
  IServerSideEncryptionRule = interface
    function GetApplyServerSideEncryptionByDefault: TServerSideEncryptionByDefault;
    procedure SetApplyServerSideEncryptionByDefault(const Value: TServerSideEncryptionByDefault);
    function GetKeepApplyServerSideEncryptionByDefault: Boolean;
    procedure SetKeepApplyServerSideEncryptionByDefault(const Value: Boolean);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function Obj: TServerSideEncryptionRule;
    function IsSetApplyServerSideEncryptionByDefault: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    property ApplyServerSideEncryptionByDefault: TServerSideEncryptionByDefault read GetApplyServerSideEncryptionByDefault write SetApplyServerSideEncryptionByDefault;
    property KeepApplyServerSideEncryptionByDefault: Boolean read GetKeepApplyServerSideEncryptionByDefault write SetKeepApplyServerSideEncryptionByDefault;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
  end;
  
  TServerSideEncryptionRule = class
  strict private
    FApplyServerSideEncryptionByDefault: TServerSideEncryptionByDefault;
    FKeepApplyServerSideEncryptionByDefault: Boolean;
    FBucketKeyEnabled: Nullable<Boolean>;
    function GetApplyServerSideEncryptionByDefault: TServerSideEncryptionByDefault;
    procedure SetApplyServerSideEncryptionByDefault(const Value: TServerSideEncryptionByDefault);
    function GetKeepApplyServerSideEncryptionByDefault: Boolean;
    procedure SetKeepApplyServerSideEncryptionByDefault(const Value: Boolean);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
  strict protected
    function Obj: TServerSideEncryptionRule;
  public
    destructor Destroy; override;
    function IsSetApplyServerSideEncryptionByDefault: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    property ApplyServerSideEncryptionByDefault: TServerSideEncryptionByDefault read GetApplyServerSideEncryptionByDefault write SetApplyServerSideEncryptionByDefault;
    property KeepApplyServerSideEncryptionByDefault: Boolean read GetKeepApplyServerSideEncryptionByDefault write SetKeepApplyServerSideEncryptionByDefault;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
  end;
  
implementation

{ TServerSideEncryptionRule }

destructor TServerSideEncryptionRule.Destroy;
begin
  ApplyServerSideEncryptionByDefault := nil;
  inherited;
end;

function TServerSideEncryptionRule.Obj: TServerSideEncryptionRule;
begin
  Result := Self;
end;

function TServerSideEncryptionRule.GetApplyServerSideEncryptionByDefault: TServerSideEncryptionByDefault;
begin
  Result := FApplyServerSideEncryptionByDefault;
end;

procedure TServerSideEncryptionRule.SetApplyServerSideEncryptionByDefault(const Value: TServerSideEncryptionByDefault);
begin
  if FApplyServerSideEncryptionByDefault <> Value then
  begin
    if not KeepApplyServerSideEncryptionByDefault then
      FApplyServerSideEncryptionByDefault.Free;
    FApplyServerSideEncryptionByDefault := Value;
  end;
end;

function TServerSideEncryptionRule.GetKeepApplyServerSideEncryptionByDefault: Boolean;
begin
  Result := FKeepApplyServerSideEncryptionByDefault;
end;

procedure TServerSideEncryptionRule.SetKeepApplyServerSideEncryptionByDefault(const Value: Boolean);
begin
  FKeepApplyServerSideEncryptionByDefault := Value;
end;

function TServerSideEncryptionRule.IsSetApplyServerSideEncryptionByDefault: Boolean;
begin
  Result := FApplyServerSideEncryptionByDefault <> nil;
end;

function TServerSideEncryptionRule.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TServerSideEncryptionRule.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TServerSideEncryptionRule.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

end.
