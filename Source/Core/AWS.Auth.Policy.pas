unit AWS.Auth.Policy;

interface

uses
  System.Generics.Collections, System.SysUtils, System.Classes, System.TypInfo,
  AWS.Auth.Statement,
  AWS.Auth.Resource,
  AWS.Auth.Condition,
  AWS.Auth.Principal,
  AWS.Auth.ActionIdentifier;

type
  TPolicy = class
  strict private const
    DEFAULT_POLICY_VERSION = '2012-10-17';
  strict private
    FId: string;
    FVersion: string;
    FStatements: TList<TStatement>;
    class function StatementContainsResources(Statement: TStatement;
      Resources: TList<TResource>): Boolean; static;
    class function StatementContainsActions(Statement: TStatement;
      Actions: TList<TActionIdentifier>): Boolean; static;
    class function StatementContainsConditions(Statement: TStatement;
      Conditions: TList<TCondition>): Boolean; static;
    class function StatementContainsPrincipals(Statement: TStatement;
      Principals: TList<TPrincipal>): Boolean; static;
  public
    constructor Create; overload;
    constructor Create(const AId: string); overload;
    destructor Destroy; override;
    function WithId(const AId: string): TPolicy;
    function CheckIfStatementExists(Statement: TStatement): Boolean;
    function ToJson: string; overload;
    function ToJson(PrettyPrint: Boolean): string; overload;
    property Id: string read FId write FId;
    property Version: string read FVersion write FVersion;
    property Statements: TList<TStatement> read FStatements;
  public
    class function FromJson(const Json: string): TPolicy;
  end;

implementation

uses
  Bcl.Json.Classes,
  Bcl.Json,
  AWS.Json.Writer;

type
  TJsonDocumentFields = class
  public const
    VERSION = 'Version';
    POLICY_ID = 'Id';
    STATEMENT = 'Statement';
    STATEMENT_EFFECT = 'Effect';
    EFFECT_VALUE_ALLOW = 'Allow';
    STATEMENT_ID = 'Sid';
    PRINCIPAL = 'Principal';
    ACTION = 'Action';
    RESOURCE = 'Resource';
    CONDITION = 'Condition';
  end;

  TJsonPolicyReader = class
  strict private
    class function ConvertStatement(StatementElement: TJElement): TStatement;
    class procedure ConvertActions(Statement: TStatement; JStatement: TJObject);
    class procedure ConvertResources(Statement: TStatement; JStatement: TJObject);
    class procedure ConvertConditions(Statement: TStatement; JStatement: TJObject);
    class procedure ConvertPrincipals(Statement: TStatement; JStatement: TJObject);
    class procedure ConvertConditionRecord(Statement: TStatement; JCondition: TJObject);
    class procedure ConvertPrincipalRecord(Statement: TStatement; JPrincipal: TJObject);
  public
    class function ReadJsonStringToPolicy(const JsonString: string): TPolicy; static;
  end;

  TJsonPolicyWriter = class
  strict private
    class procedure WritePolicy(Policy: TPolicy; Generator: TJsonWriter); static;
    class procedure WritePropertyValue(Generator: TJsonWriter; const PropertyName, Value: string); static;
    class procedure WritePrincipals(Statement: TStatement; Generator: TJsonWriter); static;
    class procedure WriteActions(Statement: TStatement; Generator: TJsonWriter); static;
    class procedure WriteResources(Statement: TStatement; Generator: TJsonWriter); static;
    class procedure WriteConditions(Statement: TStatement; Generator: TJsonWriter); static;
    class procedure SortConditionsByTypeAndKey(
      ConditionsByTypeAndKeys: TDictionary<string, TObjectDictionary<string, TList<string>>>;
      Conditions: TList<TCondition>); static;
  public
    class function WritePolicyToString(PrettyPrint: Boolean; Policy: TPolicy): string; static;
  end;

{ TJsonPolicyReader }

