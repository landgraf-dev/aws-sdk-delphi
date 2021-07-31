unit AWS.SES.Model.ListIdentitiesResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TListIdentitiesResponse = class;
  
  IListIdentitiesResponse = interface(IAmazonWebServiceResponse)
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListIdentitiesResponse;
    function IsSetIdentities: Boolean;
    function IsSetNextToken: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListIdentitiesResponse = class(TAmazonWebServiceResponse, IListIdentitiesResponse)
  strict private
    FIdentities: TList<string>;
    FNextToken: Nullable<string>;
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListIdentitiesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetIdentities: Boolean;
    function IsSetNextToken: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListIdentitiesResponse }

constructor TListIdentitiesResponse.Create;
begin
  inherited;
  FIdentities := TList<string>.Create;
end;

destructor TListIdentitiesResponse.Destroy;
begin
  FIdentities.Free;
  inherited;
end;

function TListIdentitiesResponse.Obj: TListIdentitiesResponse;
begin
  Result := Self;
end;

function TListIdentitiesResponse.GetIdentities: TList<string>;
begin
  Result := FIdentities;
end;

procedure TListIdentitiesResponse.SetIdentities(const Value: TList<string>);
begin
  if FIdentities <> Value then
  begin
    FIdentities.Free;
    FIdentities := Value;
  end;
end;

function TListIdentitiesResponse.IsSetIdentities: Boolean;
begin
  Result := (FIdentities <> nil) and (FIdentities.Count > 0);
end;

function TListIdentitiesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListIdentitiesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListIdentitiesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
