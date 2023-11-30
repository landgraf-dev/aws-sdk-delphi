unit AWS.SESv2.Model.ListContactListsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.ContactList, 
  AWS.Nullable;

type
  TListContactListsResponse = class;
  
  IListContactListsResponse = interface(IAmazonWebServiceResponse)
    function GetContactLists: TObjectList<TContactList>;
    procedure SetContactLists(const Value: TObjectList<TContactList>);
    function GetKeepContactLists: Boolean;
    procedure SetKeepContactLists(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListContactListsResponse;
    function IsSetContactLists: Boolean;
    function IsSetNextToken: Boolean;
    property ContactLists: TObjectList<TContactList> read GetContactLists write SetContactLists;
    property KeepContactLists: Boolean read GetKeepContactLists write SetKeepContactLists;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListContactListsResponse = class(TAmazonWebServiceResponse, IListContactListsResponse)
  strict private
    FContactLists: TObjectList<TContactList>;
    FKeepContactLists: Boolean;
    FNextToken: Nullable<string>;
    function GetContactLists: TObjectList<TContactList>;
    procedure SetContactLists(const Value: TObjectList<TContactList>);
    function GetKeepContactLists: Boolean;
    procedure SetKeepContactLists(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListContactListsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContactLists: Boolean;
    function IsSetNextToken: Boolean;
    property ContactLists: TObjectList<TContactList> read GetContactLists write SetContactLists;
    property KeepContactLists: Boolean read GetKeepContactLists write SetKeepContactLists;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListContactListsResponse }

constructor TListContactListsResponse.Create;
begin
  inherited;
  FContactLists := TObjectList<TContactList>.Create;
end;

destructor TListContactListsResponse.Destroy;
begin
  ContactLists := nil;
  inherited;
end;

function TListContactListsResponse.Obj: TListContactListsResponse;
begin
  Result := Self;
end;

function TListContactListsResponse.GetContactLists: TObjectList<TContactList>;
begin
  Result := FContactLists;
end;

procedure TListContactListsResponse.SetContactLists(const Value: TObjectList<TContactList>);
begin
  if FContactLists <> Value then
  begin
    if not KeepContactLists then
      FContactLists.Free;
    FContactLists := Value;
  end;
end;

function TListContactListsResponse.GetKeepContactLists: Boolean;
begin
  Result := FKeepContactLists;
end;

procedure TListContactListsResponse.SetKeepContactLists(const Value: Boolean);
begin
  FKeepContactLists := Value;
end;

function TListContactListsResponse.IsSetContactLists: Boolean;
begin
  Result := (FContactLists <> nil) and (FContactLists.Count > 0);
end;

function TListContactListsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListContactListsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListContactListsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
