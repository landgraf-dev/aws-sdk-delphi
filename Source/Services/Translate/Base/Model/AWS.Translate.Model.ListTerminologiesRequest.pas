unit AWS.Translate.Model.ListTerminologiesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Translate.Model.Request;

type
  TListTerminologiesRequest = class;
  
  IListTerminologiesRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListTerminologiesRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListTerminologiesRequest = class(TAmazonTranslateRequest, IListTerminologiesRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListTerminologiesRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListTerminologiesRequest }

function TListTerminologiesRequest.Obj: TListTerminologiesRequest;
begin
  Result := Self;
end;

function TListTerminologiesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListTerminologiesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListTerminologiesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListTerminologiesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTerminologiesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTerminologiesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
