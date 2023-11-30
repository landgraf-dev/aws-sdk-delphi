unit AWS.SESv2.Model.ListCustomVerificationEmailTemplatesRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TListCustomVerificationEmailTemplatesRequest = class;
  
  IListCustomVerificationEmailTemplatesRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListCustomVerificationEmailTemplatesRequest;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListCustomVerificationEmailTemplatesRequest = class(TAmazonSimpleEmailServiceV2Request, IListCustomVerificationEmailTemplatesRequest)
  strict private
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListCustomVerificationEmailTemplatesRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListCustomVerificationEmailTemplatesRequest }

function TListCustomVerificationEmailTemplatesRequest.Obj: TListCustomVerificationEmailTemplatesRequest;
begin
  Result := Self;
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

function TListCustomVerificationEmailTemplatesRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListCustomVerificationEmailTemplatesRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListCustomVerificationEmailTemplatesRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
