unit AWS.SESv2.Model.ImportDestination;

interface

uses
  AWS.SESv2.Model.ContactListDestination, 
  AWS.SESv2.Model.SuppressionListDestination;

type
  TImportDestination = class;
  
  IImportDestination = interface
    function GetContactListDestination: TContactListDestination;
    procedure SetContactListDestination(const Value: TContactListDestination);
    function GetKeepContactListDestination: Boolean;
    procedure SetKeepContactListDestination(const Value: Boolean);
    function GetSuppressionListDestination: TSuppressionListDestination;
    procedure SetSuppressionListDestination(const Value: TSuppressionListDestination);
    function GetKeepSuppressionListDestination: Boolean;
    procedure SetKeepSuppressionListDestination(const Value: Boolean);
    function Obj: TImportDestination;
    function IsSetContactListDestination: Boolean;
    function IsSetSuppressionListDestination: Boolean;
    property ContactListDestination: TContactListDestination read GetContactListDestination write SetContactListDestination;
    property KeepContactListDestination: Boolean read GetKeepContactListDestination write SetKeepContactListDestination;
    property SuppressionListDestination: TSuppressionListDestination read GetSuppressionListDestination write SetSuppressionListDestination;
    property KeepSuppressionListDestination: Boolean read GetKeepSuppressionListDestination write SetKeepSuppressionListDestination;
  end;
  
  TImportDestination = class
  strict private
    FContactListDestination: TContactListDestination;
    FKeepContactListDestination: Boolean;
    FSuppressionListDestination: TSuppressionListDestination;
    FKeepSuppressionListDestination: Boolean;
    function GetContactListDestination: TContactListDestination;
    procedure SetContactListDestination(const Value: TContactListDestination);
    function GetKeepContactListDestination: Boolean;
    procedure SetKeepContactListDestination(const Value: Boolean);
    function GetSuppressionListDestination: TSuppressionListDestination;
    procedure SetSuppressionListDestination(const Value: TSuppressionListDestination);
    function GetKeepSuppressionListDestination: Boolean;
    procedure SetKeepSuppressionListDestination(const Value: Boolean);
  strict protected
    function Obj: TImportDestination;
  public
    destructor Destroy; override;
    function IsSetContactListDestination: Boolean;
    function IsSetSuppressionListDestination: Boolean;
    property ContactListDestination: TContactListDestination read GetContactListDestination write SetContactListDestination;
    property KeepContactListDestination: Boolean read GetKeepContactListDestination write SetKeepContactListDestination;
    property SuppressionListDestination: TSuppressionListDestination read GetSuppressionListDestination write SetSuppressionListDestination;
    property KeepSuppressionListDestination: Boolean read GetKeepSuppressionListDestination write SetKeepSuppressionListDestination;
  end;
  
implementation

{ TImportDestination }

destructor TImportDestination.Destroy;
begin
  SuppressionListDestination := nil;
  ContactListDestination := nil;
  inherited;
end;

function TImportDestination.Obj: TImportDestination;
begin
  Result := Self;
end;

function TImportDestination.GetContactListDestination: TContactListDestination;
begin
  Result := FContactListDestination;
end;

procedure TImportDestination.SetContactListDestination(const Value: TContactListDestination);
begin
  if FContactListDestination <> Value then
  begin
    if not KeepContactListDestination then
      FContactListDestination.Free;
    FContactListDestination := Value;
  end;
end;

function TImportDestination.GetKeepContactListDestination: Boolean;
begin
  Result := FKeepContactListDestination;
end;

procedure TImportDestination.SetKeepContactListDestination(const Value: Boolean);
begin
  FKeepContactListDestination := Value;
end;

function TImportDestination.IsSetContactListDestination: Boolean;
begin
  Result := FContactListDestination <> nil;
end;

function TImportDestination.GetSuppressionListDestination: TSuppressionListDestination;
begin
  Result := FSuppressionListDestination;
end;

procedure TImportDestination.SetSuppressionListDestination(const Value: TSuppressionListDestination);
begin
  if FSuppressionListDestination <> Value then
  begin
    if not KeepSuppressionListDestination then
      FSuppressionListDestination.Free;
    FSuppressionListDestination := Value;
  end;
end;

function TImportDestination.GetKeepSuppressionListDestination: Boolean;
begin
  Result := FKeepSuppressionListDestination;
end;

procedure TImportDestination.SetKeepSuppressionListDestination(const Value: Boolean);
begin
  FKeepSuppressionListDestination := Value;
end;

function TImportDestination.IsSetSuppressionListDestination: Boolean;
begin
  Result := FSuppressionListDestination <> nil;
end;

end.
