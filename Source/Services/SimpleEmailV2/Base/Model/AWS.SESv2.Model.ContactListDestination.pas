unit AWS.SESv2.Model.ContactListDestination;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TContactListDestination = class;
  
  IContactListDestination = interface
    function GetContactListImportAction: TContactListImportAction;
    procedure SetContactListImportAction(const Value: TContactListImportAction);
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function Obj: TContactListDestination;
    function IsSetContactListImportAction: Boolean;
    function IsSetContactListName: Boolean;
    property ContactListImportAction: TContactListImportAction read GetContactListImportAction write SetContactListImportAction;
    property ContactListName: string read GetContactListName write SetContactListName;
  end;
  
  TContactListDestination = class
  strict private
    FContactListImportAction: Nullable<TContactListImportAction>;
    FContactListName: Nullable<string>;
    function GetContactListImportAction: TContactListImportAction;
    procedure SetContactListImportAction(const Value: TContactListImportAction);
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
  strict protected
    function Obj: TContactListDestination;
  public
    function IsSetContactListImportAction: Boolean;
    function IsSetContactListName: Boolean;
    property ContactListImportAction: TContactListImportAction read GetContactListImportAction write SetContactListImportAction;
    property ContactListName: string read GetContactListName write SetContactListName;
  end;
  
implementation

{ TContactListDestination }

function TContactListDestination.Obj: TContactListDestination;
begin
  Result := Self;
end;

function TContactListDestination.GetContactListImportAction: TContactListImportAction;
begin
  Result := FContactListImportAction.ValueOrDefault;
end;

procedure TContactListDestination.SetContactListImportAction(const Value: TContactListImportAction);
begin
  FContactListImportAction := Value;
end;

function TContactListDestination.IsSetContactListImportAction: Boolean;
begin
  Result := FContactListImportAction.HasValue;
end;

function TContactListDestination.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TContactListDestination.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TContactListDestination.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

end.
