unit AWS.Polly.Model.DescribeVoicesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.Voice;

type
  TDescribeVoicesResponse = class;
  
  IDescribeVoicesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetVoices: TObjectList<TVoice>;
    procedure SetVoices(const Value: TObjectList<TVoice>);
    function Obj: TDescribeVoicesResponse;
    function IsSetNextToken: Boolean;
    function IsSetVoices: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Voices: TObjectList<TVoice> read GetVoices write SetVoices;
  end;
  
  TDescribeVoicesResponse = class(TAmazonWebServiceResponse, IDescribeVoicesResponse)
  strict private
    FNextToken: Nullable<string>;
    FVoices: TObjectList<TVoice>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetVoices: TObjectList<TVoice>;
    procedure SetVoices(const Value: TObjectList<TVoice>);
  strict protected
    function Obj: TDescribeVoicesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetVoices: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Voices: TObjectList<TVoice> read GetVoices write SetVoices;
  end;
  
implementation

{ TDescribeVoicesResponse }

constructor TDescribeVoicesResponse.Create;
begin
  inherited;
  FVoices := TObjectList<TVoice>.Create;
end;

destructor TDescribeVoicesResponse.Destroy;
begin
  FVoices.Free;
  inherited;
end;

function TDescribeVoicesResponse.Obj: TDescribeVoicesResponse;
begin
  Result := Self;
end;

function TDescribeVoicesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeVoicesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeVoicesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeVoicesResponse.GetVoices: TObjectList<TVoice>;
begin
  Result := FVoices;
end;

procedure TDescribeVoicesResponse.SetVoices(const Value: TObjectList<TVoice>);
begin
  if FVoices <> Value then
  begin
    FVoices.Free;
    FVoices := Value;
  end;
end;

function TDescribeVoicesResponse.IsSetVoices: Boolean;
begin
  Result := (FVoices <> nil) and (FVoices.Count > 0);
end;

end.
