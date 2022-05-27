unit AWS.Rekognition.Model.DescribeProjectsRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request;

type
  TDescribeProjectsRequest = class;
  
  IDescribeProjectsRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProjectNames: TList<string>;
    procedure SetProjectNames(const Value: TList<string>);
    function GetKeepProjectNames: Boolean;
    procedure SetKeepProjectNames(const Value: Boolean);
    function Obj: TDescribeProjectsRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetProjectNames: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ProjectNames: TList<string> read GetProjectNames write SetProjectNames;
    property KeepProjectNames: Boolean read GetKeepProjectNames write SetKeepProjectNames;
  end;
  
  TDescribeProjectsRequest = class(TAmazonRekognitionRequest, IDescribeProjectsRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FProjectNames: TList<string>;
    FKeepProjectNames: Boolean;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProjectNames: TList<string>;
    procedure SetProjectNames(const Value: TList<string>);
    function GetKeepProjectNames: Boolean;
    procedure SetKeepProjectNames(const Value: Boolean);
  strict protected
    function Obj: TDescribeProjectsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetProjectNames: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ProjectNames: TList<string> read GetProjectNames write SetProjectNames;
    property KeepProjectNames: Boolean read GetKeepProjectNames write SetKeepProjectNames;
  end;
  
implementation

{ TDescribeProjectsRequest }

constructor TDescribeProjectsRequest.Create;
begin
  inherited;
  FProjectNames := TList<string>.Create;
end;

destructor TDescribeProjectsRequest.Destroy;
begin
  ProjectNames := nil;
  inherited;
end;

function TDescribeProjectsRequest.Obj: TDescribeProjectsRequest;
begin
  Result := Self;
end;

function TDescribeProjectsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeProjectsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeProjectsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeProjectsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeProjectsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeProjectsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeProjectsRequest.GetProjectNames: TList<string>;
begin
  Result := FProjectNames;
end;

procedure TDescribeProjectsRequest.SetProjectNames(const Value: TList<string>);
begin
  if FProjectNames <> Value then
  begin
    if not KeepProjectNames then
      FProjectNames.Free;
    FProjectNames := Value;
  end;
end;

function TDescribeProjectsRequest.GetKeepProjectNames: Boolean;
begin
  Result := FKeepProjectNames;
end;

procedure TDescribeProjectsRequest.SetKeepProjectNames(const Value: Boolean);
begin
  FKeepProjectNames := Value;
end;

function TDescribeProjectsRequest.IsSetProjectNames: Boolean;
begin
  Result := (FProjectNames <> nil) and (FProjectNames.Count > 0);
end;

end.
