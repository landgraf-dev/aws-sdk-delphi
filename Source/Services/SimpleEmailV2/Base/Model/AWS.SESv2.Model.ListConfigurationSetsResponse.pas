unit AWS.SESv2.Model.ListConfigurationSetsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TListConfigurationSetsResponse = class;
  
  IListConfigurationSetsResponse = interface(IAmazonWebServiceResponse)
    function GetConfigurationSets: TList<string>;
    procedure SetConfigurationSets(const Value: TList<string>);
    function GetKeepConfigurationSets: Boolean;
    procedure SetKeepConfigurationSets(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListConfigurationSetsResponse;
    function IsSetConfigurationSets: Boolean;
    function IsSetNextToken: Boolean;
    property ConfigurationSets: TList<string> read GetConfigurationSets write SetConfigurationSets;
    property KeepConfigurationSets: Boolean read GetKeepConfigurationSets write SetKeepConfigurationSets;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListConfigurationSetsResponse = class(TAmazonWebServiceResponse, IListConfigurationSetsResponse)
  strict private
    FConfigurationSets: TList<string>;
    FKeepConfigurationSets: Boolean;
    FNextToken: Nullable<string>;
    function GetConfigurationSets: TList<string>;
    procedure SetConfigurationSets(const Value: TList<string>);
    function GetKeepConfigurationSets: Boolean;
    procedure SetKeepConfigurationSets(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListConfigurationSetsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSets: Boolean;
    function IsSetNextToken: Boolean;
    property ConfigurationSets: TList<string> read GetConfigurationSets write SetConfigurationSets;
    property KeepConfigurationSets: Boolean read GetKeepConfigurationSets write SetKeepConfigurationSets;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListConfigurationSetsResponse }

constructor TListConfigurationSetsResponse.Create;
begin
  inherited;
  FConfigurationSets := TList<string>.Create;
end;

destructor TListConfigurationSetsResponse.Destroy;
begin
  ConfigurationSets := nil;
  inherited;
end;

function TListConfigurationSetsResponse.Obj: TListConfigurationSetsResponse;
begin
  Result := Self;
end;

function TListConfigurationSetsResponse.GetConfigurationSets: TList<string>;
begin
  Result := FConfigurationSets;
end;

procedure TListConfigurationSetsResponse.SetConfigurationSets(const Value: TList<string>);
begin
  if FConfigurationSets <> Value then
  begin
    if not KeepConfigurationSets then
      FConfigurationSets.Free;
    FConfigurationSets := Value;
  end;
end;

function TListConfigurationSetsResponse.GetKeepConfigurationSets: Boolean;
begin
  Result := FKeepConfigurationSets;
end;

procedure TListConfigurationSetsResponse.SetKeepConfigurationSets(const Value: Boolean);
begin
  FKeepConfigurationSets := Value;
end;

function TListConfigurationSetsResponse.IsSetConfigurationSets: Boolean;
begin
  Result := (FConfigurationSets <> nil) and (FConfigurationSets.Count > 0);
end;

function TListConfigurationSetsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListConfigurationSetsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListConfigurationSetsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
