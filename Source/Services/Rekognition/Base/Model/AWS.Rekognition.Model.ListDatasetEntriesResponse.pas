unit AWS.Rekognition.Model.ListDatasetEntriesResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TListDatasetEntriesResponse = class;
  
  IListDatasetEntriesResponse = interface(IAmazonWebServiceResponse)
    function GetDatasetEntries: TList<string>;
    procedure SetDatasetEntries(const Value: TList<string>);
    function GetKeepDatasetEntries: Boolean;
    procedure SetKeepDatasetEntries(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDatasetEntriesResponse;
    function IsSetDatasetEntries: Boolean;
    function IsSetNextToken: Boolean;
    property DatasetEntries: TList<string> read GetDatasetEntries write SetDatasetEntries;
    property KeepDatasetEntries: Boolean read GetKeepDatasetEntries write SetKeepDatasetEntries;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDatasetEntriesResponse = class(TAmazonWebServiceResponse, IListDatasetEntriesResponse)
  strict private
    FDatasetEntries: TList<string>;
    FKeepDatasetEntries: Boolean;
    FNextToken: Nullable<string>;
    function GetDatasetEntries: TList<string>;
    procedure SetDatasetEntries(const Value: TList<string>);
    function GetKeepDatasetEntries: Boolean;
    procedure SetKeepDatasetEntries(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDatasetEntriesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDatasetEntries: Boolean;
    function IsSetNextToken: Boolean;
    property DatasetEntries: TList<string> read GetDatasetEntries write SetDatasetEntries;
    property KeepDatasetEntries: Boolean read GetKeepDatasetEntries write SetKeepDatasetEntries;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDatasetEntriesResponse }

constructor TListDatasetEntriesResponse.Create;
begin
  inherited;
  FDatasetEntries := TList<string>.Create;
end;

destructor TListDatasetEntriesResponse.Destroy;
begin
  DatasetEntries := nil;
  inherited;
end;

function TListDatasetEntriesResponse.Obj: TListDatasetEntriesResponse;
begin
  Result := Self;
end;

function TListDatasetEntriesResponse.GetDatasetEntries: TList<string>;
begin
  Result := FDatasetEntries;
end;

procedure TListDatasetEntriesResponse.SetDatasetEntries(const Value: TList<string>);
begin
  if FDatasetEntries <> Value then
  begin
    if not KeepDatasetEntries then
      FDatasetEntries.Free;
    FDatasetEntries := Value;
  end;
end;

function TListDatasetEntriesResponse.GetKeepDatasetEntries: Boolean;
begin
  Result := FKeepDatasetEntries;
end;

procedure TListDatasetEntriesResponse.SetKeepDatasetEntries(const Value: Boolean);
begin
  FKeepDatasetEntries := Value;
end;

function TListDatasetEntriesResponse.IsSetDatasetEntries: Boolean;
begin
  Result := (FDatasetEntries <> nil) and (FDatasetEntries.Count > 0);
end;

function TListDatasetEntriesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDatasetEntriesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDatasetEntriesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
