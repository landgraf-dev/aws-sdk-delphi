unit AWS.SNS.Model.ListOriginationNumbersRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TListOriginationNumbersRequest = class;
  
  IListOriginationNumbersRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListOriginationNumbersRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListOriginationNumbersRequest = class(TAmazonSimpleNotificationServiceRequest, IListOriginationNumbersRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListOriginationNumbersRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListOriginationNumbersRequest }

function TListOriginationNumbersRequest.Obj: TListOriginationNumbersRequest;
begin
  Result := Self;
end;

function TListOriginationNumbersRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListOriginationNumbersRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListOriginationNumbersRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListOriginationNumbersRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListOriginationNumbersRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListOriginationNumbersRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
