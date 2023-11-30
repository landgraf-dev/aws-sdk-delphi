unit AWS.LexRuntimeV2.Model.ActiveContext;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.LexRuntimeV2.Model.ActiveContextTimeToLive;

type
  TActiveContext = class;
  
  IActiveContext = interface
    function GetContextAttributes: TDictionary<string, string>;
    procedure SetContextAttributes(const Value: TDictionary<string, string>);
    function GetKeepContextAttributes: Boolean;
    procedure SetKeepContextAttributes(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTimeToLive: TActiveContextTimeToLive;
    procedure SetTimeToLive(const Value: TActiveContextTimeToLive);
    function GetKeepTimeToLive: Boolean;
    procedure SetKeepTimeToLive(const Value: Boolean);
    function Obj: TActiveContext;
    function IsSetContextAttributes: Boolean;
    function IsSetName: Boolean;
    function IsSetTimeToLive: Boolean;
    property ContextAttributes: TDictionary<string, string> read GetContextAttributes write SetContextAttributes;
    property KeepContextAttributes: Boolean read GetKeepContextAttributes write SetKeepContextAttributes;
    property Name: string read GetName write SetName;
    property TimeToLive: TActiveContextTimeToLive read GetTimeToLive write SetTimeToLive;
    property KeepTimeToLive: Boolean read GetKeepTimeToLive write SetKeepTimeToLive;
  end;
  
  TActiveContext = class
  strict private
    FContextAttributes: TDictionary<string, string>;
    FKeepContextAttributes: Boolean;
    FName: Nullable<string>;
    FTimeToLive: TActiveContextTimeToLive;
    FKeepTimeToLive: Boolean;
    function GetContextAttributes: TDictionary<string, string>;
    procedure SetContextAttributes(const Value: TDictionary<string, string>);
    function GetKeepContextAttributes: Boolean;
    procedure SetKeepContextAttributes(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTimeToLive: TActiveContextTimeToLive;
    procedure SetTimeToLive(const Value: TActiveContextTimeToLive);
    function GetKeepTimeToLive: Boolean;
    procedure SetKeepTimeToLive(const Value: Boolean);
  strict protected
    function Obj: TActiveContext;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContextAttributes: Boolean;
    function IsSetName: Boolean;
    function IsSetTimeToLive: Boolean;
    property ContextAttributes: TDictionary<string, string> read GetContextAttributes write SetContextAttributes;
    property KeepContextAttributes: Boolean read GetKeepContextAttributes write SetKeepContextAttributes;
    property Name: string read GetName write SetName;
    property TimeToLive: TActiveContextTimeToLive read GetTimeToLive write SetTimeToLive;
    property KeepTimeToLive: Boolean read GetKeepTimeToLive write SetKeepTimeToLive;
  end;
  
implementation

{ TActiveContext }

constructor TActiveContext.Create;
begin
  inherited;
  FContextAttributes := TDictionary<string, string>.Create;
end;

destructor TActiveContext.Destroy;
begin
  TimeToLive := nil;
  ContextAttributes := nil;
  inherited;
end;

function TActiveContext.Obj: TActiveContext;
begin
  Result := Self;
end;

function TActiveContext.GetContextAttributes: TDictionary<string, string>;
begin
  Result := FContextAttributes;
end;

procedure TActiveContext.SetContextAttributes(const Value: TDictionary<string, string>);
begin
  if FContextAttributes <> Value then
  begin
    if not KeepContextAttributes then
      FContextAttributes.Free;
    FContextAttributes := Value;
  end;
end;

function TActiveContext.GetKeepContextAttributes: Boolean;
begin
  Result := FKeepContextAttributes;
end;

procedure TActiveContext.SetKeepContextAttributes(const Value: Boolean);
begin
  FKeepContextAttributes := Value;
end;

function TActiveContext.IsSetContextAttributes: Boolean;
begin
  Result := (FContextAttributes <> nil) and (FContextAttributes.Count > 0);
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