class procedure TJsonPolicyReader.ConvertActions(Statement: TStatement; JStatement: TJObject);
var
  JActions: TJElement;
  JActionValue: TJElement;
begin
  JActions := JStatement[TJsonDocumentFields.ACTION];
  if JActions = nil then
    Exit;

  if JActions.IsString then
    Statement.Actions.Add(TActionIdentifier.Create(JActions.AsString))
  else
  if JActions.IsArray then
  begin
    for JActionValue in JActions.AsArray do
      if JActionValue.IsString then
        Statement.Actions.Add(TActionIdentifier.Create(JActionValue.AsString));
  end;
end;

class procedure TJsonPolicyReader.ConvertConditionRecord(Statement: TStatement; JCondition: TJObject);
var
  Condition: TCondition;
  Kvp1: TJMember;
  Kvp2: TJMember;
  JType: string;
  JValue: TJElement;
  Comparisons: TJElement;
begin
  for Kvp1 in JCondition do
  begin
    JType := Kvp1.Name;
    Comparisons := Kvp1.Value;
    if Comparisons.IsObject then
      for Kvp2 in Comparisons.AsObject do
      begin
        Condition := TCondition.Create;
        Statement.Conditions.Add(Condition);
        Condition.ConditionType := JType;
        Condition.ConditionKey := Kvp2.Name;
        if Kvp2.Value.IsString then
          Condition.Values.Add(Kvp2.Value.AsString)
        else
        if Kvp2.Value.IsArray then
          for JValue in Kvp2.Value.AsArray do
            if JValue.IsString then
              Condition.Values.Add(JValue.AsString);
      end;
  end;
end;

class procedure TJsonPolicyReader.ConvertConditions(Statement: TStatement; JStatement: TJObject);
var
  JConditions: TJElement;
  JConditionValue: TJElement;
begin
  JConditions := JStatement[TJsonDocumentFields.CONDITION];
  if JConditions = nil then
    Exit;

  if JConditions.IsObject then
    ConvertConditionRecord(Statement, JConditions.AsObject)
  else
  if JConditions.IsArray then
  begin
    for JConditionValue in JConditions.AsArray do
      if JConditionValue.IsObject then
        ConvertConditionRecord(Statement, JConditionValue.AsObject);
  end;
end;

class procedure TJsonPolicyReader.ConvertPrincipalRecord(Statement: TStatement; JPrincipal: TJObject);
var
  Kvp: TJMember;
  Tok: TJElement;
begin
  for Kvp in JPrincipal do
  begin
    if Kvp.Value.IsArray then
    begin
      for Tok in Kvp.Value.AsArray do
        if Tok.IsString then
          // Don't strip '-' and assume the policy being deserialized is already valid.
          Statement.Principals.Add(TPrincipal.Create(Kvp.Name, Tok.AsString, False));
    end
    else
    if Kvp.Value.IsString then
    begin
      // Don't strip '-' and assume the policy being deserialized is already valid.
      Statement.Principals.Add(TPrincipal.Create(Kvp.Name, Kvp.Value.AsString, False));
    end;
  end;
end;

class procedure TJsonPolicyReader.ConvertPrincipals(Statement: TStatement; JStatement: TJObject);
var
  JPrincipals: TJElement;
  JPrincipalValue: TJElement;
begin
  JPrincipals := JStatement[TJsonDocumentFields.PRINCIPAL];
  if JPrincipals = nil then
    Exit;

  if JPrincipals.IsObject then
    ConvertPrincipalRecord(Statement, JPrincipals.AsObject)
  else
  if JPrincipals.IsArray then
  begin
    for JPrincipalValue in JPrincipals.AsArray do
      if JPrincipalValue.IsObject then
        ConvertPrincipalRecord(Statement, JPrincipalValue.AsObject);
  end
  else
  if JPrincipals.IsString and (JPrincipals.AsString = '*') then
    Statement.Principals.Add(TPrincipal.Create(TPrincipal.ANONYMOUS_PROVIDER, '*'));
