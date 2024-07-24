unit AWS.SSM.Model.ListTagsForResourceRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TListTagsForResourceRequest = class;
  
  IListTagsForResourceRequest = interface
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: TResourceTypeForTagging;
    procedure SetResourceType(const Value: TResourceTypeForTagging);
    function Obj: TListTagsForResourceRequest;
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: TResourceTypeForTagging read GetResourceType write SetResourceType;
  end;
  
  TListTagsForResourceRequest = class(TAmazonSimpleSystemsManagementRequest, IListTagsForResourceRequest)
  strict private
    FResourceId: Nullable<string>;
    FResourceType: Nullable<TResourceTypeForTagging>;
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function GetResourceType: TResourceTypeForTagging;
    procedure SetResourceType(const Value: TResourceTypeForTagging);
  strict protected
    function Obj: TListTagsForResourceRequest;
  public
    function IsSetResourceId: Boolean;
    function IsSetResourceType: Boolean;
    property ResourceId: string read GetResourceId write SetResourceId;
    property ResourceType: TResourceTypeForTagging read GetResourceType write SetResourceType;
  end;
  
implementation

{ TListTagsForResourceRequest }

function TListTagsForResourceRequest.Obj: TListTagsForResourceRequest;
begin
  Result := Self;
end;

function TListTagsForResourceRequest.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TListTagsForResourceRequest.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TListTagsForResourceRequest.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

function TListTagsForResourceRequest.GetResourceType: TResourceTypeForTagging;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure TListTagsForResourceRequest.SetResourceType(const Value: TResourceTypeForTagging);
begin
  FResourceType := Value;
end;

function TListTagsForResourceRequest.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

end.
