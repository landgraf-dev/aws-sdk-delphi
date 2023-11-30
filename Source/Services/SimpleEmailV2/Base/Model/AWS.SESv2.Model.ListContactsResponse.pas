unit AWS.SESv2.Model.ListContactsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.Contact, 
  AWS.Nullable;

type
  TListContactsResponse = class;
  
  IListContactsResponse = interface(IAmazonWebServiceResponse)
    function GetContacts: TObjectList<TContact>;
    procedure SetContacts(const Value: TObjectList<TContact>);
    function GetKeepContacts: Boolean;
    procedure SetKeepContacts(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListContactsResponse;
    function IsSetContacts: Boolean;
    function IsSetNextToken: Boolean;
    property Contacts: TObjectList<TContact> read GetContacts write SetContacts;
    property KeepContacts: Boolean read GetKeepContacts write SetKeepContacts;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListContactsResponse = class(TAmazonWebServiceResponse, IListContactsResponse)
  strict private
    FContacts: TObjectList<TContact>;
    FKeepContacts: Boolean;
    FNextToken: Nullable<string>;
    function GetContacts: TObjectList<TContact>;
    procedure SetContacts(const Value: TObjectList<TContact>);
    function GetKeepContacts: Boolean;
    procedure SetKeepContacts(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListContactsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContacts: Boolean;
    function IsSetNextToken: Boolean;
    property Contacts: TObjectList<TContact> read GetContacts write SetContacts;
    property KeepContacts: Boolean read GetKeepContacts write SetKeepContacts;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListContactsResponse }

constructor TListContactsResponse.Create;
begin
  inherited;
  FContacts := TObjectList<TContact>.Create;
end;

destructor TListContactsResponse.Destroy;
begin
  Contacts := nil;
  inherited;
end;

function TListContactsResponse.Obj: TListContactsResponse;
begin
  Result := Self;
end;

function TListContactsResponse.GetContacts: TObjectList<TContact>;
begin
  Result := FContacts;
end;

procedure TListContactsResponse.SetContacts(const Value: TObjectList<TContact>);
begin
  if FContacts <> Value then
  begin
    if not KeepContacts then
      FContacts.Free;
    FContacts := Value;
  end;
end;

function TListContactsResponse.GetKeepContacts: Boolean;
begin
  Result := FKeepContacts;
end;

procedure TListContactsResponse.SetKeepContacts(const Value: Boolean);
begin
  FKeepContacts := Value;
end;

function TListContactsResponse.IsSetContacts: Boolean;
begin
  Result := (FContacts <> nil) and (FContacts.Count > 0);
end;

function TListContactsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListContactsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListContactsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