end;

class procedure TJsonPolicyReader.ConvertResources(Statement: TStatement; JStatement: TJObject);
var
  JResources: TJElement;
  JResourceValue: TJElement;
begin
  JResources := JStatement[TJsonDocumentFields.RESOURCE];
  if JResources = nil then
    Exit;

  if JResources.IsString then
    Statement.Resources.Add(TResource.Create(JResources.AsString))
  else
  if JResources.IsArray then
  begin
    for JResourceValue in JResources.AsArray do
      if JResourceValue.IsString then
        Statement.Resources.Add(TResource.Create(JResourceValue.AsString));
  end;
end;

class function TJsonPolicyReader.ConvertStatement(StatementElement: TJElement): TStatement;
var
  JStatement: TJObject;
  JEffect: string;
  Statement: TStatement;
begin
  if not StatementElement.IsObject then Exit(nil);
  JStatement := StatementElement.AsObject;

  if (JStatement[TJsonDocumentFields.STATEMENT_EFFECT] = nil)
    or not JStatement[TJsonDocumentFields.STATEMENT_EFFECT].IsString then
      Exit(nil);


  JEffect := JStatement[TJsonDocumentFields.STATEMENT_EFFECT].AsString;
  if JEffect = TJsonDocumentFields.EFFECT_VALUE_ALLOW then
    Statement := TStatement.Create(TStatementEffect.Allow)
  else
    Statement := TStatement.Create(TStatementEffect.Deny);

  try
    if (JStatement[TJsonDocumentFields.STATEMENT_ID] <> nil)
      and (JStatement[TJsonDocumentFields.STATEMENT_ID].IsString) then
        Statement.Id := JStatement[TJsonDocumentFields.STATEMENT_ID].AsString;

    ConvertActions(Statement, JStatement);
    ConvertResources(Statement, JStatement);
    ConvertConditions(Statement, JStatement);
    ConvertPrincipals(Statement, JStatement);

    Result := Statement;
    Statement := nil;
  finally
    Statement.Free;
  end;
end;

class function TJsonPolicyReader.ReadJsonStringToPolicy(const JsonString: string): TPolicy;
var
  Policy: TPolicy;
  JPolicy: TJObject;
  Statement: TStatement;
  JStatement: TJElement;
begin
  Policy := TPolicy.Create;
  try
    JPolicy := TJson.Deserialize<TJObject>(JsonString);
    try
      if (JPolicy[TJsonDocumentFields.POLICY_ID] <> nil) and (JPolicy[TJsonDocumentFields.POLICY_ID].IsString) then
        Policy.Id := JPolicy[TJsonDocumentFields.POLICY_ID].AsString;

      if (JPolicy[TJsonDocumentFields.STATEMENT] <> nil) and (JPolicy[TJsonDocumentFields.STATEMENT].IsArray) then
        for JStatement in JPolicy[TJsonDocumentFields.STATEMENT].AsArray do
        begin
          Statement := ConvertStatement(JStatement);
          if Statement <> nil then
            Policy.Statements.Add(Statement);
        end;
    finally
      JPolicy.Free;
    end;
    Result := Policy;
    Policy := nil;
  finally
    Policy.Free;
  end;
end;

{ TJsonPolicyWriter }

class procedure TJsonPolicyWriter.SortConditionsByTypeAndKey(
  ConditionsByTypeAndKeys: TDictionary<string, TObjectDictionary<string, TList<string>>>;
  Conditions: TList<TCondition>);
var
  Condition: TCondition;
  ConditionType: string;
  ConditionKey: string;
  Keys: TObjectDictionary<string, TList<string>>;
  Values: TList<string>;
  Value: string;
