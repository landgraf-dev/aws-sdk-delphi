unit AWS.Rekognition.Model.ListDatasetLabelsRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TListDatasetLabelsRequest = class;
  
  IListDatasetLabelsRequest = interface
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDatasetLabelsRequest;
    function IsSetDatasetArn: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDatasetLabelsRequest = class(TAmazonRekognitionRequest, IListDatasetLabelsRequest)
  strict private
    FDatasetArn: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDatasetLabelsRequest;
  public
    function IsSetDatasetArn: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDatasetLabelsRequest }

function TListDatasetLabelsRequest.Obj: TListDatasetLabelsRequest;
begin
  Result := Self;
end;

function TListDatasetLabelsRequest.GetDatasetArn: string;
begin
  Result := FDatasetArn.ValueOrDefault;
end;

procedure TListDatasetLabelsRequest.SetDatasetArn(const Value: string);
begin
  FDatasetArn := Value;
end;

function TListDatasetLabelsRequest.IsSetDatasetArn: Boolean;
begin
  Result := FDatasetArn.HasValue;
end;

function TListDatasetLabelsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListDatasetLabelsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListDatasetLabelsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListDatasetLabelsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDatasetLabelsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDatasetLabelsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
