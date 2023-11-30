unit AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TPutEmailIdentityDkimSigningAttributesResponse = class;
  
  IPutEmailIdentityDkimSigningAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetDkimStatus: TDkimStatus;
    procedure SetDkimStatus(const Value: TDkimStatus);
    function GetDkimTokens: TList<string>;
    procedure SetDkimTokens(const Value: TList<string>);
    function GetKeepDkimTokens: Boolean;
    procedure SetKeepDkimTokens(const Value: Boolean);
    function Obj: TPutEmailIdentityDkimSigningAttributesResponse;
    function IsSetDkimStatus: Boolean;
    function IsSetDkimTokens: Boolean;
    property DkimStatus: TDkimStatus read GetDkimStatus write SetDkimStatus;
    property DkimTokens: TList<string> read GetDkimTokens write SetDkimTokens;
    property KeepDkimTokens: Boolean read GetKeepDkimTokens write SetKeepDkimTokens;
  end;
  
  TPutEmailIdentityDkimSigningAttributesResponse = class(TAmazonWebServiceResponse, IPutEmailIdentityDkimSigningAttributesResponse)
  strict private
    FDkimStatus: Nullable<TDkimStatus>;
    FDkimTokens: TList<string>;
    FKeepDkimTokens: Boolean;
    function GetDkimStatus: TDkimStatus;
    procedure SetDkimStatus(const Value: TDkimStatus);
    function GetDkimTokens: TList<string>;
    procedure SetDkimTokens(const Value: TList<string>);
    function GetKeepDkimTokens: Boolean;
    procedure SetKeepDkimTokens(const Value: Boolean);
  strict protected
    function Obj: TPutEmailIdentityDkimSigningAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDkimStatus: Boolean;
    function IsSetDkimTokens: Boolean;
    property DkimStatus: TDkimStatus read GetDkimStatus write SetDkimStatus;
    property DkimTokens: TList<string> read GetDkimTokens write SetDkimTokens;
    property KeepDkimTokens: Boolean read GetKeepDkimTokens write SetKeepDkimTokens;
  end;
  
implementation

{ TPutEmailIdentityDkimSigningAttributesResponse }

constructor TPutEmailIdentityDkimSigningAttributesResponse.Create;
begin
  inherited;
  FDkimTokens := TList<string>.Create;
end;

destructor TPutEmailIdentityDkimSigningAttributesResponse.Destroy;
begin
  DkimTokens := nil;
  inherited;
end;

function TPutEmailIdentityDkimSigningAttributesResponse.Obj: TPutEmailIdentityDkimSigningAttributesResponse;
begin
  Result := Self;
end;

function TPutEmailIdentityDkimSigningAttributesResponse.GetDkimStatus: TDkimStatus;
begin
  Result := FDkimStatus.ValueOrDefault;
end;

procedure TPutEmailIdentityDkimSigningAttributesResponse.SetDkimStatus(const Value: TDkimStatus);
begin
  FDkimStatus := Value;
end;

function TPutEmailIdentityDkimSigningAttributesResponse.IsSetDkimStatus: Boolean;
begin
  Result := FDkimStatus.HasValue;
end;

function TPutEmailIdentityDkimSigningAttributesResponse.GetDkimTokens: TList<string>;
begin
  Result := FDkimTokens;
end;

procedure TPutEmailIdentityDkimSigningAttributesResponse.SetDkimTokens(const Value: TList<string>);
begin
  if FDkimTokens <> Value then
  begin
    if not KeepDkimTokens then
      FDkimTokens.Free;
    FDkimTokens := Value;
  end;
end;

function TPutEmailIdentityDkimSigningAttributesResponse.GetKeepDkimTokens: Boolean;
begin
  Result := FKeepDkimTokens;
end;

procedure TPutEmailIdentityDkimSigningAttributesResponse.SetKeepDkimTokens(const Value: Boolean);
begin
  FKeepDkimTokens := Value;
end;

function TPutEmailIdentityDkimSigningAttributesResponse.IsSetDkimTokens: Boolean;
begin
  Result := (FDkimTokens <> nil) and (FDkimTokens.Count > 0);
end;

end.
