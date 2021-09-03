unit AWS.Rekognition.Model.DescribeProjectsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.ProjectDescription;

type
  TDescribeProjectsResponse = class;
  
  IDescribeProjectsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProjectDescriptions: TObjectList<TProjectDescription>;
    procedure SetProjectDescriptions(const Value: TObjectList<TProjectDescription>);
    function GetKeepProjectDescriptions: Boolean;
    procedure SetKeepProjectDescriptions(const Value: Boolean);
    function Obj: TDescribeProjectsResponse;
    function IsSetNextToken: Boolean;
    function IsSetProjectDescriptions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ProjectDescriptions: TObjectList<TProjectDescription> read GetProjectDescriptions write SetProjectDescriptions;
    property KeepProjectDescriptions: Boolean read GetKeepProjectDescriptions write SetKeepProjectDescriptions;
  end;
  
  TDescribeProjectsResponse = class(TAmazonWebServiceResponse, IDescribeProjectsResponse)
  strict private
    FNextToken: Nullable<string>;
    FProjectDescriptions: TObjectList<TProjectDescription>;
    FKeepProjectDescriptions: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProjectDescriptions: TObjectList<TProjectDescription>;
    procedure SetProjectDescriptions(const Value: TObjectList<TProjectDescription>);
    function GetKeepProjectDescriptions: Boolean;
    procedure SetKeepProjectDescriptions(const Value: Boolean);
  strict protected
    function Obj: TDescribeProjectsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetProjectDescriptions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ProjectDescriptions: TObjectList<TProjectDescription> read GetProjectDescriptions write SetProjectDescriptions;
    property KeepProjectDescriptions: Boolean read GetKeepProjectDescriptions write SetKeepProjectDescriptions;
  end;
  
implementation

{ TDescribeProjectsResponse }

constructor TDescribeProjectsResponse.Create;
begin
  inherited;
  FProjectDescriptions := TObjectList<TProjectDescription>.Create;
end;

destructor TDescribeProjectsResponse.Destroy;
begin
  ProjectDescriptions := nil;
  inherited;
end;

function TDescribeProjectsResponse.Obj: TDescribeProjectsResponse;
begin
  Result := Self;
end;

function TDescribeProjectsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeProjectsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeProjectsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeProjectsResponse.GetProjectDescriptions: TObjectList<TProjectDescription>;
begin
  Result := FProjectDescriptions;
end;

procedure TDescribeProjectsResponse.SetProjectDescriptions(const Value: TObjectList<TProjectDescription>);
begin
  if FProjectDescriptions <> Value then
  begin
    if not KeepProjectDescriptions then
      FProjectDescriptions.Free;
    FProjectDescriptions := Value;
  end;
end;

function TDescribeProjectsResponse.GetKeepProjectDescriptions: Boolean;
begin
  Result := FKeepProjectDescriptions;
end;

procedure TDescribeProjectsResponse.SetKeepProjectDescriptions(const Value: Boolean);
begin
  FKeepProjectDescriptions := Value;
end;

function TDescribeProjectsResponse.IsSetProjectDescriptions: Boolean;
begin
  Result := (FProjectDescriptions <> nil) and (FProjectDescriptions.Count > 0);
end;

end.
