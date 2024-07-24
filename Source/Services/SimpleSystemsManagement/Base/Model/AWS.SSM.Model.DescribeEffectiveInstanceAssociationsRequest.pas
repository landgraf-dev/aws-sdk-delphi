unit AWS.SSM.Model.DescribeEffectiveInstanceAssociationsRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDescribeEffectiveInstanceAssociationsRequest = class;
  
  IDescribeEffectiveInstanceAssociationsRequest = interface
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeEffectiveInstanceAssociationsRequest;
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeEffectiveInstanceAssociationsRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeEffectiveInstanceAssociationsRequest)
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
    function Obj: TDescribeEffectiveInstanceAssociationsRequest;
  public
    function IsSetInstanceId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeEffectiveInstanceAssociationsRequest }

function TDescribeEffectiveInstanceAssociationsRequest.Obj: TDescribeEffectiveInstanceAssociationsRequest;
begin
  Result := Self;
end;

function TDescribeEffectiveInstanceAssociationsRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TDescribeEffectiveInstanceAssociationsRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TDescribeEffectiveInstanceAssociationsRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TDescribeEffectiveInstanceAssociationsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeEffectiveInstanceAssociationsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeEffectiveInstanceAssociationsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeEffectiveInstanceAssociationsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeEffectiveInstanceAssociationsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeEffectiveInstanceAssociationsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
