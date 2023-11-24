unit AWS.S3.Model.GetCORSConfigurationResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CORSRule;

type
  TGetCORSConfigurationResponse = class;
  
  IGetCORSConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetCORSRules: TObjectList<TCORSRule>;
    procedure SetCORSRules(const Value: TObjectList<TCORSRule>);
    function GetKeepCORSRules: Boolean;
    procedure SetKeepCORSRules(const Value: Boolean);
    function Obj: TGetCORSConfigurationResponse;
    function IsSetCORSRules: Boolean;
    property CORSRules: TObjectList<TCORSRule> read GetCORSRules write SetCORSRules;
    property KeepCORSRules: Boolean read GetKeepCORSRules write SetKeepCORSRules;
  end;
  
  TGetCORSConfigurationResponse = class(TAmazonWebServiceResponse, IGetCORSConfigurationResponse)
  strict private
    FCORSRules: TObjectList<TCORSRule>;
    FKeepCORSRules: Boolean;
    function GetCORSRules: TObjectList<TCORSRule>;
    procedure SetCORSRules(const Value: TObjectList<TCORSRule>);
    function GetKeepCORSRules: Boolean;
    procedure SetKeepCORSRules(const Value: Boolean);
  strict protected
    function Obj: TGetCORSConfigurationResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCORSRules: Boolean;
    property CORSRules: TObjectList<TCORSRule> read GetCORSRules write SetCORSRules;
    property KeepCORSRules: Boolean read GetKeepCORSRules write SetKeepCORSRules;
  end;
  
implementation

{ TGetCORSConfigurationResponse }

constructor TGetCORSConfigurationResponse.Create;
begin
  inherited;
  FCORSRules := TObjectList<TCORSRule>.Create;
end;

destructor TGetCORSConfigurationResponse.Destroy;
begin
  CORSRules := nil;
  inherited;
end;

function TGetCORSConfigurationResponse.Obj: TGetCORSConfigurationResponse;
begin
  Result := Self;
end;

function TGetCORSConfigurationResponse.GetCORSRules: TObjectList<TCORSRule>;
begin
  Result := FCORSRules;
end;

procedure TGetCORSConfigurationResponse.SetCORSRules(const Value: TObjectList<TCORSRule>);
begin
  if FCORSRules <> Value then
  begin
    if not KeepCORSRules then
      FCORSRules.Free;
    FCORSRules := Value;
  end;
end;

function TGetCORSConfigurationResponse.GetKeepCORSRules: Boolean;
begin
  Result := FKeepCORSRules;
end;

procedure TGetCORSConfigurationResponse.SetKeepCORSRules(const Value: Boolean);
begin
  FKeepCORSRules := Value;
end;

function TGetCORSConfigurationResponse.IsSetCORSRules: Boolean;
begin
  Result := (FCORSRules <> nil) and (FCORSRules.Count > 0);
end;

end.
