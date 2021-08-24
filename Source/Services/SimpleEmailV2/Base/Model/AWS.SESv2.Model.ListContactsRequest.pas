unit AWS.SESv2.Model.ListContactsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.ListContactsFilter;

type
  TListContactsRequest = class;
  
  IListContactsRequest = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetFilter: TListContactsFilter;
    procedure SetFilter(const Value: TListContactsFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListContactsRequest;
    function IsSetContactListName: Boolean;
    function IsSetFilter: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property Filter: TListContactsFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListContactsRequest = class(TAmazonSimpleEmailServiceV2Request, IListContactsRequest)
  strict private
    FContactListName: Nullable<string>;
    FFilter: TListContactsFilter;
    FKeepFilter: Boolean;
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetFilter: TListContactsFilter;
    procedure SetFilter(const Value: TListContactsFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListContactsRequest;
  public
    destructor Destroy; override;
    function IsSetContactListName: Boolean;
    function IsSetFilter: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property Filter: TListContactsFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListContactsRequest }

destructor TListContactsRequest.Destroy;
begin
  Filter := nil;
  inherited;
end;

function TListContactsRequest.Obj: TListContactsRequest;
begin
  Result := Self;
end;

function TListContactsRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TListContactsRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TListContactsRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TListContactsRequest.GetFilter: TListContactsFilter;
begin
  Result := FFilter;
end;

procedure TListContactsRequest.SetFilter(const Value: TListContactsFilter);
begin
  if FFilter <> Value then
  begin
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TListContactsRequest.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TListContactsRequest.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TListContactsRequest.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

function TListContactsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListContactsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListContactsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListContactsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListContactsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListContactsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
