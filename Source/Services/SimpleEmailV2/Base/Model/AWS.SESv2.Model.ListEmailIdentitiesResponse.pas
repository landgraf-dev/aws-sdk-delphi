unit AWS.SESv2.Model.ListEmailIdentitiesResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.IdentityInfo;

type
  TListEmailIdentitiesResponse = class;
  
  IListEmailIdentitiesResponse = interface(IAmazonWebServiceResponse)
    function GetEmailIdentities: TObjectList<TIdentityInfo>;
    procedure SetEmailIdentities(const Value: TObjectList<TIdentityInfo>);
    function GetKeepEmailIdentities: Boolean;
    procedure SetKeepEmailIdentities(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListEmailIdentitiesResponse;
    function IsSetEmailIdentities: Boolean;
    function IsSetNextToken: Boolean;
    property EmailIdentities: TObjectList<TIdentityInfo> read GetEmailIdentities write SetEmailIdentities;
    property KeepEmailIdentities: Boolean read GetKeepEmailIdentities write SetKeepEmailIdentities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListEmailIdentitiesResponse = class(TAmazonWebServiceResponse, IListEmailIdentitiesResponse)
  strict private
    FEmailIdentities: TObjectList<TIdentityInfo>;
    FKeepEmailIdentities: Boolean;
    FNextToken: Nullable<string>;
    function GetEmailIdentities: TObjectList<TIdentityInfo>;
    procedure SetEmailIdentities(const Value: TObjectList<TIdentityInfo>);
    function GetKeepEmailIdentities: Boolean;
    procedure SetKeepEmailIdentities(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListEmailIdentitiesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEmailIdentities: Boolean;
    function IsSetNextToken: Boolean;
    property EmailIdentities: TObjectList<TIdentityInfo> read GetEmailIdentities write SetEmailIdentities;
    property KeepEmailIdentities: Boolean read GetKeepEmailIdentities write SetKeepEmailIdentities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListEmailIdentitiesResponse }

constructor TListEmailIdentitiesResponse.Create;
begin
  inherited;
  FEmailIdentities := TObjectList<TIdentityInfo>.Create;
end;

destructor TListEmailIdentitiesResponse.Destroy;
begin
  EmailIdentities := nil;
  inherited;
end;

function TListEmailIdentitiesResponse.Obj: TListEmailIdentitiesResponse;
begin
  Result := Self;
end;

function TListEmailIdentitiesResponse.GetEmailIdentities: TObjectList<TIdentityInfo>;
begin
  Result := FEmailIdentities;
end;

procedure TListEmailIdentitiesResponse.SetEmailIdentities(const Value: TObjectList<TIdentityInfo>);
begin
  if FEmailIdentities <> Value then
  begin
    if not KeepEmailIdentities then
      FEmailIdentities.Free;
    FEmailIdentities := Value;
  end;
end;

function TListEmailIdentitiesResponse.GetKeepEmailIdentities: Boolean;
begin
  Result := FKeepEmailIdentities;
end;

procedure TListEmailIdentitiesResponse.SetKeepEmailIdentities(const Value: Boolean);
begin
  FKeepEmailIdentities := Value;
end;

function TListEmailIdentitiesResponse.IsSetEmailIdentities: Boolean;
begin
  Result := (FEmailIdentities <> nil) and (FEmailIdentities.Count > 0);
end;

function TListEmailIdentitiesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListEmailIdentitiesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListEmailIdentitiesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
