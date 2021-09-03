unit AWS.Rekognition.Model.LabelTypes;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Rekognition.Model.Instance, 
  AWS.Rekognition.Model.Parent;

type
  TLabel = class;
  
  ILabel = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetInstances: TObjectList<TInstance>;
    procedure SetInstances(const Value: TObjectList<TInstance>);
    function GetKeepInstances: Boolean;
    procedure SetKeepInstances(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParents: TObjectList<TParent>;
    procedure SetParents(const Value: TObjectList<TParent>);
    function GetKeepParents: Boolean;
    procedure SetKeepParents(const Value: Boolean);
    function Obj: TLabel;
    function IsSetConfidence: Boolean;
    function IsSetInstances: Boolean;
    function IsSetName: Boolean;
    function IsSetParents: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Instances: TObjectList<TInstance> read GetInstances write SetInstances;
    property KeepInstances: Boolean read GetKeepInstances write SetKeepInstances;
    property Name: string read GetName write SetName;
    property Parents: TObjectList<TParent> read GetParents write SetParents;
    property KeepParents: Boolean read GetKeepParents write SetKeepParents;
  end;
  
  TLabel = class
  strict private
    FConfidence: Nullable<Double>;
    FInstances: TObjectList<TInstance>;
    FKeepInstances: Boolean;
    FName: Nullable<string>;
    FParents: TObjectList<TParent>;
    FKeepParents: Boolean;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetInstances: TObjectList<TInstance>;
    procedure SetInstances(const Value: TObjectList<TInstance>);
    function GetKeepInstances: Boolean;
    procedure SetKeepInstances(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetParents: TObjectList<TParent>;
    procedure SetParents(const Value: TObjectList<TParent>);
    function GetKeepParents: Boolean;
    procedure SetKeepParents(const Value: Boolean);
  strict protected
    function Obj: TLabel;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfidence: Boolean;
    function IsSetInstances: Boolean;
    function IsSetName: Boolean;
    function IsSetParents: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Instances: TObjectList<TInstance> read GetInstances write SetInstances;
    property KeepInstances: Boolean read GetKeepInstances write SetKeepInstances;
    property Name: string read GetName write SetName;
    property Parents: TObjectList<TParent> read GetParents write SetParents;
    property KeepParents: Boolean read GetKeepParents write SetKeepParents;
  end;
  
implementation

{ TLabel }

constructor TLabel.Create;
begin
  inherited;
  FInstances := TObjectList<TInstance>.Create;
  FParents := TObjectList<TParent>.Create;
end;

destructor TLabel.Destroy;
begin
  Parents := nil;
  Instances := nil;
  inherited;
end;

function TLabel.Obj: TLabel;
begin
  Result := Self;
end;

function TLabel.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TLabel.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TLabel.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TLabel.GetInstances: TObjectList<TInstance>;
begin
  Result := FInstances;
end;

procedure TLabel.SetInstances(const Value: TObjectList<TInstance>);
begin
  if FInstances <> Value then
  begin
    if not KeepInstances then
      FInstances.Free;
    FInstances := Value;
  end;
end;

function TLabel.GetKeepInstances: Boolean;
begin
  Result := FKeepInstances;
end;

procedure TLabel.SetKeepInstances(const Value: Boolean);
begin
  FKeepInstances := Value;
end;

function TLabel.IsSetInstances: Boolean;
begin
  Result := (FInstances <> nil) and (FInstances.Count > 0);
end;

function TLabel.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TLabel.SetName(const Value: string);
begin
  FName := Value;
end;

function TLabel.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TLabel.GetParents: TObjectList<TParent>;
begin
  Result := FParents;
end;

procedure TLabel.SetParents(const Value: TObjectList<TParent>);
begin
  if FParents <> Value then
  begin
    if not KeepParents then
      FParents.Free;
    FParents := Value;
  end;
end;

function TLabel.GetKeepParents: Boolean;
begin
  Result := FKeepParents;
end;

procedure TLabel.SetKeepParents(const Value: Boolean);
begin
  FKeepParents := Value;
end;

function TLabel.IsSetParents: Boolean;
begin
  Result := (FParents <> nil) and (FParents.Count > 0);
end;

end.
