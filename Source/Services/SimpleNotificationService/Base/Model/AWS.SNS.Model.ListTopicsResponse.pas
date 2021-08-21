unit AWS.SNS.Model.ListTopicsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.Topic;

type
  TListTopicsResponse = class;
  
  IListTopicsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTopics: TObjectList<TTopic>;
    procedure SetTopics(const Value: TObjectList<TTopic>);
    function Obj: TListTopicsResponse;
    function IsSetNextToken: Boolean;
    function IsSetTopics: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Topics: TObjectList<TTopic> read GetTopics write SetTopics;
  end;
  
  TListTopicsResponse = class(TAmazonWebServiceResponse, IListTopicsResponse)
  strict private
    FNextToken: Nullable<string>;
    FTopics: TObjectList<TTopic>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTopics: TObjectList<TTopic>;
    procedure SetTopics(const Value: TObjectList<TTopic>);
  strict protected
    function Obj: TListTopicsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetTopics: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Topics: TObjectList<TTopic> read GetTopics write SetTopics;
  end;
  
implementation

{ TListTopicsResponse }

constructor TListTopicsResponse.Create;
begin
  inherited;
  FTopics := TObjectList<TTopic>.Create;
end;

destructor TListTopicsResponse.Destroy;
begin
  Topics := nil;
  inherited;
end;

function TListTopicsResponse.Obj: TListTopicsResponse;
begin
  Result := Self;
end;

function TListTopicsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTopicsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTopicsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListTopicsResponse.GetTopics: TObjectList<TTopic>;
begin
  Result := FTopics;
end;

procedure TListTopicsResponse.SetTopics(const Value: TObjectList<TTopic>);
begin
  if FTopics <> Value then
  begin
    FTopics.Free;
    FTopics := Value;
  end;
end;

function TListTopicsResponse.IsSetTopics: Boolean;
begin
  Result := (FTopics <> nil) and (FTopics.Count > 0);
end;

end.
