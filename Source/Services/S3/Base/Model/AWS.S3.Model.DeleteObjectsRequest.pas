unit AWS.S3.Model.DeleteObjectsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  AWS.S3.Model.ObjectIdentifier, 
  AWS.S3.Enums;

type
  TDeleteObjectsRequest = class;
  
  IDeleteObjectsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetBypassGovernanceRetention: Boolean;
    procedure SetBypassGovernanceRetention(const Value: Boolean);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetMFA: string;
    procedure SetMFA(const Value: string);
    function GetObjects: TObjectList<TObjectIdentifier>;
    procedure SetObjects(const Value: TObjectList<TObjectIdentifier>);
    function GetKeepObjects: Boolean;
    procedure SetKeepObjects(const Value: Boolean);
    function GetQuiet: Boolean;
    procedure SetQuiet(const Value: Boolean);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function Obj: TDeleteObjectsRequest;
    function IsSetBucketName: Boolean;
    function IsSetBypassGovernanceRetention: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetMFA: Boolean;
    function IsSetObjects: Boolean;
    function IsSetQuiet: Boolean;
    function IsSetRequestPayer: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property BypassGovernanceRetention: Boolean read GetBypassGovernanceRetention write SetBypassGovernanceRetention;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property MFA: string read GetMFA write SetMFA;
    property Objects: TObjectList<TObjectIdentifier> read GetObjects write SetObjects;
    property KeepObjects: Boolean read GetKeepObjects write SetKeepObjects;
    property Quiet: Boolean read GetQuiet write SetQuiet;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
  end;
  
  TDeleteObjectsRequest = class(TAmazonS3Request, IDeleteObjectsRequest)
  strict private
    FBucketName: Nullable<string>;
    FBypassGovernanceRetention: Nullable<Boolean>;
    FExpectedBucketOwner: Nullable<string>;
    FMFA: Nullable<string>;
    FObjects: TObjectList<TObjectIdentifier>;
    FKeepObjects: Boolean;
    FQuiet: Nullable<Boolean>;
    FRequestPayer: Nullable<TRequestPayer>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetBypassGovernanceRetention: Boolean;
    procedure SetBypassGovernanceRetention(const Value: Boolean);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetMFA: string;
    procedure SetMFA(const Value: string);
    function GetObjects: TObjectList<TObjectIdentifier>;
    procedure SetObjects(const Value: TObjectList<TObjectIdentifier>);
    function GetKeepObjects: Boolean;
    procedure SetKeepObjects(const Value: Boolean);
    function GetQuiet: Boolean;
    procedure SetQuiet(const Value: Boolean);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
  strict protected
    function Obj: TDeleteObjectsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetBypassGovernanceRetention: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetMFA: Boolean;
    function IsSetObjects: Boolean;
    function IsSetQuiet: Boolean;
    function IsSetRequestPayer: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property BypassGovernanceRetention: Boolean read GetBypassGovernanceRetention write SetBypassGovernanceRetention;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property MFA: string read GetMFA write SetMFA;
    property Objects: TObjectList<TObjectIdentifier> read GetObjects write SetObjects;
    property KeepObjects: Boolean read GetKeepObjects write SetKeepObjects;
    property Quiet: Boolean read GetQuiet write SetQuiet;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
  end;
  
implementation

{ TDeleteObjectsRequest }

constructor TDeleteObjectsRequest.Create;
begin
  inherited;
  FObjects := TObjectList<TObjectIdentifier>.Create;
end;

destructor TDeleteObjectsRequest.Destroy;
begin
  Objects := nil;
  inherited;
end;

function TDeleteObjectsRequest.Obj: TDeleteObjectsRequest;
begin
  Result := Self;
end;

function TDeleteObjectsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteObjectsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteObjectsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteObjectsRequest.GetBypassGovernanceRetention: Boolean;
begin
  Result := FBypassGovernanceRetention.ValueOrDefault;
end;

procedure TDeleteObjectsRequest.SetBypassGovernanceRetention(const Value: Boolean);
begin
  FBypassGovernanceRetention := Value;
end;

function TDeleteObjectsRequest.IsSetBypassGovernanceRetention: Boolean;
begin
  Result := FBypassGovernanceRetention.HasValue;
end;

function TDeleteObjectsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeleteObjectsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeleteObjectsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TDeleteObjectsRequest.GetMFA: string;
begin
  Result := FMFA.ValueOrDefault;
end;

procedure TDeleteObjectsRequest.SetMFA(const Value: string);
begin
  FMFA := Value;
end;

function TDeleteObjectsRequest.IsSetMFA: Boolean;
begin
  Result := FMFA.HasValue;
end;

function TDeleteObjectsRequest.GetObjects: TObjectList<TObjectIdentifier>;
begin
  Result := FObjects;
end;

procedure TDeleteObjectsRequest.SetObjects(const Value: TObjectList<TObjectIdentifier>);
begin
  if FObjects <> Value then
  begin
    if not KeepObjects then
      FObjects.Free;
    FObjects := Value;
  end;
end;

function TDeleteObjectsRequest.GetKeepObjects: Boolean;
begin
  Result := FKeepObjects;
end;

procedure TDeleteObjectsRequest.SetKeepObjects(const Value: Boolean);
begin
  FKeepObjects := Value;
end;

function TDeleteObjectsRequest.IsSetObjects: Boolean;
begin
  Result := (FObjects <> nil) and (FObjects.Count > 0);
end;

function TDeleteObjectsRequest.GetQuiet: Boolean;
begin
  Result := FQuiet.ValueOrDefault;
end;

procedure TDeleteObjectsRequest.SetQuiet(const Value: Boolean);
begin
  FQuiet := Value;
end;

function TDeleteObjectsRequest.IsSetQuiet: Boolean;
begin
  Result := FQuiet.HasValue;
end;

function TDeleteObjectsRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TDeleteObjectsRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TDeleteObjectsRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

end.
