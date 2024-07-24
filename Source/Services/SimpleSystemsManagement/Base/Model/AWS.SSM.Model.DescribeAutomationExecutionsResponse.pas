unit AWS.SSM.Model.DescribeAutomationExecutionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.AutomationExecutionMetadata, 
  AWS.Nullable;

type
  TDescribeAutomationExecutionsResponse = class;
  
  IDescribeAutomationExecutionsResponse = interface(IAmazonWebServiceResponse)
    function GetAutomationExecutionMetadataList: TObjectList<TAutomationExecutionMetadata>;
    procedure SetAutomationExecutionMetadataList(const Value: TObjectList<TAutomationExecutionMetadata>);
    function GetKeepAutomationExecutionMetadataList: Boolean;
    procedure SetKeepAutomationExecutionMetadataList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeAutomationExecutionsResponse;
    function IsSetAutomationExecutionMetadataList: Boolean;
    function IsSetNextToken: Boolean;
    property AutomationExecutionMetadataList: TObjectList<TAutomationExecutionMetadata> read GetAutomationExecutionMetadataList write SetAutomationExecutionMetadataList;
    property KeepAutomationExecutionMetadataList: Boolean read GetKeepAutomationExecutionMetadataList write SetKeepAutomationExecutionMetadataList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeAutomationExecutionsResponse = class(TAmazonWebServiceResponse, IDescribeAutomationExecutionsResponse)
  strict private
    FAutomationExecutionMetadataList: TObjectList<TAutomationExecutionMetadata>;
    FKeepAutomationExecutionMetadataList: Boolean;
    FNextToken: Nullable<string>;
    function GetAutomationExecutionMetadataList: TObjectList<TAutomationExecutionMetadata>;
    procedure SetAutomationExecutionMetadataList(const Value: TObjectList<TAutomationExecutionMetadata>);
    function GetKeepAutomationExecutionMetadataList: Boolean;
    procedure SetKeepAutomationExecutionMetadataList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeAutomationExecutionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAutomationExecutionMetadataList: Boolean;
    function IsSetNextToken: Boolean;
    property AutomationExecutionMetadataList: TObjectList<TAutomationExecutionMetadata> read GetAutomationExecutionMetadataList write SetAutomationExecutionMetadataList;
    property KeepAutomationExecutionMetadataList: Boolean read GetKeepAutomationExecutionMetadataList write SetKeepAutomationExecutionMetadataList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeAutomationExecutionsResponse }

constructor TDescribeAutomationExecutionsResponse.Create;
begin
  inherited;
  FAutomationExecutionMetadataList := TObjectList<TAutomationExecutionMetadata>.Create;
end;

destructor TDescribeAutomationExecutionsResponse.Destroy;
begin
  AutomationExecutionMetadataList := nil;
  inherited;
end;

function TDescribeAutomationExecutionsResponse.Obj: TDescribeAutomationExecutionsResponse;
begin
  Result := Self;
end;

function TDescribeAutomationExecutionsResponse.GetAutomationExecutionMetadataList: TObjectList<TAutomationExecutionMetadata>;
begin
  Result := FAutomationExecutionMetadataList;
end;

procedure TDescribeAutomationExecutionsResponse.SetAutomationExecutionMetadataList(const Value: TObjectList<TAutomationExecutionMetadata>);
begin
  if FAutomationExecutionMetadataList <> Value then
  begin
    if not KeepAutomationExecutionMetadataList then
      FAutomationExecutionMetadataList.Free;
    FAutomationExecutionMetadataList := Value;
  end;
end;

function TDescribeAutomationExecutionsResponse.GetKeepAutomationExecutionMetadataList: Boolean;
begin
  Result := FKeepAutomationExecutionMetadataList;
end;

procedure TDescribeAutomationExecutionsResponse.SetKeepAutomationExecutionMetadataList(const Value: Boolean);
begin
  FKeepAutomationExecutionMetadataList := Value;
end;

function TDescribeAutomationExecutionsResponse.IsSetAutomationExecutionMetadataList: Boolean;
begin
  Result := (FAutomationExecutionMetadataList <> nil) and (FAutomationExecutionMetadataList.Count > 0);
end;

function TDescribeAutomationExecutionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeAutomationExecutionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeAutomationExecutionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