begin
  for Condition in Conditions do
  begin
    ConditionType := Condition.ConditionType;
    ConditionKey := Condition.ConditionKey;

    if not ConditionsByTypeAndKeys.TryGetValue(ConditionType, Keys) then
    begin
      Keys := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
      ConditionsByTypeAndKeys.Add(ConditionType, Keys);
    end;

    if not Keys.TryGetValue(ConditionKey, Values) then
    begin
      Values := TList<string>.Create;
      Keys.Add(ConditionKey, Values);
    end;

    for Value in Condition.Values do
      Values.Add(Value);
  end;
end;

class procedure TJsonPolicyWriter.WriteActions(Statement: TStatement; Generator: TJsonWriter);
var
  Actions: TList<TActionIdentifier>;
  Action: TActionIdentifier;
begin
  Actions := Statement.Actions;
  if Actions.Count = 0 then
    Exit;

  Generator.WriteName(TJsonDocumentFields.ACTION);
  if Actions.Count > 1 then
    Generator.WriteBeginArray;

  for Action in Actions do
    Generator.WriteString(Action.ActionName);

  if Actions.Count > 1 then
    Generator.WriteEndArray;
end;

class procedure TJsonPolicyWriter.WriteConditions(Statement: TStatement; Generator: TJsonWriter);
var
  Conditions: TList<TCondition>;
  ConditionsByTypeAndKeys: TDictionary<string, TObjectDictionary<string, TList<string>>>;
  TypeEntry: TPair<string, TObjectDictionary<string, TList<string>>>;
  KeyEntry: TPair<string, TList<string>>;
  ConditionValues: TList<string>;
  ConditionValue: string;
begin
  Conditions := Statement.Conditions;
  if Conditions.Count = 0 then
    Exit;

  // The condition values must be grouped by all the unique condition types and keys because
  // the values are written out as an array per type and key.
  ConditionsByTypeAndKeys := TObjectDictionary<string, TObjectDictionary<string, TList<string>>>.Create([doOwnsValues]);
  try
    SortConditionsByTypeAndKey(ConditionsByTypeAndKeys, Conditions);
    Generator.WriteName(TJsonDocumentFields.CONDITION);
    Generator.WriteBeginObject;
    for TypeEntry in ConditionsByTypeAndKeys do
    begin
      Generator.WriteName(TypeEntry.Key);
      Generator.WriteBeginObject;
      for KeyEntry in TypeEntry.Value do
      begin
        ConditionValues := KeyEntry.Value;
        if ConditionValues.Count = 0 then
          Continue;

        Generator.WriteName(KeyEntry.Key);
        if ConditionValues.Count > 1 then
          Generator.WriteBeginArray;

        for ConditionValue in ConditionValues do
          Generator.WriteString(ConditionValue);

        if ConditionValues.Count > 1 then
          Generator.WriteEndArray;
      end;
      Generator.WriteEndObject;
    end;
  finally
    ConditionsByTypeAndKeys.Free;
  end;
  Generator.WriteEndObject;
end;

class procedure TJsonPolicyWriter.WritePolicy(Policy: TPolicy; Generator: TJsonWriter);
var
  Statement: TStatement;
begin
  Generator.WriteBeginObject;

  WritePropertyValue(Generator, TJsonDocumentFields.VERSION, Policy.Version);

  if Policy.Id <> '' then
    WritePropertyValue(Generator, TJsonDocumentFields.POLICY_ID, Policy.Id);

  Generator.WriteName(TJsonDocumentFields.STATEMENT);
  Generator.WriteBeginArray;
  for Statement in Policy.Statements do
  begin
    Generator.WriteBeginObject;
    if Statement.Id <> '' then
      WritePropertyValue(Generator, TJsonDocumentFields.STATEMENT_ID, Statement.Id);
    WritePropertyValue(Generator, TJsonDocumentFields.STATEMENT_EFFECT,
      GetEnumName(TypeInfo(TStatementEffect), Ord(Statement.Effect)));

    WritePrincipals(Statement, Generator);
    WriteActions(Statement, Generator);
    WriteResources(Statement, Generator);
    WriteConditions(Statement, Generator);

    Generator.WriteEndObject;
  end;
  Generator.WriteEndArray;
  Generator.WriteEndObject;
