unit AWS.S3.Model.GetLifecycleConfigurationResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.LifecycleRule;

type
  TGetLifecycleConfigurationResponse = class;
  
  IGetLifecycleConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetRules: TObjectList<TLifecycleRule>;
    procedure SetRules(const Value: TObjectList<TLifecycleRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TGetLifecycleConfigurationResponse;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TLifecycleRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TGetLifecycleConfigurationResponse = class(TAmazonWebServiceResponse, IGetLifecycleConfigurationResponse)
  strict private
    FRules: TObjectList<TLifecycleRule>;
    FKeepRules: Boolean;
    function GetRules: TObjectList<TLifecycleRule>;
    procedure SetRules(const Value: TObjectList<TLifecycleRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TGetLifecycleConfigurationResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TLifecycleRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TGetLifecycleConfigurationResponse }

constructor TGetLifecycleConfigurationResponse.Create;
begin
  inherited;
  FRules := TObjectList<TLifecycleRule>.Create;
end;

destructor TGetLifecycleConfigurationResponse.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TGetLifecycleConfigurationResponse.Obj: TGetLifecycleConfigurationResponse;
begin
  Result := Self;
end;

function TGetLifecycleConfigurationResponse.GetRules: TObjectList<TLifecycleRule>;
begin
  Result := FRules;
end;

procedure TGetLifecycleConfigurationResponse.SetRules(const Value: TObjectList<TLifecycleRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TGetLifecycleConfigurationResponse.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TGetLifecycleConfigurationResponse.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TGetLifecycleConfigurationResponse.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
