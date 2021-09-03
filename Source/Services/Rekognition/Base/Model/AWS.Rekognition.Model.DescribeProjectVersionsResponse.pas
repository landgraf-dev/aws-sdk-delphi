unit AWS.Rekognition.Model.DescribeProjectVersionsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.ProjectVersionDescription;

type
  TDescribeProjectVersionsResponse = class;
  
  IDescribeProjectVersionsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProjectVersionDescriptions: TObjectList<TProjectVersionDescription>;
    procedure SetProjectVersionDescriptions(const Value: TObjectList<TProjectVersionDescription>);
    function GetKeepProjectVersionDescriptions: Boolean;
    procedure SetKeepProjectVersionDescriptions(const Value: Boolean);
    function Obj: TDescribeProjectVersionsResponse;
    function IsSetNextToken: Boolean;
    function IsSetProjectVersionDescriptions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ProjectVersionDescriptions: TObjectList<TProjectVersionDescription> read GetProjectVersionDescriptions write SetProjectVersionDescriptions;
    property KeepProjectVersionDescriptions: Boolean read GetKeepProjectVersionDescriptions write SetKeepProjectVersionDescriptions;
  end;
  
  TDescribeProjectVersionsResponse = class(TAmazonWebServiceResponse, IDescribeProjectVersionsResponse)
  strict private
    FNextToken: Nullable<string>;
    FProjectVersionDescriptions: TObjectList<TProjectVersionDescription>;
    FKeepProjectVersionDescriptions: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProjectVersionDescriptions: TObjectList<TProjectVersionDescription>;
    procedure SetProjectVersionDescriptions(const Value: TObjectList<TProjectVersionDescription>);
    function GetKeepProjectVersionDescriptions: Boolean;
    procedure SetKeepProjectVersionDescriptions(const Value: Boolean);
  strict protected
    function Obj: TDescribeProjectVersionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetProjectVersionDescriptions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ProjectVersionDescriptions: TObjectList<TProjectVersionDescription> read GetProjectVersionDescriptions write SetProjectVersionDescriptions;
    property KeepProjectVersionDescriptions: Boolean read GetKeepProjectVersionDescriptions write SetKeepProjectVersionDescriptions;
  end;
  
implementation

{ TDescribeProjectVersionsResponse }

constructor TDescribeProjectVersionsResponse.Create;
begin
  inherited;
  FProjectVersionDescriptions := TObjectList<TProjectVersionDescription>.Create;
end;

destructor TDescribeProjectVersionsResponse.Destroy;
begin
  ProjectVersionDescriptions := nil;
  inherited;
end;

function TDescribeProjectVersionsResponse.Obj: TDescribeProjectVersionsResponse;
begin
  Result := Self;
end;

function TDescribeProjectVersionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeProjectVersionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeProjectVersionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeProjectVersionsResponse.GetProjectVersionDescriptions: TObjectList<TProjectVersionDescription>;
begin
  Result := FProjectVersionDescriptions;
end;

procedure TDescribeProjectVersionsResponse.SetProjectVersionDescriptions(const Value: TObjectList<TProjectVersionDescription>);
begin
  if FProjectVersionDescriptions <> Value then
  begin
    if not KeepProjectVersionDescriptions then
      FProjectVersionDescriptions.Free;
    FProjectVersionDescriptions := Value;
  end;
end;

function TDescribeProjectVersionsResponse.GetKeepProjectVersionDescriptions: Boolean;
begin
  Result := FKeepProjectVersionDescriptions;
end;

procedure TDescribeProjectVersionsResponse.SetKeepProjectVersionDescriptions(const Value: Boolean);
begin
  FKeepProjectVersionDescriptions := Value;
end;

function TDescribeProjectVersionsResponse.IsSetProjectVersionDescriptions: Boolean;
begin
  Result := (FProjectVersionDescriptions <> nil) and (FProjectVersionDescriptions.Count > 0);
end;

end.
