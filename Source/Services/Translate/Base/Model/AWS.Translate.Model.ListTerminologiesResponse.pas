unit AWS.Translate.Model.ListTerminologiesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.TerminologyProperties;

type
  TListTerminologiesResponse = class;
  
  IListTerminologiesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTerminologyPropertiesList: TObjectList<TTerminologyProperties>;
    procedure SetTerminologyPropertiesList(const Value: TObjectList<TTerminologyProperties>);
    function GetKeepTerminologyPropertiesList: Boolean;
    procedure SetKeepTerminologyPropertiesList(const Value: Boolean);
    function Obj: TListTerminologiesResponse;
    function IsSetNextToken: Boolean;
    function IsSetTerminologyPropertiesList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TerminologyPropertiesList: TObjectList<TTerminologyProperties> read GetTerminologyPropertiesList write SetTerminologyPropertiesList;
    property KeepTerminologyPropertiesList: Boolean read GetKeepTerminologyPropertiesList write SetKeepTerminologyPropertiesList;
  end;
  
  TListTerminologiesResponse = class(TAmazonWebServiceResponse, IListTerminologiesResponse)
  strict private
    FNextToken: Nullable<string>;
    FTerminologyPropertiesList: TObjectList<TTerminologyProperties>;
    FKeepTerminologyPropertiesList: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTerminologyPropertiesList: TObjectList<TTerminologyProperties>;
    procedure SetTerminologyPropertiesList(const Value: TObjectList<TTerminologyProperties>);
    function GetKeepTerminologyPropertiesList: Boolean;
    procedure SetKeepTerminologyPropertiesList(const Value: Boolean);
  strict protected
    function Obj: TListTerminologiesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetTerminologyPropertiesList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TerminologyPropertiesList: TObjectList<TTerminologyProperties> read GetTerminologyPropertiesList write SetTerminologyPropertiesList;
    property KeepTerminologyPropertiesList: Boolean read GetKeepTerminologyPropertiesList write SetKeepTerminologyPropertiesList;
  end;
  
implementation

{ TListTerminologiesResponse }

constructor TListTerminologiesResponse.Create;
begin
  inherited;
  FTerminologyPropertiesList := TObjectList<TTerminologyProperties>.Create;
end;

destructor TListTerminologiesResponse.Destroy;
begin
  TerminologyPropertiesList := nil;
  inherited;
end;

function TListTerminologiesResponse.Obj: TListTerminologiesResponse;
begin
  Result := Self;
end;

function TListTerminologiesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTerminologiesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTerminologiesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListTerminologiesResponse.GetTerminologyPropertiesList: TObjectList<TTerminologyProperties>;
begin
  Result := FTerminologyPropertiesList;
end;

procedure TListTerminologiesResponse.SetTerminologyPropertiesList(const Value: TObjectList<TTerminologyProperties>);
begin
  if FTerminologyPropertiesList <> Value then
  begin
    if not KeepTerminologyPropertiesList then
      FTerminologyPropertiesList.Free;
    FTerminologyPropertiesList := Value;
  end;
end;

function TListTerminologiesResponse.GetKeepTerminologyPropertiesList: Boolean;
begin
  Result := FKeepTerminologyPropertiesList;
end;

procedure TListTerminologiesResponse.SetKeepTerminologyPropertiesList(const Value: Boolean);
begin
  FKeepTerminologyPropertiesList := Value;
end;

function TListTerminologiesResponse.IsSetTerminologyPropertiesList: Boolean;
begin
  Result := (FTerminologyPropertiesList <> nil) and (FTerminologyPropertiesList.Count > 0);
end;

end.
