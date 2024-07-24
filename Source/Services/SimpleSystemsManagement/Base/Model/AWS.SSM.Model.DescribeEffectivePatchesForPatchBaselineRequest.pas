unit AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDescribeEffectivePatchesForPatchBaselineRequest = class;
  
  IDescribeEffectivePatchesForPatchBaselineRequest = interface
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeEffectivePatchesForPatchBaselineRequest;
    function IsSetBaselineId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeEffectivePatchesForPatchBaselineRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribeEffectivePatchesForPatchBaselineRequest)
  strict private
    FBaselineId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeEffectivePatchesForPatchBaselineRequest;
  public
    function IsSetBaselineId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeEffectivePatchesForPatchBaselineRequest }

function TDescribeEffectivePatchesForPatchBaselineRequest.Obj: TDescribeEffectivePatchesForPatchBaselineRequest;
begin
  Result := Self;
end;

function TDescribeEffectivePatchesForPatchBaselineRequest.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TDescribeEffectivePatchesForPatchBaselineRequest.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TDescribeEffectivePatchesForPatchBaselineRequest.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TDescribeEffectivePatchesForPatchBaselineRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TDescribeEffectivePatchesForPatchBaselineRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TDescribeEffectivePatchesForPatchBaselineRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TDescribeEffectivePatchesForPatchBaselineRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeEffectivePatchesForPatchBaselineRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeEffectivePatchesForPatchBaselineRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
