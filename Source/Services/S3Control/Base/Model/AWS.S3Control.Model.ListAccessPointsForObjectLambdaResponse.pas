unit AWS.S3Control.Model.ListAccessPointsForObjectLambdaResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.ObjectLambdaAccessPoint;

type
  TListAccessPointsForObjectLambdaResponse = class;
  
  IListAccessPointsForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetObjectLambdaAccessPointList: TObjectList<TObjectLambdaAccessPoint>;
    procedure SetObjectLambdaAccessPointList(const Value: TObjectList<TObjectLambdaAccessPoint>);
    function GetKeepObjectLambdaAccessPointList: Boolean;
    procedure SetKeepObjectLambdaAccessPointList(const Value: Boolean);
    function Obj: TListAccessPointsForObjectLambdaResponse;
    function IsSetNextToken: Boolean;
    function IsSetObjectLambdaAccessPointList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ObjectLambdaAccessPointList: TObjectList<TObjectLambdaAccessPoint> read GetObjectLambdaAccessPointList write SetObjectLambdaAccessPointList;
    property KeepObjectLambdaAccessPointList: Boolean read GetKeepObjectLambdaAccessPointList write SetKeepObjectLambdaAccessPointList;
  end;
  
  TListAccessPointsForObjectLambdaResponse = class(TAmazonWebServiceResponse, IListAccessPointsForObjectLambdaResponse)
  strict private
    FNextToken: Nullable<string>;
    FObjectLambdaAccessPointList: TObjectList<TObjectLambdaAccessPoint>;
    FKeepObjectLambdaAccessPointList: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetObjectLambdaAccessPointList: TObjectList<TObjectLambdaAccessPoint>;
    procedure SetObjectLambdaAccessPointList(const Value: TObjectList<TObjectLambdaAccessPoint>);
    function GetKeepObjectLambdaAccessPointList: Boolean;
    procedure SetKeepObjectLambdaAccessPointList(const Value: Boolean);
  strict protected
    function Obj: TListAccessPointsForObjectLambdaResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetObjectLambdaAccessPointList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ObjectLambdaAccessPointList: TObjectList<TObjectLambdaAccessPoint> read GetObjectLambdaAccessPointList write SetObjectLambdaAccessPointList;
    property KeepObjectLambdaAccessPointList: Boolean read GetKeepObjectLambdaAccessPointList write SetKeepObjectLambdaAccessPointList;
  end;
  
implementation

{ TListAccessPointsForObjectLambdaResponse }

constructor TListAccessPointsForObjectLambdaResponse.Create;
begin
  inherited;
  FObjectLambdaAccessPointList := TObjectList<TObjectLambdaAccessPoint>.Create;
end;

destructor TListAccessPointsForObjectLambdaResponse.Destroy;
begin
  ObjectLambdaAccessPointList := nil;
  inherited;
end;

function TListAccessPointsForObjectLambdaResponse.Obj: TListAccessPointsForObjectLambdaResponse;
begin
  Result := Self;
end;

function TListAccessPointsForObjectLambdaResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListAccessPointsForObjectLambdaResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListAccessPointsForObjectLambdaResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListAccessPointsForObjectLambdaResponse.GetObjectLambdaAccessPointList: TObjectList<TObjectLambdaAccessPoint>;
begin
  Result := FObjectLambdaAccessPointList;
end;

procedure TListAccessPointsForObjectLambdaResponse.SetObjectLambdaAccessPointList(const Value: TObjectList<TObjectLambdaAccessPoint>);
begin
  if FObjectLambdaAccessPointList <> Value then
  begin
    if not KeepObjectLambdaAccessPointList then
      FObjectLambdaAccessPointList.Free;
    FObjectLambdaAccessPointList := Value;
  end;
end;

function TListAccessPointsForObjectLambdaResponse.GetKeepObjectLambdaAccessPointList: Boolean;
begin
  Result := FKeepObjectLambdaAccessPointList;
end;

procedure TListAccessPointsForObjectLambdaResponse.SetKeepObjectLambdaAccessPointList(const Value: Boolean);
begin
  FKeepObjectLambdaAccessPointList := Value;
end;

function TListAccessPointsForObjectLambdaResponse.IsSetObjectLambdaAccessPointList: Boolean;
begin
  Result := (FObjectLambdaAccessPointList <> nil) and (FObjectLambdaAccessPointList.Count > 0);
end;

end.
