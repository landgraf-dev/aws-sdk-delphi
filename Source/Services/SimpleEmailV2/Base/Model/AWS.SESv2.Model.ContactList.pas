unit AWS.SESv2.Model.ContactList;

interface

uses
  AWS.Nullable;

type
  TContactList = class;
  
  IContactList = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetLastUpdatedTimestamp: TDateTime;
    procedure SetLastUpdatedTimestamp(const Value: TDateTime);
    function Obj: TContactList;
    function IsSetContactListName: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
  end;
  
  TContactList = class
  strict private
    FContactListName: Nullable<string>;
    FLastUpdatedTimestamp: Nullable<TDateTime>;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetLastUpdatedTimestamp: TDateTime;
    procedure SetLastUpdatedTimestamp(const Value: TDateTime);
  strict protected
    function Obj: TContactList;
  public
    function IsSetContactListName: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
  end;
  
implementation

{ TContactList }

function TContactList.Obj: TContactList;
begin
  Result := Self;
end;

function TContactList.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TContactList.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TContactList.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TContactList.GetLastUpdatedTimestamp: TDateTime;
begin
  Result := FLastUpdatedTimestamp.ValueOrDefault;
end;

procedure TContactList.SetLastUpdatedTimestamp(const Value: TDateTime);
begin
  FLastUpdatedTimestamp := Value;
end;

function TContactList.IsSetLastUpdatedTimestamp: Boolean;
begin
  Result := FLastUpdatedTimestamp.HasValue;
end;

end.
