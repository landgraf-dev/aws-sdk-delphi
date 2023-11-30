unit AWS.Rekognition.Model.DescribeProjectVersionsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TDescribeProjectVersionsRequest = class;
  
  IDescribeProjectVersionsRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function GetVersionNames: TList<string>;
    procedure SetVersionNames(const Value: TList<string>);
    function GetKeepVersionNames: Boolean;
    procedure SetKeepVersionNames(const Value: Boolean);
    function Obj: TDescribeProjectVersionsRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetProjectArn: Boolean;
    function IsSetVersionNames: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
    property VersionNames: TList<string> read GetVersionNames write SetVersionNames;
    property KeepVersionNames: Boolean read GetKeepVersionNames write SetKeepVersionNames;
  end;
  
  TDescribeProjectVersionsRequest = class(TAmazonRekognitionRequest, IDescribeProjectVersionsRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FProjectArn: Nullable<string>;
    FVersionNames: TList<string>;
    FKeepVersionNames: Boolean;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function GetVersionNames: TList<string>;
    procedure SetVersionNames(const Value: TList<string>);
    function GetKeepVersionNames: Boolean;
    procedure SetKeepVersionNames(const Value: Boolean);
  strict protected
    function Obj: TDescribeProjectVersionsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetProjectArn: Boolean;
    function IsSetVersionNames: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
    property VersionNames: TList<string> read GetVersionNames write SetVersionNames;
    property KeepVersionNames: Boolean read GetKeepVersionNames write SetKeepVersionNames;
  end;
  
implementation

{ TDescribeProjectVersionsRequest }

constructor TDescribeProjectVersionsRequest.Create;
begin
  inherited;
  FVersionNames := TList<string>.Create;
end;

destructor TDescribeProjectVersionsRequest.Destroy;
begin
  VersionNames := nil;
  inherited;
end;

function TDescribeProjectVersionsRequest.Obj: TDescribeProjectVersionsRequest;
begin
  Result := Self;
end;

function TDescribeProjectVersionsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeProjectVersionsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeProjectVersionsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeProjectVersionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeProjectVersionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeProjectVersionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeProjectVersionsRequest.GetProjectArn: string;
begin
  Result := FProjectArn.ValueOrDefault;
end;

procedure TDescribeProjectVersionsRequest.SetProjectArn(const Value: string);
begin
  FProjectArn := Value;
end;

function TDescribeProjectVersionsRequest.IsSetProjectArn: Boolean;
begin
  Result := FProjectArn.HasValue;
end;

function TDescribeProjectVersionsRequest.GetVersionNames: TList<string>;
begin
  Result := FVersionNames;
end;

procedure TDescribeProjectVersionsRequest.SetVersionNames(const Value: TList<string>);
begin
  if FVersionNames <> Value then
  begin
    if not KeepVersionNames then
      FVersionNames.Free;
    FVersionNames := Value;
  end;
end;

function TDescribeProjectVersionsRequest.GetKeepVersionNames: Boolean;
begin
  Result := FKeepVersionNames;
end;

procedure TDescribeProjectVersionsRequest.SetKeepVersionNames(const Value: Boolean);
begin
  FKeepVersionNames := Value;
end;

function TDescribeProjectVersionsRequest.IsSetVersionNames: Boolean;
begin
  Result := (FVersionNames <> nil) and (FVersionNames.Count > 0);
end;

end.
