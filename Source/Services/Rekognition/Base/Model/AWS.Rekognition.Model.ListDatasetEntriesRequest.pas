unit AWS.Rekognition.Model.ListDatasetEntriesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TListDatasetEntriesRequest = class;
  
  IListDatasetEntriesRequest = interface
    function GetContainsLabels: TList<string>;
    procedure SetContainsLabels(const Value: TList<string>);
    function GetKeepContainsLabels: Boolean;
    procedure SetKeepContainsLabels(const Value: Boolean);
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function GetHasErrors: Boolean;
    procedure SetHasErrors(const Value: Boolean);
    function GetLabeled: Boolean;
    procedure SetLabeled(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSourceRefContains: string;
    procedure SetSourceRefContains(const Value: string);
    function Obj: TListDatasetEntriesRequest;
    function IsSetContainsLabels: Boolean;
    function IsSetDatasetArn: Boolean;
    function IsSetHasErrors: Boolean;
    function IsSetLabeled: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSourceRefContains: Boolean;
    property ContainsLabels: TList<string> read GetContainsLabels write SetContainsLabels;
    property KeepContainsLabels: Boolean read GetKeepContainsLabels write SetKeepContainsLabels;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
    property HasErrors: Boolean read GetHasErrors write SetHasErrors;
    property Labeled: Boolean read GetLabeled write SetLabeled;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SourceRefContains: string read GetSourceRefContains write SetSourceRefContains;
  end;
  
  TListDatasetEntriesRequest = class(TAmazonRekognitionRequest, IListDatasetEntriesRequest)
  strict private
    FContainsLabels: TList<string>;
    FKeepContainsLabels: Boolean;
    FDatasetArn: Nullable<string>;
    FHasErrors: Nullable<Boolean>;
    FLabeled: Nullable<Boolean>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FSourceRefContains: Nullable<string>;
    function GetContainsLabels: TList<string>;
    procedure SetContainsLabels(const Value: TList<string>);
    function GetKeepContainsLabels: Boolean;
    procedure SetKeepContainsLabels(const Value: Boolean);
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function GetHasErrors: Boolean;
    procedure SetHasErrors(const Value: Boolean);
    function GetLabeled: Boolean;
    procedure SetLabeled(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSourceRefContains: string;
    procedure SetSourceRefContains(const Value: string);
  strict protected
    function Obj: TListDatasetEntriesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContainsLabels: Boolean;
    function IsSetDatasetArn: Boolean;
    function IsSetHasErrors: Boolean;
    function IsSetLabeled: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSourceRefContains: Boolean;
    property ContainsLabels: TList<string> read GetContainsLabels write SetContainsLabels;
    property KeepContainsLabels: Boolean read GetKeepContainsLabels write SetKeepContainsLabels;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
    property HasErrors: Boolean read GetHasErrors write SetHasErrors;
    property Labeled: Boolean read GetLabeled write SetLabeled;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SourceRefContains: string read GetSourceRefContains write SetSourceRefContains;
  end;
  
implementation

{ TListDatasetEntriesRequest }

constructor TListDatasetEntriesRequest.Create;
begin
  inherited;
  FContainsLabels := TList<string>.Create;
end;

destructor TListDatasetEntriesRequest.Destroy;
begin
  ContainsLabels := nil;
  inherited;
end;

function TListDatasetEntriesRequest.Obj: TListDatasetEntriesRequest;
begin
  Result := Self;
end;

function TListDatasetEntriesRequest.GetContainsLabels: TList<string>;
begin
  Result := FContainsLabels;
end;

procedure TListDatasetEntriesRequest.SetContainsLabels(const Value: TList<string>);
begin
  if FContainsLabels <> Value then
  begin
    if not KeepContainsLabels then
      FContainsLabels.Free;
    FContainsLabels := Value;
  end;
end;

function TListDatasetEntriesRequest.GetKeepContainsLabels: Boolean;
begin
  Result := FKeepContainsLabels;
end;

procedure TListDatasetEntriesRequest.SetKeepContainsLabels(const Value: Boolean);
begin
  FKeepContainsLabels := Value;
end;

function TListDatasetEntriesRequest.IsSetContainsLabels: Boolean;
begin
  Result := (FContainsLabels <> nil) and (FContainsLabels.Count > 0);
end;

function TListDatasetEntriesRequest.GetDatasetArn: string;
begin
  Result := FDatasetArn.ValueOrDefault;
end;

procedure TListDatasetEntriesRequest.SetDatasetArn(const Value: string);
begin
  FDatasetArn := Value;
end;

function TListDatasetEntriesRequest.IsSetDatasetArn: Boolean;
begin
  Result := FDatasetArn.HasValue;
end;

function TListDatasetEntriesRequest.GetHasErrors: Boolean;
begin
  Result := FHasErrors.ValueOrDefault;
end;

procedure TListDatasetEntriesRequest.SetHasErrors(const Value: Boolean);
begin
  FHasErrors := Value;
end;

function TListDatasetEntriesRequest.IsSetHasErrors: Boolean;
begin
  Result := FHasErrors.HasValue;
end;

function TListDatasetEntriesRequest.GetLabeled: Boolean;
begin
  Result := FLabeled.ValueOrDefault;
end;

procedure TListDatasetEntriesRequest.SetLabeled(const Value: Boolean);
begin
  FLabeled := Value;
end;

function TListDatasetEntriesRequest.IsSetLabeled: Boolean;
begin
  Result := FLabeled.HasValue;
end;

function TListDatasetEntriesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListDatasetEntriesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListDatasetEntriesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListDatasetEntriesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDatasetEntriesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDatasetEntriesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListDatasetEntriesRequest.GetSourceRefContains: string;
begin
  Result := FSourceRefContains.ValueOrDefault;
end;

procedure TListDatasetEntriesRequest.SetSourceRefContains(const Value: string);
begin
  FSourceRefContains := Value;
end;

function TListDatasetEntriesRequest.IsSetSourceRefContains: Boolean;
begin
  Result := FSourceRefContains.HasValue;
end;

end.
