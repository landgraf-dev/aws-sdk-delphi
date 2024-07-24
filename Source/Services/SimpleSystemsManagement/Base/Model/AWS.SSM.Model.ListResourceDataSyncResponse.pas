unit AWS.SSM.Model.ListResourceDataSyncResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.ResourceDataSyncItem;

type
  TListResourceDataSyncResponse = class;
  
  IListResourceDataSyncResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceDataSyncItems: TObjectList<TResourceDataSyncItem>;
    procedure SetResourceDataSyncItems(const Value: TObjectList<TResourceDataSyncItem>);
    function GetKeepResourceDataSyncItems: Boolean;
    procedure SetKeepResourceDataSyncItems(const Value: Boolean);
    function Obj: TListResourceDataSyncResponse;
    function IsSetNextToken: Boolean;
    function IsSetResourceDataSyncItems: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceDataSyncItems: TObjectList<TResourceDataSyncItem> read GetResourceDataSyncItems write SetResourceDataSyncItems;
    property KeepResourceDataSyncItems: Boolean read GetKeepResourceDataSyncItems write SetKeepResourceDataSyncItems;
  end;
  
  TListResourceDataSyncResponse = class(TAmazonWebServiceResponse, IListResourceDataSyncResponse)
  strict private
    FNextToken: Nullable<string>;
    FResourceDataSyncItems: TObjectList<TResourceDataSyncItem>;
    FKeepResourceDataSyncItems: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceDataSyncItems: TObjectList<TResourceDataSyncItem>;
    procedure SetResourceDataSyncItems(const Value: TObjectList<TResourceDataSyncItem>);
    function GetKeepResourceDataSyncItems: Boolean;
    procedure SetKeepResourceDataSyncItems(const Value: Boolean);
  strict protected
    function Obj: TListResourceDataSyncResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetResourceDataSyncItems: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceDataSyncItems: TObjectList<TResourceDataSyncItem> read GetResourceDataSyncItems write SetResourceDataSyncItems;
    property KeepResourceDataSyncItems: Boolean read GetKeepResourceDataSyncItems write SetKeepResourceDataSyncItems;
  end;
  
implementation

{ TListResourceDataSyncResponse }

constructor TListResourceDataSyncResponse.Create;
begin
  inherited;
  FResourceDataSyncItems := TObjectList<TResourceDataSyncItem>.Create;
end;

destructor TListResourceDataSyncResponse.Destroy;
begin
  ResourceDataSyncItems := nil;
  inherited;
end;

function TListResourceDataSyncResponse.Obj: TListResourceDataSyncResponse;
begin
  Result := Self;
end;

function TListResourceDataSyncResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListResourceDataSyncResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListResourceDataSyncResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListResourceDataSyncResponse.GetResourceDataSyncItems: TObjectList<TResourceDataSyncItem>;
begin
  Result := FResourceDataSyncItems;
end;

procedure TListResourceDataSyncResponse.SetResourceDataSyncItems(const Value: TObjectList<TResourceDataSyncItem>);
begin
  if FResourceDataSyncItems <> Value then
  begin
    if not KeepResourceDataSyncItems then
      FResourceDataSyncItems.Free;
    FResourceDataSyncItems := Value;
  end;
end;

function TListResourceDataSyncResponse.GetKeepResourceDataSyncItems: Boolean;
begin
  Result := FKeepResourceDataSyncItems;
end;

procedure TListResourceDataSyncResponse.SetKeepResourceDataSyncItems(const Value: Boolean);
begin
  FKeepResourceDataSyncItems := Value;
end;

function TListResourceDataSyncResponse.IsSetResourceDataSyncItems: Boolean;
begin
  Result := (FResourceDataSyncItems <> nil) and (FResourceDataSyncItems.Count > 0);
end;

end.
