unit AWS.SSM.Model.ListTagsForResourceResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.Tag;

type
  TListTagsForResourceResponse = class;
  
  IListTagsForResourceResponse = interface(IAmazonWebServiceResponse)
    function GetTagList: TObjectList<TTag>;
    procedure SetTagList(const Value: TObjectList<TTag>);
    function GetKeepTagList: Boolean;
    procedure SetKeepTagList(const Value: Boolean);
    function Obj: TListTagsForResourceResponse;
    function IsSetTagList: Boolean;
    property TagList: TObjectList<TTag> read GetTagList write SetTagList;
    property KeepTagList: Boolean read GetKeepTagList write SetKeepTagList;
  end;
  
  TListTagsForResourceResponse = class(TAmazonWebServiceResponse, IListTagsForResourceResponse)
  strict private
    FTagList: TObjectList<TTag>;
    FKeepTagList: Boolean;
    function GetTagList: TObjectList<TTag>;
    procedure SetTagList(const Value: TObjectList<TTag>);
    function GetKeepTagList: Boolean;
    procedure SetKeepTagList(const Value: Boolean);
  strict protected
    function Obj: TListTagsForResourceResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTagList: Boolean;
    property TagList: TObjectList<TTag> read GetTagList write SetTagList;
    property KeepTagList: Boolean read GetKeepTagList write SetKeepTagList;
  end;
  
implementation

{ TListTagsForResourceResponse }

constructor TListTagsForResourceResponse.Create;
begin
  inherited;
  FTagList := TObjectList<TTag>.Create;
end;

destructor TListTagsForResourceResponse.Destroy;
begin
  TagList := nil;
  inherited;
end;

function TListTagsForResourceResponse.Obj: TListTagsForResourceResponse;
begin
  Result := Self;
end;

function TListTagsForResourceResponse.GetTagList: TObjectList<TTag>;
begin
  Result := FTagList;
end;

procedure TListTagsForResourceResponse.SetTagList(const Value: TObjectList<TTag>);
begin
  if FTagList <> Value then
  begin
    if not KeepTagList then
      FTagList.Free;
    FTagList := Value;
  end;
end;

function TListTagsForResourceResponse.GetKeepTagList: Boolean;
begin
  Result := FKeepTagList;
end;

procedure TListTagsForResourceResponse.SetKeepTagList(const Value: Boolean);
begin
  FKeepTagList := Value;
end;

function TListTagsForResourceResponse.IsSetTagList: Boolean;
begin
  Result := (FTagList <> nil) and (FTagList.Count > 0);
end;

end.
