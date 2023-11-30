unit AWS.SES.Model.ListIdentitiesRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable, 
  AWS.SES.Enums;

type
  TListIdentitiesRequest = class;
  
  IListIdentitiesRequest = interface
    function GetIdentityType: TIdentityType;
    procedure SetIdentityType(const Value: TIdentityType);
    function GetMaxItems: Integer;
    procedure SetMaxItems(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListIdentitiesRequest;
    function IsSetIdentityType: Boolean;
    function IsSetMaxItems: Boolean;
    function IsSetNextToken: Boolean;
    property IdentityType: TIdentityType read GetIdentityType write SetIdentityType;
    property MaxItems: Integer read GetMaxItems write SetMaxItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListIdentitiesRequest = class(TAmazonSimpleEmailServiceRequest, IListIdentitiesRequest)
  strict private
    FIdentityType: Nullable<TIdentityType>;
    FMaxItems: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetIdentityType: TIdentityType;
    procedure SetIdentityType(const Value: TIdentityType);
    function GetMaxItems: Integer;
    procedure SetMaxItems(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListIdentitiesRequest;
  public
    function IsSetIdentityType: Boolean;
    function IsSetMaxItems: Boolean;
    function IsSetNextToken: Boolean;
    property IdentityType: TIdentityType read GetIdentityType write SetIdentityType;
    property MaxItems: Integer read GetMaxItems write SetMaxItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListIdentitiesRequest }

function TListIdentitiesRequest.Obj: TListIdentitiesRequest;
begin
  Result := Self;
end;

function TListIdentitiesRequest.GetIdentityType: TIdentityType;
begin
  Result := FIdentityType.ValueOrDefault;
end;

procedure TListIdentitiesRequest.SetIdentityType(const Value: TIdentityType);
begin
  FIdentityType := Value;
end;

function TListIdentitiesRequest.IsSetIdentityType: Boolean;
begin
  Result := FIdentityType.HasValue;
end;

function TListIdentitiesRequest.GetMaxItems: Integer;
begin
  Result := FMaxItems.ValueOrDefault;
end;

procedure TListIdentitiesRequest.SetMaxItems(const Value: Integer);
begin
  FMaxItems := Value;
end;

function TListIdentitiesRequest.IsSetMaxItems: Boolean;
begin
  Result := FMaxItems.HasValue;
end;

function TListIdentitiesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListIdentitiesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListIdentitiesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
