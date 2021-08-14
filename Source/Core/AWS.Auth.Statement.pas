unit AWS.Auth.Statement;

{$I AWS.inc}

interface

uses
  System.SysUtils, System.Generics.Collections,
  AWS.Auth.Principal,
  AWS.Auth.Resource,
  AWS.Auth.Condition,
  AWS.Auth.ActionIdentifier;

type
  TStatementEffect = (Allow, Deny);

  TStatement = class
  strict private
    FId: string;
    FEffect: TStatementEffect;
    FPrincipals: TList<TPrincipal>;
    FActions: TList<TActionIdentifier>;
    FResources: TList<TResource>;
    FConditions: TList<TCondition>;
  public
    constructor Create; overload;
    constructor Create(AEffect: TStatementEffect); overload;
    destructor Destroy; override;
    property Id: string read FId write FId;
    property Effect: TStatementEffect read FEffect write FEffect;
    property Principals: TList<TPrincipal> read FPrincipals;
    property Actions: TList<TActionIdentifier> read FActions;
    property Resources: TList<TResource> read FResources;
    property Conditions: TList<TCondition> read FConditions;
  end;

implementation

{ TStatement }

constructor TStatement.Create(AEffect: TStatementEffect);
begin
  Create;
  FEffect := AEffect;
end;

constructor TStatement.Create;
begin
  inherited Create;
  FId := Copy(GuidToString(TGuid.NewGuid), 2, 36);
  FId := LowerCase(FId);
  FId := StringReplace(FId, '-', '', [rfReplaceAll]);
  FPrincipals := TObjectList<TPrincipal>.Create;
  FActions := TObjectList<TActionIdentifier>.Create;
  FResources := TObjectList<TResource>.Create;
  FConditions := TObjectList<TCondition>.Create;
end;

destructor TStatement.Destroy;
begin
  FPrincipals.Free;
  FActions.Free;
  FResources.Free;
  FConditions.Free;
  inherited;
end;

end.
