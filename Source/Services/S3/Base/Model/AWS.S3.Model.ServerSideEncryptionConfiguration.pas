unit AWS.S3.Model.ServerSideEncryptionConfiguration;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.ServerSideEncryptionRule;

type
  TServerSideEncryptionConfiguration = class;
  
  IServerSideEncryptionConfiguration = interface
    function GetRules: TObjectList<TServerSideEncryptionRule>;
    procedure SetRules(const Value: TObjectList<TServerSideEncryptionRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TServerSideEncryptionConfiguration;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TServerSideEncryptionRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TServerSideEncryptionConfiguration = class
  strict private
    FRules: TObjectList<TServerSideEncryptionRule>;
    FKeepRules: Boolean;
    function GetRules: TObjectList<TServerSideEncryptionRule>;
    procedure SetRules(const Value: TObjectList<TServerSideEncryptionRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TServerSideEncryptionConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TServerSideEncryptionRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TServerSideEncryptionConfiguration }

constructor TServerSideEncryptionConfiguration.Create;
begin
  inherited;
  FRules := TObjectList<TServerSideEncryptionRule>.Create;
end;

destructor TServerSideEncryptionConfiguration.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TServerSideEncryptionConfiguration.Obj: TServerSideEncryptionConfiguration;
begin
  Result := Self;
end;

function TServerSideEncryptionConfiguration.GetRules: TObjectList<TServerSideEncryptionRule>;
begin
  Result := FRules;
end;

procedure TServerSideEncryptionConfiguration.SetRules(const Value: TObjectList<TServerSideEncryptionRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TServerSideEncryptionConfiguration.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TServerSideEncryptionConfiguration.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TServerSideEncryptionConfiguration.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
