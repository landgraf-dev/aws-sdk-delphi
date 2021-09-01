unit AWS.Translate.Model.ListParallelDataResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.ParallelDataProperties;

type
  TListParallelDataResponse = class;
  
  IListParallelDataResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParallelDataPropertiesList: TObjectList<TParallelDataProperties>;
    procedure SetParallelDataPropertiesList(const Value: TObjectList<TParallelDataProperties>);
    function GetKeepParallelDataPropertiesList: Boolean;
    procedure SetKeepParallelDataPropertiesList(const Value: Boolean);
    function Obj: TListParallelDataResponse;
    function IsSetNextToken: Boolean;
    function IsSetParallelDataPropertiesList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ParallelDataPropertiesList: TObjectList<TParallelDataProperties> read GetParallelDataPropertiesList write SetParallelDataPropertiesList;
    property KeepParallelDataPropertiesList: Boolean read GetKeepParallelDataPropertiesList write SetKeepParallelDataPropertiesList;
  end;
  
  TListParallelDataResponse = class(TAmazonWebServiceResponse, IListParallelDataResponse)
  strict private
    FNextToken: Nullable<string>;
    FParallelDataPropertiesList: TObjectList<TParallelDataProperties>;
    FKeepParallelDataPropertiesList: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetParallelDataPropertiesList: TObjectList<TParallelDataProperties>;
    procedure SetParallelDataPropertiesList(const Value: TObjectList<TParallelDataProperties>);
    function GetKeepParallelDataPropertiesList: Boolean;
    procedure SetKeepParallelDataPropertiesList(const Value: Boolean);
  strict protected
    function Obj: TListParallelDataResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetParallelDataPropertiesList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ParallelDataPropertiesList: TObjectList<TParallelDataProperties> read GetParallelDataPropertiesList write SetParallelDataPropertiesList;
    property KeepParallelDataPropertiesList: Boolean read GetKeepParallelDataPropertiesList write SetKeepParallelDataPropertiesList;
  end;
  
implementation

{ TListParallelDataResponse }

constructor TListParallelDataResponse.Create;
begin
  inherited;
  FParallelDataPropertiesList := TObjectList<TParallelDataProperties>.Create;
end;

destructor TListParallelDataResponse.Destroy;
begin
  ParallelDataPropertiesList := nil;
  inherited;
end;

function TListParallelDataResponse.Obj: TListParallelDataResponse;
begin
  Result := Self;
end;

function TListParallelDataResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListParallelDataResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListParallelDataResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListParallelDataResponse.GetParallelDataPropertiesList: TObjectList<TParallelDataProperties>;
begin
  Result := FParallelDataPropertiesList;
end;

procedure TListParallelDataResponse.SetParallelDataPropertiesList(const Value: TObjectList<TParallelDataProperties>);
begin
  if FParallelDataPropertiesList <> Value then
  begin
    if not KeepParallelDataPropertiesList then
      FParallelDataPropertiesList.Free;
    FParallelDataPropertiesList := Value;
  end;
end;

function TListParallelDataResponse.GetKeepParallelDataPropertiesList: Boolean;
begin
  Result := FKeepParallelDataPropertiesList;
end;

procedure TListParallelDataResponse.SetKeepParallelDataPropertiesList(const Value: Boolean);
begin
  FKeepParallelDataPropertiesList := Value;
end;

function TListParallelDataResponse.IsSetParallelDataPropertiesList: Boolean;
begin
  Result := (FParallelDataPropertiesList <> nil) and (FParallelDataPropertiesList.Count > 0);
end;

end.
