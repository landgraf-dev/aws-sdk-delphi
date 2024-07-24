unit AWS.SSM.Model.DescribeInstanceAssociationsStatusRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDescribeInstanceAssociationsStatusRequest = class;
  
  IDescribeInstanceAssociationsStatusRequest = interface
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInstanceAssociationsStatusRequest;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInstanceAssociationsStatusRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeInstanceAssociationsStatusRequest)
  strict private
    FInstanceId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInstanceAssociationsStatusRequest;
  public
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInstanceAssociationsStatusRequest }

function TDescribeInstanceAssociationsStatusRequest.Obj: TDescribeInstanceAssociationsStatusRequest;
begin
  Result := Self;
end;

function TDescribeInstanceAssociationsStatusRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TDescribeInstanceAssociationsStatusRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TDescribeInstanceAssociationsStatusRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TDescribeInstanceAssociationsStatusRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeInstanceAssociationsStatusRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeInstanceAssociationsStatusRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeInstanceAssociationsStatusRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstanceAssociationsStatusRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstanceAssociationsStatusRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
