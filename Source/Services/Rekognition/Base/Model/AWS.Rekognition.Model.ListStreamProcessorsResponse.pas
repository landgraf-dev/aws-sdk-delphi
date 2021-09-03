unit AWS.Rekognition.Model.ListStreamProcessorsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.StreamProcessor;

type
  TListStreamProcessorsResponse = class;
  
  IListStreamProcessorsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStreamProcessors: TObjectList<TStreamProcessor>;
    procedure SetStreamProcessors(const Value: TObjectList<TStreamProcessor>);
    function GetKeepStreamProcessors: Boolean;
    procedure SetKeepStreamProcessors(const Value: Boolean);
    function Obj: TListStreamProcessorsResponse;
    function IsSetNextToken: Boolean;
    function IsSetStreamProcessors: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property StreamProcessors: TObjectList<TStreamProcessor> read GetStreamProcessors write SetStreamProcessors;
    property KeepStreamProcessors: Boolean read GetKeepStreamProcessors write SetKeepStreamProcessors;
  end;
  
  TListStreamProcessorsResponse = class(TAmazonWebServiceResponse, IListStreamProcessorsResponse)
  strict private
    FNextToken: Nullable<string>;
    FStreamProcessors: TObjectList<TStreamProcessor>;
    FKeepStreamProcessors: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStreamProcessors: TObjectList<TStreamProcessor>;
    procedure SetStreamProcessors(const Value: TObjectList<TStreamProcessor>);
    function GetKeepStreamProcessors: Boolean;
    procedure SetKeepStreamProcessors(const Value: Boolean);
  strict protected
    function Obj: TListStreamProcessorsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetStreamProcessors: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property StreamProcessors: TObjectList<TStreamProcessor> read GetStreamProcessors write SetStreamProcessors;
    property KeepStreamProcessors: Boolean read GetKeepStreamProcessors write SetKeepStreamProcessors;
  end;
  
implementation

{ TListStreamProcessorsResponse }

constructor TListStreamProcessorsResponse.Create;
begin
  inherited;
  FStreamProcessors := TObjectList<TStreamProcessor>.Create;
end;

destructor TListStreamProcessorsResponse.Destroy;
begin
  StreamProcessors := nil;
  inherited;
end;

function TListStreamProcessorsResponse.Obj: TListStreamProcessorsResponse;
begin
  Result := Self;
end;

function TListStreamProcessorsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListStreamProcessorsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListStreamProcessorsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListStreamProcessorsResponse.GetStreamProcessors: TObjectList<TStreamProcessor>;
begin
  Result := FStreamProcessors;
end;

procedure TListStreamProcessorsResponse.SetStreamProcessors(const Value: TObjectList<TStreamProcessor>);
begin
  if FStreamProcessors <> Value then
  begin
    if not KeepStreamProcessors then
      FStreamProcessors.Free;
    FStreamProcessors := Value;
  end;
end;

function TListStreamProcessorsResponse.GetKeepStreamProcessors: Boolean;
begin
  Result := FKeepStreamProcessors;
end;

procedure TListStreamProcessorsResponse.SetKeepStreamProcessors(const Value: Boolean);
begin
  FKeepStreamProcessors := Value;
end;

function TListStreamProcessorsResponse.IsSetStreamProcessors: Boolean;
begin
  Result := (FStreamProcessors <> nil) and (FStreamProcessors.Count > 0);
end;

end.