end;

class function TJsonPolicyWriter.WritePolicyToString(PrettyPrint: Boolean; Policy: TPolicy): string;
var
  Stream: TStringStream;
  Generator: TJsonWriter;
begin
  if Policy = nil then
    raise EArgumentNilException.Create('Policy argument cannot be nil');
  try
    Stream := TStringStream.Create('', TEncoding.UTF8, False);
    try
      Generator := TJsonWriter.Create(Stream);
      try
        if PrettyPrint then
          Generator.IndentLength := 4;

        WritePolicy(Policy, Generator);
        Generator.Flush;
        Result := Stream.DataString;
      finally
        Generator.Free;
      end;
    finally
      Stream.Free;
    end;
  except
    on E: Exception do
      raise EArgumentException.Create('Unable to serialize policy to JSON string: ' + e.Message);
  end;
end;

class procedure TJsonPolicyWriter.WritePrincipals(Statement: TStatement; Generator: TJsonWriter);
var
  Principals: TList<TPrincipal>;
  P: TPrincipal;
  PrincipalIdsByScheme: TDictionary<string, TList<string>>;
  PrincipalIds: TList<string>;
  PrincipalId: string;
  Scheme: string;
begin
  Principals := Statement.Principals;
  if Principals.Count = 0 then Exit;

  Generator.WriteName(TJsonDocumentFields.PRINCIPAL);

  if (Principals.Count = 1) and (principals[0] <> nil) and
    (Principals[0].Provider = TPrincipal.ANONYMOUS_PROVIDER) then
  begin
    Generator.WriteString('*');
    Exit;
  end;

  Generator.WriteBeginObject;
  PrincipalIdsByScheme := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  try
    for P in Principals do
    begin
      if not PrincipalIdsByScheme.TryGetValue(P.Provider, PrincipalIds) then
      begin
        PrincipalIds := TList<string>.Create;
        PrincipalIdsByScheme.Add(P.Provider, PrincipalIds);
      end;
      PrincipalIds.Add(P.Id);
    end;
    for Scheme in PrincipalIdsByScheme.Keys do
    begin
      Generator.WriteName(Scheme);

      if PrincipalIdsByScheme[Scheme].Count > 1 then
        Generator.WriteBeginArray;
      for PrincipalId in PrincipalIdsByScheme[scheme] do
        Generator.WriteString(PrincipalId);
      if PrincipalIdsByScheme[scheme].Count > 1 then
        Generator.WriteEndArray;
    end;
  finally
    PrincipalIdsByScheme.Free;
  end;
  Generator.WriteEndObject;
end;

class procedure TJsonPolicyWriter.WritePropertyValue(Generator: TJsonWriter; const PropertyName, Value: string);
begin
  Generator.WriteName(PropertyName);
  Generator.WriteString(Value);
end;

class procedure TJsonPolicyWriter.WriteResources(Statement: TStatement; Generator: TJsonWriter);
var
  Resources: TList<TResource>;
  Resource: TResource;
begin
  Resources := Statement.Resources;
  if Resources.Count = 0 then
    Exit;

  Generator.WriteName(TJsonDocumentFields.RESOURCE);
  if Resources.Count > 1 then
    Generator.WriteBeginArray;

  for Resource in Resources do
    Generator.WriteString(Resource.Id);

  if Resources.Count > 1 then
    Generator.WriteEndArray;
end;

{ TPolicy }

constructor TPolicy.Create;
begin
  inherited Create;
  FVersion := DEFAULT_POLICY_VERSION;
  FStatements := TObjectList<TStatement>.Create;
end;

function TPolicy.CheckIfStatementExists(Statement: TStatement): Boolean;
var
  ExistingStatement: TStatement;
