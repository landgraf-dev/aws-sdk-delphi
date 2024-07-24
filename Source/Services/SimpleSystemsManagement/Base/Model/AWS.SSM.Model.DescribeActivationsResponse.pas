unit AWS.SSM.Model.DescribeActivationsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.Activation, 
  AWS.Nullable;

type
  TDescribeActivationsResponse = class;
  
  IDescribeActivationsResponse = interface(IAmazonWebServiceResponse)
    function GetActivationList: TObjectList<TActivation>;
    procedure SetActivationList(const Value: TObjectList<TActivation>);
    function GetKeepActivationList: Boolean;
    procedure SetKeepActivationList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeActivationsResponse;
    function IsSetActivationList: Boolean;
    function IsSetNextToken: Boolean;
    property ActivationList: TObjectList<TActivation> read GetActivationList write SetActivationList;
    property KeepActivationList: Boolean read GetKeepActivationList write SetKeepActivationList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeActivationsResponse = class(TAmazonWebServiceResponse, IDescribeActivationsResponse)
  strict private
    FActivationList: TObjectList<TActivation>;
    FKeepActivationList: Boolean;
    FNextToken: Nullable<string>;
    function GetActivationList: TObjectList<TActivation>;
    procedure SetActivationList(const Value: TObjectList<TActivation>);
    function GetKeepActivationList: Boolean;
    procedure SetKeepActivationList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeActivationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActivationList: Boolean;
    function IsSetNextToken: Boolean;
    property ActivationList: TObjectList<TActivation> read GetActivationList write SetActivationList;
    property KeepActivationList: Boolean read GetKeepActivationList write SetKeepActivationList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeActivationsResponse }

constructor TDescribeActivationsResponse.Create;
begin
  inherited;
  FActivationList := TObjectList<TActivation>.Create;
end;

destructor TDescribeActivationsResponse.Destroy;
begin
  ActivationList := nil;
  inherited;
end;

function TDescribeActivationsResponse.Obj: TDescribeActivationsResponse;
begin
  Result := Self;
end;

function TDescribeActivationsResponse.GetActivationList: TObjectList<TActivation>;
begin
  Result := FActivationList;
end;

procedure TDescribeActivationsResponse.SetActivationList(const Value: TObjectList<TActivation>);
begin
  if FActivationList <> Value then
  begin
    if not KeepActivationList then
      FActivationList.Free;
    FActivationList := Value;
  end;
end;

function TDescribeActivationsResponse.GetKeepActivationList: Boolean;
begin
  Result := FKeepActivationList;
end;

procedure TDescribeActivationsResponse.SetKeepActivationList(const Value: Boolean);
begin
  FKeepActivationList := Value;
end;

function TDescribeActivationsResponse.IsSetActivationList: Boolean;
begin
  Result := (FActivationList <> nil) and (FActivationList.Count > 0);
end;

function TDescribeActivationsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeActivationsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeActivationsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
