unit AWS.SSM.Model.DescribeSessionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.Session;

type
  TDescribeSessionsResponse = class;
  
  IDescribeSessionsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSessions: TObjectList<TSession>;
    procedure SetSessions(const Value: TObjectList<TSession>);
    function GetKeepSessions: Boolean;
    procedure SetKeepSessions(const Value: Boolean);
    function Obj: TDescribeSessionsResponse;
    function IsSetNextToken: Boolean;
    function IsSetSessions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Sessions: TObjectList<TSession> read GetSessions write SetSessions;
    property KeepSessions: Boolean read GetKeepSessions write SetKeepSessions;
  end;
  
  TDescribeSessionsResponse = class(TAmazonWebServiceResponse, IDescribeSessionsResponse)
  strict private
    FNextToken: Nullable<string>;
    FSessions: TObjectList<TSession>;
    FKeepSessions: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSessions: TObjectList<TSession>;
    procedure SetSessions(const Value: TObjectList<TSession>);
    function GetKeepSessions: Boolean;
    procedure SetKeepSessions(const Value: Boolean);
  strict protected
    function Obj: TDescribeSessionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSessions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Sessions: TObjectList<TSession> read GetSessions write SetSessions;
    property KeepSessions: Boolean read GetKeepSessions write SetKeepSessions;
  end;
  
implementation

{ TDescribeSessionsResponse }

constructor TDescribeSessionsResponse.Create;
begin
  inherited;
  FSessions := TObjectList<TSession>.Create;
end;

destructor TDescribeSessionsResponse.Destroy;
begin
  Sessions := nil;
  inherited;
end;

function TDescribeSessionsResponse.Obj: TDescribeSessionsResponse;
begin
  Result := Self;
end;

function TDescribeSessionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeSessionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeSessionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeSessionsResponse.GetSessions: TObjectList<TSession>;
begin
  Result := FSessions;
end;

procedure TDescribeSessionsResponse.SetSessions(const Value: TObjectList<TSession>);
begin
  if FSessions <> Value then
  begin
    if not KeepSessions then
      FSessions.Free;
    FSessions := Value;
  end;
end;

function TDescribeSessionsResponse.GetKeepSessions: Boolean;
begin
  Result := FKeepSessions;
end;

procedure TDescribeSessionsResponse.SetKeepSessions(const Value: Boolean);
begin
  FKeepSessions := Value;
end;

function TDescribeSessionsResponse.IsSetSessions: Boolean;
begin
  Result := (FSessions <> nil) and (FSessions.Count > 0);
end;

end.