begin
  for ExistingStatement in Statements do
  begin
    if ExistingStatement.Effect <> statement.Effect then
      Continue;
    if not StatementContainsResources(ExistingStatement, Statement.Resources) then
      Continue;
    if not StatementContainsActions(ExistingStatement, Statement.Actions) then
      Continue;
    if not StatementContainsConditions(ExistingStatement, Statement.Conditions) then
      Continue;
    if not StatementContainsPrincipals(ExistingStatement, Statement.Principals) then
      Continue;

    Exit(True);
  end;
  Result := False;
end;

constructor TPolicy.Create(const AId: string);
begin
  Create;
  FId := AId;
end;

destructor TPolicy.Destroy;
begin
  FStatements.Free;
  inherited;
end;

class function TPolicy.FromJson(const Json: string): TPolicy;
begin
  Result := TJsonPolicyReader.ReadJsonStringToPolicy(Json);
end;

class function TPolicy.StatementContainsActions(Statement: TStatement; Actions: TList<TActionIdentifier>): Boolean;
var
  Action: TActionIdentifier;
  StatementAction: TActionIdentifier;
  Found: Boolean;
begin
  for Action in Actions do
  begin
    Found := False;
    for StatementAction in Statement.Actions do
      if StatementAction.ActionName = Action.ActionName then
      begin
        Found := True;
        Break;
      end;
    if not Found then
      Exit(False);
  end;
  Result := True;
end;

class function TPolicy.StatementContainsConditions(Statement: TStatement; Conditions: TList<TCondition>): Boolean;

  function SameCondition(Left, Right: TCondition): Boolean;
  var
    TargetValue: string;
  begin
    if Left.ConditionType <> Right.ConditionType then Exit(False);
    if Left.ConditionKey <> Right.ConditionKey then Exit(False);
    for TargetValue in Left.Values do
      if not Right.Values.Contains(TargetValue) then
        Exit(False);
    for TargetValue in Right.Values do
      if not Left.Values.Contains(TargetValue) then
        Exit(False);
    Result := True;
  end;

var
  Condition: TCondition;
  StatementCondition: TCondition;
  Found: Boolean;
begin
  for Condition in Conditions do
  begin
    Found := False;
    for StatementCondition in Statement.Conditions do
      if SameCondition(StatementCondition, Condition) then
      begin
        Found := True;
        Break;
      end;
    if not Found then
      Exit(False);
  end;
  Result := True;
end;

class function TPolicy.StatementContainsPrincipals(Statement: TStatement; Principals: TList<TPrincipal>): Boolean;

  function SamePrincipal(Left, Right: TPrincipal): Boolean;
  begin
    Result := (Left.Id = Right.Id) and (Left.Provider = Right.Provider);
  end;

var
  Principal: TPrincipal;
  StatementPrincipal: TPrincipal;
  Found: Boolean;
begin
  for Principal in Principals do
  begin
    Found := False;
    for StatementPrincipal in Statement.Principals do
      if SamePrincipal(StatementPrincipal, Principal) then
      begin
        Found := True;
        Break;
      end;
    if not Found then
      Exit(False);
  end;
  Result := True;
end;

class function TPolicy.StatementContainsResources(Statement: TStatement; Resources: TList<TResource>): Boolean;
var
  Resource: TResource;
  StatementResource: TResource;
  Found: Boolean;
begin
  for Resource in Resources do
  begin
    Found := False;
    for StatementResource in Statement.Resources do
      if StatementResource.Id = Resource.Id then
      begin
        Found := True;
        Break;
      end;
    if not Found then
      Exit(False);
  end;
  Result := True;
end;

function TPolicy.ToJson(PrettyPrint: Boolean): string;
begin
  Result := TJsonPolicyWriter.WritePolicyToString(PrettyPrint, Self);
end;

function TPolicy.ToJson: string;
begin
  Result := ToJson(True);
end;

function TPolicy.WithId(const AId: string): TPolicy;
begin
  Id := AId;
  Result := Self;
end;

end.
