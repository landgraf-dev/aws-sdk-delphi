unit AWS.SSM.Model.ListAssociationVersionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.AssociationVersionInfo, 
  AWS.Nullable;

type
  TListAssociationVersionsResponse = class;
  
  IListAssociationVersionsResponse = interface(IAmazonWebServiceResponse)
    function GetAssociationVersions: TObjectList<TAssociationVersionInfo>;
    procedure SetAssociationVersions(const Value: TObjectList<TAssociationVersionInfo>);
    function GetKeepAssociationVersions: Boolean;
    procedure SetKeepAssociationVersions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListAssociationVersionsResponse;
    function IsSetAssociationVersions: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationVersions: TObjectList<TAssociationVersionInfo> read GetAssociationVersions write SetAssociationVersions;
    property KeepAssociationVersions: Boolean read GetKeepAssociationVersions write SetKeepAssociationVersions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListAssociationVersionsResponse = class(TAmazonWebServiceResponse, IListAssociationVersionsResponse)
  strict private
    FAssociationVersions: TObjectList<TAssociationVersionInfo>;
    FKeepAssociationVersions: Boolean;
    FNextToken: Nullable<string>;
    function GetAssociationVersions: TObjectList<TAssociationVersionInfo>;
    procedure SetAssociationVersions(const Value: TObjectList<TAssociationVersionInfo>);
    function GetKeepAssociationVersions: Boolean;
    procedure SetKeepAssociationVersions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListAssociationVersionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationVersions: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationVersions: TObjectList<TAssociationVersionInfo> read GetAssociationVersions write SetAssociationVersions;
    property KeepAssociationVersions: Boolean read GetKeepAssociationVersions write SetKeepAssociationVersions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListAssociationVersionsResponse }

constructor TListAssociationVersionsResponse.Create;
begin
  inherited;
  FAssociationVersions := TObjectList<TAssociationVersionInfo>.Create;
end;

destructor TListAssociationVersionsResponse.Destroy;
begin
  AssociationVersions := nil;
  inherited;
end;

function TListAssociationVersionsResponse.Obj: TListAssociationVersionsResponse;
begin
  Result := Self;
end;

function TListAssociationVersionsResponse.GetAssociationVersions: TObjectList<TAssociationVersionInfo>;
begin
  Result := FAssociationVersions;
end;

procedure TListAssociationVersionsResponse.SetAssociationVersions(const Value: TObjectList<TAssociationVersionInfo>);
begin
  if FAssociationVersions <> Value then
  begin
    if not KeepAssociationVersions then
      FAssociationVersions.Free;
    FAssociationVersions := Value;
  end;
end;

function TListAssociationVersionsResponse.GetKeepAssociationVersions: Boolean;
begin
  Result := FKeepAssociationVersions;
end;

procedure TListAssociationVersionsResponse.SetKeepAssociationVersions(const Value: Boolean);
begin
  FKeepAssociationVersions := Value;
end;

function TListAssociationVersionsResponse.IsSetAssociationVersions: Boolean;
begin
  Result := (FAssociationVersions <> nil) and (FAssociationVersions.Count > 0);
end;

function TListAssociationVersionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListAssociationVersionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListAssociationVersionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
