unit AWS.Rekognition.Model.ListDatasetLabelsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.DatasetLabelDescription;

type
  TListDatasetLabelsResponse = class;
  
  IListDatasetLabelsResponse = interface(IAmazonWebServiceResponse)
    function GetDatasetLabelDescriptions: TObjectList<TDatasetLabelDescription>;
    procedure SetDatasetLabelDescriptions(const Value: TObjectList<TDatasetLabelDescription>);
    function GetKeepDatasetLabelDescriptions: Boolean;
    procedure SetKeepDatasetLabelDescriptions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDatasetLabelsResponse;
    function IsSetDatasetLabelDescriptions: Boolean;
    function IsSetNextToken: Boolean;
    property DatasetLabelDescriptions: TObjectList<TDatasetLabelDescription> read GetDatasetLabelDescriptions write SetDatasetLabelDescriptions;
    property KeepDatasetLabelDescriptions: Boolean read GetKeepDatasetLabelDescriptions write SetKeepDatasetLabelDescriptions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDatasetLabelsResponse = class(TAmazonWebServiceResponse, IListDatasetLabelsResponse)
  strict private
    FDatasetLabelDescriptions: TObjectList<TDatasetLabelDescription>;
    FKeepDatasetLabelDescriptions: Boolean;
    FNextToken: Nullable<string>;
    function GetDatasetLabelDescriptions: TObjectList<TDatasetLabelDescription>;
    procedure SetDatasetLabelDescriptions(const Value: TObjectList<TDatasetLabelDescription>);
    function GetKeepDatasetLabelDescriptions: Boolean;
    procedure SetKeepDatasetLabelDescriptions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDatasetLabelsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDatasetLabelDescriptions: Boolean;
    function IsSetNextToken: Boolean;
    property DatasetLabelDescriptions: TObjectList<TDatasetLabelDescription> read GetDatasetLabelDescriptions write SetDatasetLabelDescriptions;
    property KeepDatasetLabelDescriptions: Boolean read GetKeepDatasetLabelDescriptions write SetKeepDatasetLabelDescriptions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDatasetLabelsResponse }

constructor TListDatasetLabelsResponse.Create;
begin
  inherited;
  FDatasetLabelDescriptions := TObjectList<TDatasetLabelDescription>.Create;
end;

destructor TListDatasetLabelsResponse.Destroy;
begin
  DatasetLabelDescriptions := nil;
  inherited;
end;

function TListDatasetLabelsResponse.Obj: TListDatasetLabelsResponse;
begin
  Result := Self;
end;

function TListDatasetLabelsResponse.GetDatasetLabelDescriptions: TObjectList<TDatasetLabelDescription>;
begin
  Result := FDatasetLabelDescriptions;
end;

procedure TListDatasetLabelsResponse.SetDatasetLabelDescriptions(const Value: TObjectList<TDatasetLabelDescription>);
begin
  if FDatasetLabelDescriptions <> Value then
  begin
    if not KeepDatasetLabelDescriptions then
      FDatasetLabelDescriptions.Free;
    FDatasetLabelDescriptions := Value;
  end;
end;

function TListDatasetLabelsResponse.GetKeepDatasetLabelDescriptions: Boolean;
begin
  Result := FKeepDatasetLabelDescriptions;
end;

procedure TListDatasetLabelsResponse.SetKeepDatasetLabelDescriptions(const Value: Boolean);
begin
  FKeepDatasetLabelDescriptions := Value;
end;

function TListDatasetLabelsResponse.IsSetDatasetLabelDescriptions: Boolean;
begin
  Result := (FDatasetLabelDescriptions <> nil) and (FDatasetLabelDescriptions.Count > 0);
end;

function TListDatasetLabelsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDatasetLabelsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDatasetLabelsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
