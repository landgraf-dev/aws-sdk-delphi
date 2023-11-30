unit AWS.SESv2.Model.ListDedicatedIpPoolsRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TListDedicatedIpPoolsRequest = class;
  
  IListDedicatedIpPoolsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListDedicatedIpPoolsRequest;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListDedicatedIpPoolsRequest = class(TAmazonSimpleEmailServiceV2Request, IListDedicatedIpPoolsRequest)
  strict private
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListDedicatedIpPoolsRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListDedicatedIpPoolsRequest }

function TListDedicatedIpPoolsRequest.Obj: TListDedicatedIpPoolsRequest;
begin
  Result := Self;
end;

function TListDedicatedIpPoolsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDedicatedIpPoolsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDedicatedIpPoolsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListDedicatedIpPoolsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListDedicatedIpPoolsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListDedicatedIpPoolsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
