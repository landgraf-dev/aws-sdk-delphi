unit AWS.SSM.Model.AddTagsToResourceRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.Tag;

type
  TAddTagsToResourceRequest = class;
  
  IAddTagsToResourceRequest = interface
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: TResourceTypeForTagging;
    procedure SetResourceType(const Value: TResourceTypeForTagging);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TAddTagsToResourceRequest;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTags: Boolean;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: TResourceTypeForTagging read GetResourceType write SetResourceType;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TAddTagsToResourceRequest = class(TAmazonSimpleSystemsManagementRequest, IAddTagsToResourceRequest)
  strict private
    FResourceId: Nullable<string>;
    FResourceType: Nullable<TResourceTypeForTagging>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: TResourceTypeForTagging;
    procedure SetResourceType(const Value: TResourceTypeForTagging);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TAddTagsToResourceRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTags: Boolean;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: TResourceTypeForTagging read GetResourceType write SetResourceType;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TAddTagsToResourceRequest }

constructor TAddTagsToResourceRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TAddTagsToResourceRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TAddTagsToResourceRequest.Obj: TAddTagsToResourceRequest;
begin
  Result := Self;
end;

function TAddTagsToResourceRequest.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TAddTagsToResourceRequest.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TAddTagsToResourceRequest.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

function TAddTagsToResourceRequest.GetResourceType: TResourceTypeForTagging;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TAddTagsToResourceRequest.SetResourceType(const Value: TResourceTypeForTagging);
begin
  FResourceType := Value;
end;

function TAddTagsToResourceRequest.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TAddTagsToResourceRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TAddTagsToResourceRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TAddTagsToResourceRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TAddTagsToResourceRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TAddTagsToResourceRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
