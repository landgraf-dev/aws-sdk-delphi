unit AWS.SES.Model.IdentityDkimAttributes;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SES.Enums;

type
  TIdentityDkimAttributes = class;
  
  IIdentityDkimAttributes = interface
    function GetDkimEnabled: Boolean;
    procedure SetDkimEnabled(const Value: Boolean);
    function GetDkimTokens: TList<string>;
    procedure SetDkimTokens(const Value: TList<string>);
    function GetKeepDkimTokens: Boolean;
    procedure SetKeepDkimTokens(const Value: Boolean);
    function GetDkimVerificationStatus: TVerificationStatus;
    procedure SetDkimVerificationStatus(const Value: TVerificationStatus);
    function Obj: TIdentityDkimAttributes;
    function IsSetDkimEnabled: Boolean;
    function IsSetDkimTokens: Boolean;
    function IsSetDkimVerificationStatus: Boolean;
    property DkimEnabled: Boolean read GetDkimEnabled write SetDkimEnabled;
    property DkimTokens: TList<string> read GetDkimTokens write SetDkimTokens;
    property KeepDkimTokens: Boolean read GetKeepDkimTokens write SetKeepDkimTokens;
    property DkimVerificationStatus: TVerificationStatus read GetDkimVerificationStatus write SetDkimVerificationStatus;
  end;
  
  TIdentityDkimAttributes = class
  strict private
    FDkimEnabled: Nullable<Boolean>;
    FDkimTokens: TList<string>;
    FKeepDkimTokens: Boolean;
    FDkimVerificationStatus: Nullable<TVerificationStatus>;
    function GetDkimEnabled: Boolean;
    procedure SetDkimEnabled(const Value: Boolean);
    function GetDkimTokens: TList<string>;
    procedure SetDkimTokens(const Value: TList<string>);
    function GetKeepDkimTokens: Boolean;
    procedure SetKeepDkimTokens(const Value: Boolean);
    function GetDkimVerificationStatus: TVerificationStatus;
    procedure SetDkimVerificationStatus(const Value: TVerificationStatus);
  strict protected
    function Obj: TIdentityDkimAttributes;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDkimEnabled: Boolean;
    function IsSetDkimTokens: Boolean;
    function IsSetDkimVerificationStatus: Boolean;
    property DkimEnabled: Boolean read GetDkimEnabled write SetDkimEnabled;
    property DkimTokens: TList<string> read GetDkimTokens write SetDkimTokens;
    property KeepDkimTokens: Boolean read GetKeepDkimTokens write SetKeepDkimTokens;
    property DkimVerificationStatus: TVerificationStatus read GetDkimVerificationStatus write SetDkimVerificationStatus;
  end;
  
implementation

{ TIdentityDkimAttributes }

constructor TIdentityDkimAttributes.Create;
begin
  inherited;
  FDkimTokens := TList<string>.Create;
end;

destructor TIdentityDkimAttributes.Destroy;
begin
  DkimTokens := nil;
  inherited;
end;

function TIdentityDkimAttributes.Obj: TIdentityDkimAttributes;
begin
  Result := Self;
end;

function TIdentityDkimAttributes.GetDkimEnabled: Boolean;
begin
  Result := FDkimEnabled.ValueOrDefault;
end;

procedure TIdentityDkimAttributes.SetDkimEnabled(const Value: Boolean);
begin
  FDkimEnabled := Value;
end;

function TIdentityDkimAttributes.IsSetDkimEnabled: Boolean;
begin
  Result := FDkimEnabled.HasValue;
end;

function TIdentityDkimAttributes.GetDkimTokens: TList<string>;
begin
  Result := FDkimTokens;
end;

procedure TIdentityDkimAttributes.SetDkimTokens(const Value: TList<string>);
begin
  if FDkimTokens <> Value then
  begin
    if not KeepDkimTokens then
      FDkimTokens.Free;
    FDkimTokens := Value;
  end;
end;

function TIdentityDkimAttributes.GetKeepDkimTokens: Boolean;
begin
  Result := FKeepDkimTokens;
end;

procedure TIdentityDkimAttributes.SetKeepDkimTokens(const Value: Boolean);
begin
  FKeepDkimTokens := Value;
end;

function TIdentityDkimAttributes.IsSetDkimTokens: Boolean;
begin
  Result := (FDkimTokens <> nil) and (FDkimTokens.Count > 0);
end;

function TIdentityDkimAttributes.GetDkimVerificationStatus: TVerificationStatus;
begin
  Result := FDkimVerificationStatus.ValueOrDefault;
end;

procedure TIdentityDkimAttributes.SetDkimVerificationStatus(const Value: TVerificationStatus);
begin
  FDkimVerificationStatus := Value;
end;

function TIdentityDkimAttributes.IsSetDkimVerificationStatus: Boolean;
begin
  Result := FDkimVerificationStatus.HasValue;
end;

end.
