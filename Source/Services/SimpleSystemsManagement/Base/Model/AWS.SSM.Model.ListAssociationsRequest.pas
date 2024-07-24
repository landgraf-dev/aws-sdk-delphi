unit AWS.SSM.Model.ListAssociationsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.AssociationFilter, 
  AWS.Nullable;

type
  TListAssociationsRequest = class;
  
  IListAssociationsRequest = interface
    function GetAssociationFilterList: TObjectList<TAssociationFilter>;
    procedure SetAssociationFilterList(const Value: TObjectList<TAssociationFilter>);
    function GetKeepAssociationFilterList: Boolean;
    procedure SetKeepAssociationFilterList(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListAssociationsRequest;
    function IsSetAssociationFilterList: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationFilterList: TObjectList<TAssociationFilter> read GetAssociationFilterList write SetAssociationFilterList;
    property KeepAssociationFilterList: Boolean read GetKeepAssociationFilterList write SetKeepAssociationFilterList;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListAssociationsRequest = class(TAmazonSimpleSystemsManagementRequest, IListAssociationsRequest)
  strict private
    FAssociationFilterList: TObjectList<TAssociationFilter>;
    FKeepAssociationFilterList: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetAssociationFilterList: TObjectList<TAssociationFilter>;
    procedure SetAssociationFilterList(const Value: TObjectList<TAssociationFilter>);
    function GetKeepAssociationFilterList: Boolean;
    procedure SetKeepAssociationFilterList(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListAssociationsRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AAssociationFilterList: TObjectList<TAssociationFilter>); overload;
    function IsSetAssociationFilterList: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property AssociationFilterList: TObjectList<TAssociationFilter> read GetAssociationFilterList write SetAssociationFilterList;
    property KeepAssociationFilterList: Boolean read GetKeepAssociationFilterList write SetKeepAssociationFilterList;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListAssociationsRequest }

constructor TListAssociationsRequest.Create;
begin
  inherited;
  FAssociationFilterList := TObjectList<TAssociationFilter>.Create;
end;

destructor TListAssociationsRequest.Destroy;
begin
  AssociationFilterList := nil;
  inherited;
end;

function TListAssociationsRequest.Obj: TListAssociationsRequest;
begin
  Result := Self;
end;

constructor TListAssociationsRequest.Create(const AAssociationFilterList: TObjectList<TAssociationFilter>);
begin
  Create;
  AssociationFilterList := AAssociationFilterList;
end;

function TListAssociationsRequest.GetAssociationFilterList: TObjectList<TAssociationFilter>;
begin
  Result := FAssociationFilterList;
end;

procedure TListAssociationsRequest.SetAssociationFilterList(const Value: TObjectList<TAssociationFilter>);
begin
  if FAssociationFilterList <> Value then
  begin
    if not KeepAssociationFilterList then
      FAssociationFilterList.Free;
    FAssociationFilterList := Value;
  end;
end;

function TListAssociationsRequest.GetKeepAssociationFilterList: Boolean;
begin
  Result := FKeepAssociationFilterList;
end;

procedure TListAssociationsRequest.SetKeepAssociationFilterList(const Value: Boolean);
begin
  FKeepAssociationFilterList := Value;
end;

function TListAssociationsRequest.IsSetAssociationFilterList: Boolean;
begin
  Result := (FAssociationFilterList <> nil) and (FAssociationFilterList.Count > 0);
end;

function TListAssociationsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListAssociationsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListAssociationsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListAssociationsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListAssociationsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListAssociationsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
