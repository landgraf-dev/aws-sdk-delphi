unit AWS.Transcribe.Model.ListTagsForResourceResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.Tag;

type
  TListTagsForResourceResponse = class;
  
  IListTagsForResourceResponse = interface(IAmazonWebServiceResponse)
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TListTagsForResourceResponse;
    function IsSetResourceArn: Boolean;
    function IsSetTags: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TListTagsForResourceResponse = class(TAmazonWebServiceResponse, IListTagsForResourceResponse)
  strict private
    FResourceArn: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TListTagsForResourceResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetResourceArn: Boolean;
    function IsSetTags: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TListTagsForResourceResponse }

constructor TListTagsForResourceResponse.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TListTagsForResourceResponse.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TListTagsForResourceResponse.Obj: TListTagsForResourceResponse;
begin
  Result := Self;
end;

function TListTagsForResourceResponse.GetResourceArn: string;
begin
  Result := FResourceArn.ValueOrDefault;
end;

procedure TListTagsForResourceResponse.SetResourceArn(const Value: string);
begin
  FResourceArn := Value;
end;

function TListTagsForResourceResponse.IsSetResourceArn: Boolean;
begin
  Result := FResourceArn.HasValue;
end;

function TListTagsForResourceResponse.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TListTagsForResourceResponse.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TListTagsForResourceResponse.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TListTagsForResourceResponse.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TListTagsForResourceResponse.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
