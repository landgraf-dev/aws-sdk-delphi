unit AWS.SSM.Model.DescribePatchPropertiesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDescribePatchPropertiesResponse = class;
  
  IDescribePatchPropertiesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProperties: TObjectList<TDictionary<string, string>>;
    procedure SetProperties(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepProperties: Boolean;
    procedure SetKeepProperties(const Value: Boolean);
    function Obj: TDescribePatchPropertiesResponse;
    function IsSetNextToken: Boolean;
    function IsSetProperties: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Properties: TObjectList<TDictionary<string, string>> read GetProperties write SetProperties;
    property KeepProperties: Boolean read GetKeepProperties write SetKeepProperties;
  end;
  
  TDescribePatchPropertiesResponse = class(TAmazonWebServiceResponse, IDescribePatchPropertiesResponse)
  strict private
    FNextToken: Nullable<string>;
    FProperties: TObjectList<TDictionary<string, string>>;
    FKeepProperties: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetProperties: TObjectList<TDictionary<string, string>>;
    procedure SetProperties(const Value: TObjectList<TDictionary<string, string>>);
    function GetKeepProperties: Boolean;
    procedure SetKeepProperties(const Value: Boolean);
  strict protected
    function Obj: TDescribePatchPropertiesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetProperties: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Properties: TObjectList<TDictionary<string, string>> read GetProperties write SetProperties;
    property KeepProperties: Boolean read GetKeepProperties write SetKeepProperties;
  end;
  
implementation

{ TDescribePatchPropertiesResponse }

constructor TDescribePatchPropertiesResponse.Create;
begin
  inherited;
  FProperties := TObjectList<TDictionary<string, string>>.Create;
end;

destructor TDescribePatchPropertiesResponse.Destroy;
begin
  Properties := nil;
  inherited;
end;

function TDescribePatchPropertiesResponse.Obj: TDescribePatchPropertiesResponse;
begin
  Result := Self;
end;

function TDescribePatchPropertiesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribePatchPropertiesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribePatchPropertiesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribePatchPropertiesResponse.GetProperties: TObjectList<TDictionary<string, string>>;
begin
  Result := FProperties;
end;

procedure TDescribePatchPropertiesResponse.SetProperties(const Value: TObjectList<TDictionary<string, string>>);
begin
  if FProperties <> Value then
  begin
    if not KeepProperties then
      FProperties.Free;
    FProperties := Value;
  end;
end;

function TDescribePatchPropertiesResponse.GetKeepProperties: Boolean;
begin
  Result := FKeepProperties;
end;

procedure TDescribePatchPropertiesResponse.SetKeepProperties(const Value: Boolean);
begin
  FKeepProperties := Value;
end;

function TDescribePatchPropertiesResponse.IsSetProperties: Boolean;
begin
  Result := (FProperties <> nil) and (FProperties.Count > 0);
end;

end.
