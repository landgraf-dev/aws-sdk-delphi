unit AWS.SSM.Model.GetOpsSummaryResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.OpsEntity, 
  AWS.Nullable;

type
  TGetOpsSummaryResponse = class;
  
  IGetOpsSummaryResponse = interface(IAmazonWebServiceResponse)
    function GetEntities: TObjectList<TOpsEntity>;
    procedure SetEntities(const Value: TObjectList<TOpsEntity>);
    function GetKeepEntities: Boolean;
    procedure SetKeepEntities(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetOpsSummaryResponse;
    function IsSetEntities: Boolean;
    function IsSetNextToken: Boolean;
    property Entities: TObjectList<TOpsEntity> read GetEntities write SetEntities;
    property KeepEntities: Boolean read GetKeepEntities write SetKeepEntities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetOpsSummaryResponse = class(TAmazonWebServiceResponse, IGetOpsSummaryResponse)
  strict private
    FEntities: TObjectList<TOpsEntity>;
    FKeepEntities: Boolean;
    FNextToken: Nullable<string>;
    function GetEntities: TObjectList<TOpsEntity>;
    procedure SetEntities(const Value: TObjectList<TOpsEntity>);
    function GetKeepEntities: Boolean;
    procedure SetKeepEntities(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TGetOpsSummaryResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEntities: Boolean;
    function IsSetNextToken: Boolean;
    property Entities: TObjectList<TOpsEntity> read GetEntities write SetEntities;
    property KeepEntities: Boolean read GetKeepEntities write SetKeepEntities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetOpsSummaryResponse }

constructor TGetOpsSummaryResponse.Create;
begin
  inherited;
  FEntities := TObjectList<TOpsEntity>.Create;
end;

destructor TGetOpsSummaryResponse.Destroy;
begin
  Entities := nil;
  inherited;
end;

function TGetOpsSummaryResponse.Obj: TGetOpsSummaryResponse;
begin
  Result := Self;
end;

function TGetOpsSummaryResponse.GetEntities: TObjectList<TOpsEntity>;
begin
  Result := FEntities;
end;

procedure TGetOpsSummaryResponse.SetEntities(const Value: TObjectList<TOpsEntity>);
begin
  if FEntities <> Value then
  begin
    if not KeepEntities then
      FEntities.Free;
    FEntities := Value;
  end;
end;

function TGetOpsSummaryResponse.GetKeepEntities: Boolean;
begin
  Result := FKeepEntities;
end;

procedure TGetOpsSummaryResponse.SetKeepEntities(const Value: Boolean);
begin
  FKeepEntities := Value;
end;

function TGetOpsSummaryResponse.IsSetEntities: Boolean;
begin
  Result := (FEntities <> nil) and (FEntities.Count > 0);
end;

function TGetOpsSummaryResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetOpsSummaryResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetOpsSummaryResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
