unit AWS.LexRuntimeService.Model.ActiveContext;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.LexRuntimeService.Model.ActiveContextTimeToLive;

type
  TActiveContext = class;
  
  IActiveContext = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParameters: TDictionary<string, string>;
    procedure SetParameters(const Value: TDictionary<string, string>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetTimeToLive: TActiveContextTimeToLive;
    procedure SetTimeToLive(const Value: TActiveContextTimeToLive);
    function GetKeepTimeToLive: Boolean;
    procedure SetKeepTimeToLive(const Value: Boolean);
    function Obj: TActiveContext;
    function IsSetName: Boolean;
    function IsSetParameters: Boolean;
    function IsSetTimeToLive: Boolean;
    property Name: string read GetName write SetName;
    property Parameters: TDictionary<string, string> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property TimeToLive: TActiveContextTimeToLive read GetTimeToLive write SetTimeToLive;
    property KeepTimeToLive: Boolean read GetKeepTimeToLive write SetKeepTimeToLive;
  end;
  
  TActiveContext = class
  strict private
    FName: Nullable<string>;
    FParameters: TDictionary<string, string>;
    FKeepParameters: Boolean;
    FTimeToLive: TActiveContextTimeToLive;
    FKeepTimeToLive: Boolean;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParameters: TDictionary<string, string>;
    procedure SetParameters(const Value: TDictionary<string, string>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetTimeToLive: TActiveContextTimeToLive;
    procedure SetTimeToLive(const Value: TActiveContextTimeToLive);
    function GetKeepTimeToLive: Boolean;
    procedure SetKeepTimeToLive(const Value: Boolean);
  strict protected
    function Obj: TActiveContext;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetName: Boolean;
    function IsSetParameters: Boolean;
    function IsSetTimeToLive: Boolean;
    property Name: string read GetName write SetName;
    property Parameters: TDictionary<string, string> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property TimeToLive: TActiveContextTimeToLive read GetTimeToLive write SetTimeToLive;
    property KeepTimeToLive: Boolean read GetKeepTimeToLive write SetKeepTimeToLive;
  end;
  
implementation

{ TActiveContext }

constructor TActiveContext.Create;
begin
  inherited;
  FParameters := TDictionary<string, string>.Create;
end;

destructor TActiveContext.Destroy;
begin
  TimeToLive := nil;
  Parameters := nil;
  inherited;
end;

function TActiveContext.Obj: TActiveContext;
begin
  Result := Self;
end;

function TActiveContext.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TActiveContext.SetName(const Value: string);
begin
  FName := Value;
end;

function TActiveContext.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TActiveContext.GetParameters: TDictionary<string, string>;
begin
  Result := FParameters;
end;

procedure TActiveContext.SetParameters(const Value: TDictionary<string, string>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TActiveContext.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TActiveContext.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TActiveContext.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TActiveContext.GetTimeToLive: TActiveContextTimeToLive;
begin
  Result := FTimeToLive;
end;

procedure TActiveContext.SetTimeToLive(const Value: TActiveContextTimeToLive);
begin
  if FTimeToLive <> Value then
  begin
    if not KeepTimeToLive then
      FTimeToLive.Free;
    FTimeToLive := Value;
  end;
end;

function TActiveContext.GetKeepTimeToLive: Boolean;
begin
  Result := FKeepTimeToLive;
end;

procedure TActiveContext.SetKeepTimeToLive(const Value: Boolean);
begin
  FKeepTimeToLive := Value;
end;

function TActiveContext.IsSetTimeToLive: Boolean;
begin
  Result := FTimeToLive <> nil;
end;

end.
