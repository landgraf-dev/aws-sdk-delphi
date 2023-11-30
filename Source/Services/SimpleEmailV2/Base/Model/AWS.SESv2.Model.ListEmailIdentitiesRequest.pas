unit AWS.SESv2.Model.ListEmailIdentitiesRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TListEmailIdentitiesRequest = class;
  
  IListEmailIdentitiesRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListEmailIdentitiesRequest;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListEmailIdentitiesRequest = class(TAmazonSimpleEmailServiceV2Request, IListEmailIdentitiesRequest)
  strict private
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListEmailIdentitiesRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListEmailIdentitiesRequest }

function TListEmailIdentitiesRequest.Obj: TListEmailIdentitiesRequest;
begin
  Result := Self;
end;

function TListEmailIdentitiesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListEmailIdentitiesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListEmailIdentitiesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListEmailIdentitiesRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListEmailIdentitiesRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListEmailIdentitiesRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
