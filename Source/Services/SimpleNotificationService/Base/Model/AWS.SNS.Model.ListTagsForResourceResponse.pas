unit AWS.SNS.Model.ListTagsForResourceResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.Tag;

type
  TListTagsForResourceResponse = class;
  
  IListTagsForResourceResponse = interface(IAmazonWebServiceResponse)
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TListTagsForResourceResponse;
    function IsSetTags: Boolean;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TListTagsForResourceResponse = class(TAmazonWebServiceResponse, IListTagsForResourceResponse)
  strict private
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TListTagsForResourceResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTags: Boolean;
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
