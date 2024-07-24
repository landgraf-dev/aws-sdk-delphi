unit AWS.SSM.Model.ListAssociationsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.Association, 
  AWS.Nullable;

type
  TListAssociationsResponse = class;
  
  IListAssociationsResponse = interface(IAmazonWebServiceResponse)
    function GetAssociations: TObjectList<TAssociation>;
    procedure SetAssociations(const Value: TObjectList<TAssociation>);
    function GetKeepAssociations: Boolean;
    procedure SetKeepAssociations(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListAssociationsResponse;
    function IsSetAssociations: Boolean;
    function IsSetNextToken: Boolean;
    property Associations: TObjectList<TAssociation> read GetAssociations write SetAssociations;
    property KeepAssociations: Boolean read GetKeepAssociations write SetKeepAssociations;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListAssociationsResponse = class(TAmazonWebServiceResponse, IListAssociationsResponse)
  strict private
    FAssociations: TObjectList<TAssociation>;
    FKeepAssociations: Boolean;
    FNextToken: Nullable<string>;
    function GetAssociations: TObjectList<TAssociation>;
    procedure SetAssociations(const Value: TObjectList<TAssociation>);
    function GetKeepAssociations: Boolean;
    procedure SetKeepAssociations(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListAssociationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociations: Boolean;
    function IsSetNextToken: Boolean;
    property Associations: TObjectList<TAssociation> read GetAssociations write SetAssociations;
    property KeepAssociations: Boolean read GetKeepAssociations write SetKeepAssociations;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListAssociationsResponse }

constructor TListAssociationsResponse.Create;
begin
  inherited;
  FAssociations := TObjectList<TAssociation>.Create;
end;

destructor TListAssociationsResponse.Destroy;
begin
  Associations := nil;
  inherited;
end;

function TListAssociationsResponse.Obj: TListAssociationsResponse;
begin
  Result := Self;
end;

function TListAssociationsResponse.GetAssociations: TObjectList<TAssociation>;
begin
  Result := FAssociations;
end;

procedure TListAssociationsResponse.SetAssociations(const Value: TObjectList<TAssociation>);
begin
  if FAssociations <> Value then
  begin
    if not KeepAssociations then
      FAssociations.Free;
    FAssociations := Value;
  end;
end;

function TListAssociationsResponse.GetKeepAssociations: Boolean;
begin
  Result := FKeepAssociations;
end;

procedure TListAssociationsResponse.SetKeepAssociations(const Value: Boolean);
begin
  FKeepAssociations := Value;
end;

function TListAssociationsResponse.IsSetAssociations: Boolean;
begin
  Result := (FAssociations <> nil) and (FAssociations.Count > 0);
end;

function TListAssociationsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListAssociationsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListAssociationsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
