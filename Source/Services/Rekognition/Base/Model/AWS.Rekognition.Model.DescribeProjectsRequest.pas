unit AWS.Rekognition.Model.DescribeProjectsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Request;

type
  TDescribeProjectsRequest = class;
  
  IDescribeProjectsRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeProjectsRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeProjectsRequest = class(TAmazonRekognitionRequest, IDescribeProjectsRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeProjectsRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeProjectsRequest }

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

end.
