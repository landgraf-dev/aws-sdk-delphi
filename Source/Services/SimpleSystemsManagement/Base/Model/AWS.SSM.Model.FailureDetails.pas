unit AWS.SSM.Model.FailureDetails;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TFailureDetails = class;
  
  IFailureDetails = interface
    function GetDetails: TObjectDictionary<string, TList<string>>;
    procedure SetDetails(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function GetFailureStage: string;
    procedure SetFailureStage(const Value: string);
    function GetFailureType: string;
    procedure SetFailureType(const Value: string);
    function Obj: TFailureDetails;
    function IsSetDetails: Boolean;
    function IsSetFailureStage: Boolean;
    function IsSetFailureType: Boolean;
    property Details: TObjectDictionary<string, TList<string>> read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
    property FailureStage: string read GetFailureStage write SetFailureStage;
    property FailureType: string read GetFailureType write SetFailureType;
  end;
  
  TFailureDetails = class
  strict private
    FDetails: TObjectDictionary<string, TList<string>>;
    FKeepDetails: Boolean;
    FFailureStage: Nullable<string>;
    FFailureType: Nullable<string>;
    function GetDetails: TObjectDictionary<string, TList<string>>;
    procedure SetDetails(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepDetails: Boolean;
    procedure SetKeepDetails(const Value: Boolean);
    function GetFailureStage: string;
    procedure SetFailureStage(const Value: string);
    function GetFailureType: string;
    procedure SetFailureType(const Value: string);
  strict protected
    function Obj: TFailureDetails;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDetails: Boolean;
    function IsSetFailureStage: Boolean;
    function IsSetFailureType: Boolean;
    property Details: TObjectDictionary<string, TList<string>> read GetDetails write SetDetails;
    property KeepDetails: Boolean read GetKeepDetails write SetKeepDetails;
    property FailureStage: string read GetFailureStage write SetFailureStage;
    property FailureType: string read GetFailureType write SetFailureType;
  end;
  
implementation

{ TFailureDetails }

constructor TFailureDetails.Create;
begin
  inherited;
  FDetails := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
end;

destructor TFailureDetails.Destroy;
begin
  Details := nil;
  inherited;
end;

function TFailureDetails.Obj: TFailureDetails;
begin
  Result := Self;
end;

function TFailureDetails.GetDetails: TObjectDictionary<string, TList<string>>;
begin
  Result := FDetails;
end;

procedure TFailureDetails.SetDetails(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FDetails <> Value then
  begin
    if not KeepDetails then
      FDetails.Free;
    FDetails := Value;
  end;
end;

function TFailureDetails.GetKeepDetails: Boolean;
begin
  Result := FKeepDetails;
end;

procedure TFailureDetails.SetKeepDetails(const Value: Boolean);
begin
  FKeepDetails := Value;
end;

function TFailureDetails.IsSetDetails: Boolean;
begin
  Result := (FDetails <> nil) and (FDetails.Count > 0);
end;

function TFailureDetails.GetFailureStage: string;
begin
  Result := FFailureStage.ValueOrDefault;
end;

procedure TFailureDetails.SetFailureStage(const Value: string);
begin
  FFailureStage := Value;
end;

function TFailureDetails.IsSetFailureStage: Boolean;
begin
  Result := FFailureStage.HasValue;
end;

function TFailureDetails.GetFailureType: string;
begin
  Result := FFailureType.ValueOrDefault;
end;

procedure TFailureDetails.SetFailureType(const Value: string);
begin
  FFailureType := Value;
end;

function TFailureDetails.IsSetFailureType: Boolean;
begin
  Result := FFailureType.HasValue;
end;

end.
