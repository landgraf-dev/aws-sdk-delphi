unit AWS.SSM.Model.AttachmentsSource;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TAttachmentsSource = class;
  
  IAttachmentsSource = interface
    function GetKey: TAttachmentsSourceKey;
    procedure SetKey(const Value: TAttachmentsSourceKey);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TAttachmentsSource;
    function IsSetKey: Boolean;
    function IsSetName: Boolean;
    function IsSetValues: Boolean;
    property Key: TAttachmentsSourceKey read GetKey write SetKey;
    property Name: string read GetName write SetName;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TAttachmentsSource = class
  strict private
    FKey: Nullable<TAttachmentsSourceKey>;
    FName: Nullable<string>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: TAttachmentsSourceKey;
    procedure SetKey(const Value: TAttachmentsSourceKey);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TAttachmentsSource;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetName: Boolean;
    function IsSetValues: Boolean;
    property Key: TAttachmentsSourceKey read GetKey write SetKey;
    property Name: string read GetName write SetName;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TAttachmentsSource }

constructor TAttachmentsSource.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TAttachmentsSource.Destroy;
begin
  Values := nil;
  inherited;
end;

function TAttachmentsSource.Obj: TAttachmentsSource;
begin
  Result := Self;
end;

function TAttachmentsSource.GetKey: TAttachmentsSourceKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TAttachmentsSource.SetKey(const Value: TAttachmentsSourceKey);
begin
  FKey := Value;
end;

function TAttachmentsSource.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TAttachmentsSource.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAttachmentsSource.SetName(const Value: string);
begin
  FName := Value;
end;

function TAttachmentsSource.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TAttachmentsSource.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TAttachmentsSource.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TAttachmentsSource.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TAttachmentsSource.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TAttachmentsSource.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
