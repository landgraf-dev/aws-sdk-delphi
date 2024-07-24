unit AWS.SSM.Model.CreateOpsMetadataRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.MetadataValue, 
  AWS.Nullable, 
  AWS.SSM.Model.Tag;

type
  TCreateOpsMetadataRequest = class;
  
  ICreateOpsMetadataRequest = interface
    function GetMetadata: TObjectDictionary<string, TMetadataValue>;
    procedure SetMetadata(const Value: TObjectDictionary<string, TMetadataValue>);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateOpsMetadataRequest;
    function IsSetMetadata: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetTags: Boolean;
    property Metadata: TObjectDictionary<string, TMetadataValue> read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property ResourceId: string read GetResourceId write SetResourceId;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateOpsMetadataRequest = class(TAmazonSimpleSystemsManagementRequest, ICreateOpsMetadataRequest)
  strict private
    FMetadata: TObjectDictionary<string, TMetadataValue>;
    FKeepMetadata: Boolean;
    FResourceId: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetMetadata: TObjectDictionary<string, TMetadataValue>;
    procedure SetMetadata(const Value: TObjectDictionary<string, TMetadataValue>);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateOpsMetadataRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMetadata: Boolean;
    function IsSetResourceId: Boolean;
    function IsSetTags: Boolean;
    property Metadata: TObjectDictionary<string, TMetadataValue> read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property ResourceId: string read GetResourceId write SetResourceId;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateOpsMetadataRequest }

constructor TCreateOpsMetadataRequest.Create;
begin
  inherited;
  FMetadata := TObjectDictionary<string, TMetadataValue>.Create([doOwnsValues]);
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateOpsMetadataRequest.Destroy;
begin
  Tags := nil;
  Metadata := nil;
  inherited;
end;

function TCreateOpsMetadataRequest.Obj: TCreateOpsMetadataRequest;
begin
  Result := Self;
end;

function TCreateOpsMetadataRequest.GetMetadata: TObjectDictionary<string, TMetadataValue>;
begin
  Result := FMetadata;
end;

procedure TCreateOpsMetadataRequest.SetMetadata(const Value: TObjectDictionary<string, TMetadataValue>);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TCreateOpsMetadataRequest.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TCreateOpsMetadataRequest.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TCreateOpsMetadataRequest.IsSetMetadata: Boolean;
begin
  Result := (FMetadata <> nil) and (FMetadata.Count > 0);
end;

function TCreateOpsMetadataRequest.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TCreateOpsMetadataRequest.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TCreateOpsMetadataRequest.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

function TCreateOpsMetadataRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateOpsMetadataRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateOpsMetadataRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateOpsMetadataRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateOpsMetadataRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
