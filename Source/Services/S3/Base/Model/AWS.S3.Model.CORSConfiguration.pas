unit AWS.S3.Model.CORSConfiguration;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.CORSRule;

type
  TCORSConfiguration = class;
  
  ICORSConfiguration = interface
    function GetCORSRules: TObjectList<TCORSRule>;
    procedure SetCORSRules(const Value: TObjectList<TCORSRule>);
    function GetKeepCORSRules: Boolean;
    procedure SetKeepCORSRules(const Value: Boolean);
    function Obj: TCORSConfiguration;
    function IsSetCORSRules: Boolean;
    property CORSRules: TObjectList<TCORSRule> read GetCORSRules write SetCORSRules;
    property KeepCORSRules: Boolean read GetKeepCORSRules write SetKeepCORSRules;
  end;
  
  TCORSConfiguration = class
  strict private
    FCORSRules: TObjectList<TCORSRule>;
    FKeepCORSRules: Boolean;
    function GetCORSRules: TObjectList<TCORSRule>;
    procedure SetCORSRules(const Value: TObjectList<TCORSRule>);
    function GetKeepCORSRules: Boolean;
    procedure SetKeepCORSRules(const Value: Boolean);
  strict protected
    function Obj: TCORSConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCORSRules: Boolean;
    property CORSRules: TObjectList<TCORSRule> read GetCORSRules write SetCORSRules;
    property KeepCORSRules: Boolean read GetKeepCORSRules write SetKeepCORSRules;
  end;
  
implementation

{ TCORSConfiguration }

constructor TCORSConfiguration.Create;
begin
  inherited;
  FCORSRules := TObjectList<TCORSRule>.Create;
end;

destructor TCORSConfiguration.Destroy;
begin
  CORSRules := nil;
  inherited;
end;

function TCORSConfiguration.Obj: TCORSConfiguration;
begin
  Result := Self;
end;

function TCORSConfiguration.GetCORSRules: TObjectList<TCORSRule>;
begin
  Result := FCORSRules;
end;

procedure TCORSConfiguration.SetCORSRules(const Value: TObjectList<TCORSRule>);
begin
  if FCORSRules <> Value then
  begin
    if not KeepCORSRules then
      FCORSRules.Free;
    FCORSRules := Value;
  end;
end;

function TCORSConfiguration.GetKeepCORSRules: Boolean;
begin
  Result := FKeepCORSRules;
end;

procedure TCORSConfiguration.SetKeepCORSRules(const Value: Boolean);
begin
  FKeepCORSRules := Value;
end;

function TCORSConfiguration.IsSetCORSRules: Boolean;
begin
  Result := (FCORSRules <> nil) and (FCORSRules.Count > 0);
end;

end.
