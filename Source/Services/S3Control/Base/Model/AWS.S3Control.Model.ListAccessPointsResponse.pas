unit AWS.S3Control.Model.ListAccessPointsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.AccessPoint, 
  AWS.Nullable;

type
  TListAccessPointsResponse = class;
  
  IListAccessPointsResponse = interface(IAmazonWebServiceResponse)
    function GetAccessPointList: TObjectList<TAccessPoint>;
    procedure SetAccessPointList(const Value: TObjectList<TAccessPoint>);
    function GetKeepAccessPointList: Boolean;
    procedure SetKeepAccessPointList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListAccessPointsResponse;
    function IsSetAccessPointList: Boolean;
    function IsSetNextToken: Boolean;
    property AccessPointList: TObjectList<TAccessPoint> read GetAccessPointList write SetAccessPointList;
    property KeepAccessPointList: Boolean read GetKeepAccessPointList write SetKeepAccessPointList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListAccessPointsResponse = class(TAmazonWebServiceResponse, IListAccessPointsResponse)
  strict private
    FAccessPointList: TObjectList<TAccessPoint>;
    FKeepAccessPointList: Boolean;
    FNextToken: Nullable<string>;
    function GetAccessPointList: TObjectList<TAccessPoint>;
    procedure SetAccessPointList(const Value: TObjectList<TAccessPoint>);
    function GetKeepAccessPointList: Boolean;
    procedure SetKeepAccessPointList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListAccessPointsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccessPointList: Boolean;
    function IsSetNextToken: Boolean;
    property AccessPointList: TObjectList<TAccessPoint> read GetAccessPointList write SetAccessPointList;
    property KeepAccessPointList: Boolean read GetKeepAccessPointList write SetKeepAccessPointList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListAccessPointsResponse }

constructor TListAccessPointsResponse.Create;
begin
  inherited;
  FAccessPointList := TObjectList<TAccessPoint>.Create;
end;

destructor TListAccessPointsResponse.Destroy;
begin
  AccessPointList := nil;
  inherited;
end;

function TListAccessPointsResponse.Obj: TListAccessPointsResponse;
begin
  Result := Self;
end;

function TListAccessPointsResponse.GetAccessPointList: TObjectList<TAccessPoint>;
begin
  Result := FAccessPointList;
end;

procedure TListAccessPointsResponse.SetAccessPointList(const Value: TObjectList<TAccessPoint>);
begin
  if FAccessPointList <> Value then
  begin
    if not KeepAccessPointList then
      FAccessPointList.Free;
    FAccessPointList := Value;
  end;
end;

function TListAccessPointsResponse.GetKeepAccessPointList: Boolean;
begin
  Result := FKeepAccessPointList;
end;

procedure TListAccessPointsResponse.SetKeepAccessPointList(const Value: Boolean);
begin
  FKeepAccessPointList := Value;
end;

function TListAccessPointsResponse.IsSetAccessPointList: Boolean;
begin
  Result := (FAccessPointList <> nil) and (FAccessPointList.Count > 0);
end;

function TListAccessPointsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListAccessPointsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListAccessPointsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
