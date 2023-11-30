unit AWS.SESv2.Model.ListEmailTemplatesRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TListEmailTemplatesRequest = class;
  
  IListEmailTemplatesRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListEmailTemplatesRequest;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListEmailTemplatesRequest = class(TAmazonSimpleEmailServiceV2Request, IListEmailTemplatesRequest)
  strict private
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListEmailTemplatesRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListEmailTemplatesRequest }

function TListEmailTemplatesRequest.Obj: TListEmailTemplatesRequest;
begin
  Result := Self;
end;

function TListEmailTemplatesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListEmailTemplatesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListEmailTemplatesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListEmailTemplatesRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListEmailTemplatesRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListEmailTemplatesRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
