unit AWS.SES.Model.Destination;

interface

uses
  System.Generics.Collections;

type
  TDestination = class;
  
  IDestination = interface
    function GetBccAddresses: TList<string>;
    procedure SetBccAddresses(const Value: TList<string>);
    function GetCcAddresses: TList<string>;
    procedure SetCcAddresses(const Value: TList<string>);
    function GetToAddresses: TList<string>;
    procedure SetToAddresses(const Value: TList<string>);
    function Obj: TDestination;
    function IsSetBccAddresses: Boolean;
    function IsSetCcAddresses: Boolean;
    function IsSetToAddresses: Boolean;
    property BccAddresses: TList<string> read GetBccAddresses write SetBccAddresses;
    property CcAddresses: TList<string> read GetCcAddresses write SetCcAddresses;
    property ToAddresses: TList<string> read GetToAddresses write SetToAddresses;
  end;
  
  TDestination = class
  strict private
    FBccAddresses: TList<string>;
    FCcAddresses: TList<string>;
    FToAddresses: TList<string>;
    function GetBccAddresses: TList<string>;
    procedure SetBccAddresses(const Value: TList<string>);
    function GetCcAddresses: TList<string>;
    procedure SetCcAddresses(const Value: TList<string>);
    function GetToAddresses: TList<string>;
    procedure SetToAddresses(const Value: TList<string>);
  strict protected
    function Obj: TDestination;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AToAddresses: TList<string>); overload;
    function IsSetBccAddresses: Boolean;
    function IsSetCcAddresses: Boolean;
    function IsSetToAddresses: Boolean;
    property BccAddresses: TList<string> read GetBccAddresses write SetBccAddresses;
    property CcAddresses: TList<string> read GetCcAddresses write SetCcAddresses;
    property ToAddresses: TList<string> read GetToAddresses write SetToAddresses;
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
  FToAddresses.Free;
  FCcAddresses.Free;
  FBccAddresses.Free;
  inherited;
end;

function TDestination.Obj: TDestination;
begin
  Result := Self;
end;

constructor TDestination.Create(const AToAddresses: TList<string>);
begin
  inherited Create;
  ToAddresses := AToAddresses;
end;

function TDestination.GetBccAddresses: TList<string>;
begin
  Result := FBccAddresses;
end;

procedure TDestination.SetBccAddresses(const Value: TList<string>);
begin
  if FBccAddresses <> Value then
  begin
    FBccAddresses.Free;
    FBccAddresses := Value;
  end;
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
    FCcAddresses.Free;
    FCcAddresses := Value;
  end;
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
    FToAddresses.Free;
    FToAddresses := Value;
  end;
end;

function TDestination.IsSetToAddresses: Boolean;
begin
  Result := (FToAddresses <> nil) and (FToAddresses.Count > 0);
end;

end.
