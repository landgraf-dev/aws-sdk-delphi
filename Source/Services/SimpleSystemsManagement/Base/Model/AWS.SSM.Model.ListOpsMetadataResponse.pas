unit AWS.SSM.Model.ListOpsMetadataResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsMetadata;

type
  TListOpsMetadataResponse = class;
  
  IListOpsMetadataResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsMetadataList: TObjectList<TOpsMetadata>;
    procedure SetOpsMetadataList(const Value: TObjectList<TOpsMetadata>);
    function GetKeepOpsMetadataList: Boolean;
    procedure SetKeepOpsMetadataList(const Value: Boolean);
    function Obj: TListOpsMetadataResponse;
    function IsSetNextToken: Boolean;
    function IsSetOpsMetadataList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsMetadataList: TObjectList<TOpsMetadata> read GetOpsMetadataList write SetOpsMetadataList;
    property KeepOpsMetadataList: Boolean read GetKeepOpsMetadataList write SetKeepOpsMetadataList;
  end;
  
  TListOpsMetadataResponse = class(TAmazonWebServiceResponse, IListOpsMetadataResponse)
  strict private
    FNextToken: Nullable<string>;
    FOpsMetadataList: TObjectList<TOpsMetadata>;
    FKeepOpsMetadataList: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsMetadataList: TObjectList<TOpsMetadata>;
    procedure SetOpsMetadataList(const Value: TObjectList<TOpsMetadata>);
    function GetKeepOpsMetadataList: Boolean;
    procedure SetKeepOpsMetadataList(const Value: Boolean);
  strict protected
    function Obj: TListOpsMetadataResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetOpsMetadataList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsMetadataList: TObjectList<TOpsMetadata> read GetOpsMetadataList write SetOpsMetadataList;
    property KeepOpsMetadataList: Boolean read GetKeepOpsMetadataList write SetKeepOpsMetadataList;
  end;
  
implementation

{ TListOpsMetadataResponse }

constructor TListOpsMetadataResponse.Create;
begin
  inherited;
  FOpsMetadataList := TObjectList<TOpsMetadata>.Create;
end;

destructor TListOpsMetadataResponse.Destroy;
begin
  OpsMetadataList := nil;
  inherited;
end;

function TListOpsMetadataResponse.Obj: TListOpsMetadataResponse;
begin
  Result := Self;
end;

function TListOpsMetadataResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListOpsMetadataResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListOpsMetadataResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListOpsMetadataResponse.GetOpsMetadataList: TObjectList<TOpsMetadata>;
begin
  Result := FOpsMetadataList;
end;

procedure TListOpsMetadataResponse.SetOpsMetadataList(const Value: TObjectList<TOpsMetadata>);
begin
  if FOpsMetadataList <> Value then
  begin
    if not KeepOpsMetadataList then
      FOpsMetadataList.Free;
    FOpsMetadataList := Value;
  end;
end;

function TListOpsMetadataResponse.GetKeepOpsMetadataList: Boolean;
begin
  Result := FKeepOpsMetadataList;
end;

procedure TListOpsMetadataResponse.SetKeepOpsMetadataList(const Value: Boolean);
begin
  FKeepOpsMetadataList := Value;
end;

function TListOpsMetadataResponse.IsSetOpsMetadataList: Boolean;
begin
  Result := (FOpsMetadataList <> nil) and (FOpsMetadataList.Count > 0);
end;

end.
