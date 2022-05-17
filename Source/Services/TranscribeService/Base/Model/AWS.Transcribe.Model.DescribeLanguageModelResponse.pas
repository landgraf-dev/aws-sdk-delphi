unit AWS.Transcribe.Model.DescribeLanguageModelResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.LanguageModel;

type
  TDescribeLanguageModelResponse = class;
  
  IDescribeLanguageModelResponse = interface(IAmazonWebServiceResponse)
    function GetLanguageModel: TLanguageModel;
    procedure SetLanguageModel(const Value: TLanguageModel);
    function GetKeepLanguageModel: Boolean;
    procedure SetKeepLanguageModel(const Value: Boolean);
    function Obj: TDescribeLanguageModelResponse;
    function IsSetLanguageModel: Boolean;
    property LanguageModel: TLanguageModel read GetLanguageModel write SetLanguageModel;
    property KeepLanguageModel: Boolean read GetKeepLanguageModel write SetKeepLanguageModel;
  end;
  
  TDescribeLanguageModelResponse = class(TAmazonWebServiceResponse, IDescribeLanguageModelResponse)
  strict private
    FLanguageModel: TLanguageModel;
    FKeepLanguageModel: Boolean;
    function GetLanguageModel: TLanguageModel;
    procedure SetLanguageModel(const Value: TLanguageModel);
    function GetKeepLanguageModel: Boolean;
    procedure SetKeepLanguageModel(const Value: Boolean);
  strict protected
    function Obj: TDescribeLanguageModelResponse;
  public
    destructor Destroy; override;
    function IsSetLanguageModel: Boolean;
    property LanguageModel: TLanguageModel read GetLanguageModel write SetLanguageModel;
    property KeepLanguageModel: Boolean read GetKeepLanguageModel write SetKeepLanguageModel;
  end;
  
implementation

{ TDescribeLanguageModelResponse }

destructor TDescribeLanguageModelResponse.Destroy;
begin
  LanguageModel := nil;
  inherited;
end;

function TDescribeLanguageModelResponse.Obj: TDescribeLanguageModelResponse;
begin
  Result := Self;
end;

function TDescribeLanguageModelResponse.GetLanguageModel: TLanguageModel;
begin
  Result := FLanguageModel;
end;

procedure TDescribeLanguageModelResponse.SetLanguageModel(const Value: TLanguageModel);
begin
  if FLanguageModel <> Value then
  begin
    if not KeepLanguageModel then
      FLanguageModel.Free;
    FLanguageModel := Value;
  end;
end;

function TDescribeLanguageModelResponse.GetKeepLanguageModel: Boolean;
begin
  Result := FKeepLanguageModel;
end;

procedure TDescribeLanguageModelResponse.SetKeepLanguageModel(const Value: Boolean);
begin
  FKeepLanguageModel := Value;
end;

function TDescribeLanguageModelResponse.IsSetLanguageModel: Boolean;
begin
  Result := FLanguageModel <> nil;
end;

end.
