unit AWS.Rekognition.Model.ListTagsForResourceResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TListTagsForResourceResponse = class;
  
  IListTagsForResourceResponse = interface(IAmazonWebServiceResponse)
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TListTagsForResourceResponse;
    function IsSetTags: Boolean;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TListTagsForResourceResponse = class(TAmazonWebServiceResponse, IListTagsForResourceResponse)
  strict private
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TListTagsForResourceResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTags: Boolean;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TListTagsForResourceResponse }

constructor TListTagsForResourceResponse.Create;
begin
  inherited;
  FTags := TDictionary<string, string>.Create;
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

function TListTagsForResourceResponse.GetTags: TDictionary<string, string>;
begin
  Result := FTags;
end;

procedure TListTagsForResourceResponse.SetTags(const Value: TDictionary<string, string>);
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
