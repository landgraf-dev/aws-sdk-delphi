unit AWS.SQS.Model.ListQueueTagsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TListQueueTagsResponse = class;
  
  IListQueueTagsResponse = interface(IAmazonWebServiceResponse)
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TListQueueTagsResponse;
    function IsSetTags: Boolean;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TListQueueTagsResponse = class(TAmazonWebServiceResponse, IListQueueTagsResponse)
  strict private
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TListQueueTagsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetTags: Boolean;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TListQueueTagsResponse }

constructor TListQueueTagsResponse.Create;
begin
  inherited;
  FTags := TDictionary<string, string>.Create;
end;

destructor TListQueueTagsResponse.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TListQueueTagsResponse.Obj: TListQueueTagsResponse;
begin
  Result := Self;
end;

function TListQueueTagsResponse.GetTags: TDictionary<string, string>;
begin
  Result := FTags;
end;

procedure TListQueueTagsResponse.SetTags(const Value: TDictionary<string, string>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TListQueueTagsResponse.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TListQueueTagsResponse.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TListQueueTagsResponse.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
