unit AWS.SESv2.Model.DkimAttributes;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Enums;

type
  TDkimAttributes = class;
  
  IDkimAttributes = interface
    function GetCurrentSigningKeyLength: TDkimSigningKeyLength;
    procedure SetCurrentSigningKeyLength(const Value: TDkimSigningKeyLength);
    function GetLastKeyGenerationTimestamp: TDateTime;
    procedure SetLastKeyGenerationTimestamp(const Value: TDateTime);
    function GetNextSigningKeyLength: TDkimSigningKeyLength;
    procedure SetNextSigningKeyLength(const Value: TDkimSigningKeyLength);
    function GetSigningAttributesOrigin: TDkimSigningAttributesOrigin;
    procedure SetSigningAttributesOrigin(const Value: TDkimSigningAttributesOrigin);
    function GetSigningEnabled: Boolean;
    procedure SetSigningEnabled(const Value: Boolean);
    function GetStatus: TDkimStatus;
    procedure SetStatus(const Value: TDkimStatus);
    function GetTokens: TList<string>;
    procedure SetTokens(const Value: TList<string>);
    function GetKeepTokens: Boolean;
    procedure SetKeepTokens(const Value: Boolean);
    function Obj: TDkimAttributes;
    function IsSetCurrentSigningKeyLength: Boolean;
    function IsSetLastKeyGenerationTimestamp: Boolean;
    function IsSetNextSigningKeyLength: Boolean;
    function IsSetSigningAttributesOrigin: Boolean;
    function IsSetSigningEnabled: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTokens: Boolean;
    property CurrentSigningKeyLength: TDkimSigningKeyLength read GetCurrentSigningKeyLength write SetCurrentSigningKeyLength;
    property LastKeyGenerationTimestamp: TDateTime read GetLastKeyGenerationTimestamp write SetLastKeyGenerationTimestamp;
    property NextSigningKeyLength: TDkimSigningKeyLength read GetNextSigningKeyLength write SetNextSigningKeyLength;
    property SigningAttributesOrigin: TDkimSigningAttributesOrigin read GetSigningAttributesOrigin write SetSigningAttributesOrigin;
    property SigningEnabled: Boolean read GetSigningEnabled write SetSigningEnabled;
    property Status: TDkimStatus read GetStatus write SetStatus;
    property Tokens: TList<string> read GetTokens write SetTokens;
    property KeepTokens: Boolean read GetKeepTokens write SetKeepTokens;
  end;
  
  TDkimAttributes = class
  strict private
    FCurrentSigningKeyLength: Nullable<TDkimSigningKeyLength>;
    FLastKeyGenerationTimestamp: Nullable<TDateTime>;
    FNextSigningKeyLength: Nullable<TDkimSigningKeyLength>;
    FSigningAttributesOrigin: Nullable<TDkimSigningAttributesOrigin>;
    FSigningEnabled: Nullable<Boolean>;
    FStatus: Nullable<TDkimStatus>;
    FTokens: TList<string>;
    FKeepTokens: Boolean;
    function GetCurrentSigningKeyLength: TDkimSigningKeyLength;
    procedure SetCurrentSigningKeyLength(const Value: TDkimSigningKeyLength);
    function GetLastKeyGenerationTimestamp: TDateTime;
    procedure SetLastKeyGenerationTimestamp(const Value: TDateTime);
    function GetNextSigningKeyLength: TDkimSigningKeyLength;
    procedure SetNextSigningKeyLength(const Value: TDkimSigningKeyLength);
    function GetSigningAttributesOrigin: TDkimSigningAttributesOrigin;
    procedure SetSigningAttributesOrigin(const Value: TDkimSigningAttributesOrigin);
    function GetSigningEnabled: Boolean;
    procedure SetSigningEnabled(const Value: Boolean);
    function GetStatus: TDkimStatus;
    procedure SetStatus(const Value: TDkimStatus);
    function GetTokens: TList<string>;
    procedure SetTokens(const Value: TList<string>);
    function GetKeepTokens: Boolean;
    procedure SetKeepTokens(const Value: Boolean);
  strict protected
    function Obj: TDkimAttributes;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCurrentSigningKeyLength: Boolean;
    function IsSetLastKeyGenerationTimestamp: Boolean;
    function IsSetNextSigningKeyLength: Boolean;
    function IsSetSigningAttributesOrigin: Boolean;
    function IsSetSigningEnabled: Boolean;
    function IsSetStatus: Boolean;
    function IsSetTokens: Boolean;
    property CurrentSigningKeyLength: TDkimSigningKeyLength read GetCurrentSigningKeyLength write SetCurrentSigningKeyLength;
    property LastKeyGenerationTimestamp: TDateTime read GetLastKeyGenerationTimestamp write SetLastKeyGenerationTimestamp;
    property NextSigningKeyLength: TDkimSigningKeyLength read GetNextSigningKeyLength write SetNextSigningKeyLength;
    property SigningAttributesOrigin: TDkimSigningAttributesOrigin read GetSigningAttributesOrigin write SetSigningAttributesOrigin;
    property SigningEnabled: Boolean read GetSigningEnabled write SetSigningEnabled;
    property Status: TDkimStatus read GetStatus write SetStatus;
    property Tokens: TList<string> read GetTokens write SetTokens;
    property KeepTokens: Boolean read GetKeepTokens write SetKeepTokens;
  end;
  
