unit AWS.SESv2.Model.ListDeliverabilityTestReportsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TListDeliverabilityTestReportsRequest = class;
  
  IListDeliverabilityTestReportsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListDeliverabilityTestReportsRequest;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListDeliverabilityTestReportsRequest = class(TAmazonSimpleEmailServiceV2Request, IListDeliverabilityTestReportsRequest)
  strict private
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListDeliverabilityTestReportsRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListDeliverabilityTestReportsRequest }

function TListDeliverabilityTestReportsRequest.Obj: TListDeliverabilityTestReportsRequest;
begin
  Result := Self;
end;

function TListDeliverabilityTestReportsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDeliverabilityTestReportsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDeliverabilityTestReportsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListDeliverabilityTestReportsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListDeliverabilityTestReportsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListDeliverabilityTestReportsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
