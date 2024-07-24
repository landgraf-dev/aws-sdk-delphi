unit AWS.SSM.Model.GetOpsMetadataResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.MetadataValue, 
  AWS.Nullable;

type
  TGetOpsMetadataResponse = class;
  
  IGetOpsMetadataResponse = interface(IAmazonWebServiceResponse)
    function GetMetadata: TObjectDictionary<string, TMetadataValue>;
    procedure SetMetadata(const Value: TObjectDictionary<string, TMetadataValue>);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
    function Obj: TGetOpsMetadataResponse;
    function IsSetMetadata: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResourceId: Boolean;
    property Metadata: TObjectDictionary<string, TMetadataValue> read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceId: string read GetResourceId write SetResourceId;
  end;
  
  TGetOpsMetadataResponse = class(TAmazonWebServiceResponse, IGetOpsMetadataResponse)
  strict private
    FMetadata: TObjectDictionary<string, TMetadataValue>;
    FKeepMetadata: Boolean;
    FNextToken: Nullable<string>;
    FResourceId: Nullable<string>;
    function GetMetadata: TObjectDictionary<string, TMetadataValue>;
    procedure SetMetadata(const Value: TObjectDictionary<string, TMetadataValue>);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceId: string;
    procedure SetResourceId(const Value: string);
  strict protected
    function Obj: TGetOpsMetadataResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetMetadata: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetResourceId: Boolean;
    property Metadata: TObjectDictionary<string, TMetadataValue> read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceId: string read GetResourceId write SetResourceId;
  end;
  
implementation

{ TGetOpsMetadataResponse }

constructor TGetOpsMetadataResponse.Create;
begin
  inherited;
  FMetadata := TObjectDictionary<string, TMetadataValue>.Create([doOwnsValues]);
end;

destructor TGetOpsMetadataResponse.Destroy;
begin
  Metadata := nil;
  inherited;
end;

function TGetOpsMetadataResponse.Obj: TGetOpsMetadataResponse;
begin
  Result := Self;
end;

function TGetOpsMetadataResponse.GetMetadata: TObjectDictionary<string, TMetadataValue>;
begin
  Result := FMetadata;
end;

procedure TGetOpsMetadataResponse.SetMetadata(const Value: TObjectDictionary<string, TMetadataValue>);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TGetOpsMetadataResponse.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TGetOpsMetadataResponse.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TGetOpsMetadataResponse.IsSetMetadata: Boolean;
begin
  Result := (FMetadata <> nil) and (FMetadata.Count > 0);
end;

function TGetOpsMetadataResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetOpsMetadataResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetOpsMetadataResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetOpsMetadataResponse.GetResourceId: string;
begin
  Result := FResourceId.ValueOrDefault;
end;

procedure TGetOpsMetadataResponse.SetResourceId(const Value: string);
begin
  FResourceId := Value;
end;

function TGetOpsMetadataResponse.IsSetResourceId: Boolean;
begin
  Result := FResourceId.HasValue;
end;

end.
