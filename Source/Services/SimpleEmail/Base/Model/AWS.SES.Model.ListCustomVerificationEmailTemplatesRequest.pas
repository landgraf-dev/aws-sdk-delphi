unit AWS.SES.Model.ListCustomVerificationEmailTemplatesRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TListCustomVerificationEmailTemplatesRequest = class;
  
  IListCustomVerificationEmailTemplatesRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListCustomVerificationEmailTemplatesRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCustomVerificationEmailTemplatesRequest = class(TAmazonSimpleEmailServiceRequest, IListCustomVerificationEmailTemplatesRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListCustomVerificationEmailTemplatesRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCustomVerificationEmailTemplatesRequest }

function TListCustomVerificationEmailTemplatesRequest.Obj: TListCustomVerificationEmailTemplatesRequest;
begin
  Result := Self;
end;

function TListCustomVerificationEmailTemplatesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListCustomVerificationEmailTemplatesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListCustomVerificationEmailTemplatesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListCustomVerificationEmailTemplatesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCustomVerificationEmailTemplatesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCustomVerificationEmailTemplatesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
