unit AWS.SESv2.Model.Destination;

interface

uses
  System.Generics.Collections;

type
  TDestination = class;
  
  IDestination = interface
    function GetBccAddresses: TList<string>;
    procedure SetBccAddresses(const Value: TList<string>);
    function GetKeepBccAddresses: Boolean;
    procedure SetKeepBccAddresses(const Value: Boolean);
    function GetCcAddresses: TList<string>;
    procedure SetCcAddresses(const Value: TList<string>);
    function GetKeepCcAddresses: Boolean;
    procedure SetKeepCcAddresses(const Value: Boolean);
    function GetToAddresses: TList<string>;
    procedure SetToAddresses(const Value: TList<string>);
    function GetKeepToAddresses: Boolean;
    procedure SetKeepToAddresses(const Value: Boolean);
    function Obj: TDestination;
    function IsSetBccAddresses: Boolean;
    function IsSetCcAddresses: Boolean;
    function IsSetToAddresses: Boolean;
    property BccAddresses: TList<string> read GetBccAddresses write SetBccAddresses;
    property KeepBccAddresses: Boolean read GetKeepBccAddresses write SetKeepBccAddresses;
    property CcAddresses: TList<string> read GetCcAddresses write SetCcAddresses;
    property KeepCcAddresses: Boolean read GetKeepCcAddresses write SetKeepCcAddresses;
    property ToAddresses: TList<string> read GetToAddresses write SetToAddresses;
    property KeepToAddresses: Boolean read GetKeepToAddresses write SetKeepToAddresses;
  end;
  
  TDestination = class
  strict private
    FBccAddresses: TList<string>;
    FKeepBccAddresses: Boolean;
    FCcAddresses: TList<string>;
    FKeepCcAddresses: Boolean;
    FToAddresses: TList<string>;
    FKeepToAddresses: Boolean;
    function GetBccAddresses: TList<string>;
    procedure SetBccAddresses(const Value: TList<string>);
    function GetKeepBccAddresses: Boolean;
    procedure SetKeepBccAddresses(const Value: Boolean);
    function GetCcAddresses: TList<string>;
    procedure SetCcAddresses(const Value: TList<string>);
    function GetKeepCcAddresses: Boolean;
    procedure SetKeepCcAddresses(const Value: Boolean);
    function GetToAddresses: TList<string>;
    procedure SetToAddresses(const Value: TList<string>);
    function GetKeepToAddresses: Boolean;
    procedure SetKeepToAddresses(const Value: Boolean);
  strict protected
    function Obj: TDestination;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBccAddresses: Boolean;
    function IsSetCcAddresses: Boolean;
    function IsSetToAddresses: Boolean;
    property BccAddresses: TList<string> read GetBccAddresses write SetBccAddresses;
    property KeepBccAddresses: Boolean read GetKeepBccAddresses write SetKeepBccAddresses;
    property CcAddresses: TList<string> read GetCcAddresses write SetCcAddresses;
    property KeepCcAddresses: Boolean read GetKeepCcAddresses write SetKeepCcAddresses;
    property ToAddresses: TList<string> read GetToAddresses write SetToAddresses;
    property KeepToAddresses: Boolean read GetKeepToAddresses write SetKeepToAddresses;
  end;
  
implementation

{ TDestination }

constructor TDestination.Create;
begin
  inherited;
  FBccAddresses := TList<string>.Create;
  FCcAddresses := TList<string>.Create;
  FToAddresses := TList<string>.Create;
end;

destructor TDestination.Destroy;
begin
  ToAddresses := nil;
  CcAddresses := nil;
  BccAddresses := nil;
  inherited;
end;

function TDestination.Obj: TDestination;
begin
  Result := Self;
end;

function TDestination.GetBccAddresses: TList<string>;
begin
  Result := FBccAddresses;
end;

procedure TDestination.SetBccAddresses(const Value: TList<string>);
begin
  if FBccAddresses <> Value then
  begin
    if not KeepBccAddresses then
      FBccAddresses.Free;
    FBccAddresses := Value;
  end;
end;

function TDestination.GetKeepBccAddresses: Boolean;
begin
  Result := FKeepBccAddresses;
end;

procedure TDestination.SetKeepBccAddresses(const Value: Boolean);
begin
  FKeepBccAddresses := Value;
end;

function TDestination.IsSetBccAddresses: Boolean;
begin
  Result := (FBccAddresses <> nil) and (FBccAddresses.Count > 0);
end;

function TDestination.GetCcAddresses: TList<string>;
begin
  Result := FCcAddresses;
end;

procedure TDestination.SetCcAddresses(const Value: TList<string>);
begin
  if FCcAddresses <> Value then
  begin
    if not KeepCcAddresses then
      FCcAddresses.Free;
    FCcAddresses := Value;
  end;
end;

function TDestination.GetKeepCcAddresses: Boolean;
begin
  Result := FKeepCcAddresses;
end;

procedure TDestination.SetKeepCcAddresses(const Value: Boolean);
begin
  FKeepCcAddresses := Value;
end;

function TDestination.IsSetCcAddresses: Boolean;
begin
  Result := (FCcAddresses <> nil) and (FCcAddresses.Count > 0);
end;

function TDestination.GetToAddresses: TList<string>;
begin
  Result := FToAddresses;
end;

procedure TDestination.SetToAddresses(const Value: TList<string>);
begin
  if FToAddresses <> Value then
  begin
    if not KeepToAddresses then
      FToAddresses.Free;
    FToAddresses := Value;
  end;
end;

function TDestination.GetKeepToAddresses: Boolean;
begin
  Result := FKeepToAddresses;
end;

procedure TDestination.SetKeepToAddresses(const Value: Boolean);
begin
  FKeepToAddresses := Value;
end;

function TDestination.IsSetToAddresses: Boolean;
begin
  Result := (FToAddresses <> nil) and (FToAddresses.Count > 0);
end;

end.
