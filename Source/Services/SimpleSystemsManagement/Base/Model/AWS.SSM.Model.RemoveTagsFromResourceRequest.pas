unit AWS.SSM.Model.RemoveTagsFromResourceRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TRemoveTagsFromResourceRequest = class;
  
  IRemoveTagsFromResourceRequest = interface
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: TResourceTypeForTagging;
    procedure SetResourceType(const Value: TResourceTypeForTagging);
    function GetTagKeys: TList<string>;
    procedure SetTagKeys(const Value: TList<string>);
    function GetKeepTagKeys: Boolean;
    procedure SetKeepTagKeys(const Value: Boolean);
    function Obj: TRemoveTagsFromResourceRequest;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTagKeys: Boolean;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: TResourceTypeForTagging read GetResourceType write SetResourceType;
    property TagKeys: TList<string> read GetTagKeys write SetTagKeys;
    property KeepTagKeys: Boolean read GetKeepTagKeys write SetKeepTagKeys;
  end;
  
  TRemoveTagsFromResourceRequest = class(TAmazonSimpleSystemsManagementRequest, IRemoveTagsFromResourceRequest)
  strict private
    FResourceId: Nullable<string>;
    FResourceType: Nullable<TResourceTypeForTagging>;
    FTagKeys: TList<string>;
    FKeepTagKeys: Boolean;
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: TResourceTypeForTagging;
    procedure SetResourceType(const Value: TResourceTypeForTagging);
    function GetTagKeys: TList<string>;
    procedure SetTagKeys(const Value: TList<string>);
    function GetKeepTagKeys: Boolean;
    procedure SetKeepTagKeys(const Value: Boolean);
  strict protected
    function Obj: TRemoveTagsFromResourceRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetTagKeys: Boolean;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: TResourceTypeForTagging read GetResourceType write SetResourceType;
    property TagKeys: TList<string> read GetTagKeys write SetTagKeys;
    property KeepTagKeys: Boolean read GetKeepTagKeys write SetKeepTagKeys;
  end;
  
implementation

{ TRemoveTagsFromResourceRequest }

constructor TRemoveTagsFromResourceRequest.Create;
begin
  inherited;
  FTagKeys := TList<string>.Create;
end;

destructor TRemoveTagsFromResourceRequest.Destroy;
begin
  TagKeys := nil;
  inherited;
end;

function TRemoveTagsFromResourceRequest.Obj: TRemoveTagsFromResourceRequest;
begin
  Result := Self;
end;

function TRemoveTagsFromResourceRequest.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TRemoveTagsFromResourceRequest.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TRemoveTagsFromResourceRequest.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

function TRemoveTagsFromResourceRequest.GetResourceType: TResourceTypeForTagging;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TRemoveTagsFromResourceRequest.SetResourceType(const Value: TResourceTypeForTagging);
begin
  FResourceType := Value;
end;

function TRemoveTagsFromResourceRequest.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function TRemoveTagsFromResourceRequest.GetTagKeys: TList<string>;
begin
  Result := FTagKeys;
end;

procedure TRemoveTagsFromResourceRequest.SetTagKeys(const Value: TList<string>);
begin
  if FTagKeys <> Value then
  begin
    if not KeepTagKeys then
      FTagKeys.Free;
    FTagKeys := Value;
  end;
end;

function TRemoveTagsFromResourceRequest.GetKeepTagKeys: Boolean;
begin
  Result := FKeepTagKeys;
end;

procedure TRemoveTagsFromResourceRequest.SetKeepTagKeys(const Value: Boolean);
begin
  FKeepTagKeys := Value;
end;

function TRemoveTagsFromResourceRequest.IsSetTagKeys: Boolean;
begin
  Result := (FTagKeys <> nil) and (FTagKeys.Count > 0);
end;

end.