implementation

{ TDkimAttributes }

constructor TDkimAttributes.Create;
begin
  inherited;
  FTokens := TList<string>.Create;
end;

destructor TDkimAttributes.Destroy;
begin
  Tokens := nil;
  inherited;
end;

function TDkimAttributes.Obj: TDkimAttributes;
begin
  Result := Self;
end;

function TDkimAttributes.GetCurrentSigningKeyLength: TDkimSigningKeyLength;
begin
  Result := FCurrentSigningKeyLength.ValueOrDefault;
end;

procedure TDkimAttributes.SetCurrentSigningKeyLength(const Value: TDkimSigningKeyLength);
begin
  FCurrentSigningKeyLength := Value;
end;

function TDkimAttributes.IsSetCurrentSigningKeyLength: Boolean;
begin
  Result := FCurrentSigningKeyLength.HasValue;
end;

function TDkimAttributes.GetLastKeyGenerationTimestamp: TDateTime;
begin
  Result := FLastKeyGenerationTimestamp.ValueOrDefault;
end;

procedure TDkimAttributes.SetLastKeyGenerationTimestamp(const Value: TDateTime);
begin
  FLastKeyGenerationTimestamp := Value;
end;

function TDkimAttributes.IsSetLastKeyGenerationTimestamp: Boolean;
begin
  Result := FLastKeyGenerationTimestamp.HasValue;
end;

function TDkimAttributes.GetNextSigningKeyLength: TDkimSigningKeyLength;
begin
  Result := FNextSigningKeyLength.ValueOrDefault;
end;

procedure TDkimAttributes.SetNextSigningKeyLength(const Value: TDkimSigningKeyLength);
begin
  FNextSigningKeyLength := Value;
end;

function TDkimAttributes.IsSetNextSigningKeyLength: Boolean;
begin
  Result := FNextSigningKeyLength.HasValue;
end;

function TDkimAttributes.GetSigningAttributesOrigin: TDkimSigningAttributesOrigin;
begin
  Result := FSigningAttributesOrigin.ValueOrDefault;
end;

procedure TDkimAttributes.SetSigningAttributesOrigin(const Value: TDkimSigningAttributesOrigin);
begin
  FSigningAttributesOrigin := Value;
end;

function TDkimAttributes.IsSetSigningAttributesOrigin: Boolean;
begin
  Result := FSigningAttributesOrigin.HasValue;
end;

function TDkimAttributes.GetSigningEnabled: Boolean;
begin
  Result := FSigningEnabled.ValueOrDefault;
end;

procedure TDkimAttributes.SetSigningEnabled(const Value: Boolean);
begin
  FSigningEnabled := Value;
end;

function TDkimAttributes.IsSetSigningEnabled: Boolean;
begin
  Result := FSigningEnabled.HasValue;
end;

function TDkimAttributes.GetStatus: TDkimStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDkimAttributes.SetStatus(const Value: TDkimStatus);
begin
  FStatus := Value;
end;

function TDkimAttributes.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TDkimAttributes.GetTokens: TList<string>;
begin
  Result := FTokens;
end;

procedure TDkimAttributes.SetTokens(const Value: TList<string>);
begin
  if FTokens <> Value then
  begin
    if not KeepTokens then
      FTokens.Free;
    FTokens := Value;
  end;
end;

function TDkimAttributes.GetKeepTokens: Boolean;
begin
  Result := FKeepTokens;
end;

procedure TDkimAttributes.SetKeepTokens(const Value: Boolean);
begin
  FKeepTokens := Value;
end;

function TDkimAttributes.IsSetTokens: Boolean;
begin
  Result := (FTokens <> nil) and (FTokens.Count > 0);
end;

end.
