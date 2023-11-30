unit AWS.SESv2.Model.ListContactListsRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TListContactListsRequest = class;
  
  IListContactListsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListContactListsRequest;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListContactListsRequest = class(TAmazonSimpleEmailServiceV2Request, IListContactListsRequest)
  strict private
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListContactListsRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListContactListsRequest }

function TListContactListsRequest.Obj: TListContactListsRequest;
begin
  Result := Self;
end;

function TListContactListsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListContactListsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListContactListsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListContactListsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListContactListsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListContactListsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
