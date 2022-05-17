unit AWS.Transcribe.Model.CreateLanguageModelRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.InputDataConfig;

type
  TCreateLanguageModelRequest = class;
  
  ICreateLanguageModelRequest = interface
    function GetBaseModelName: TBaseModelName;
    procedure SetBaseModelName(const Value: TBaseModelName);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetLanguageCode: TCLMLanguageCode;
    procedure SetLanguageCode(const Value: TCLMLanguageCode);
    function GetModelName: string;
    procedure SetModelName(const Value: string);
    function Obj: TCreateLanguageModelRequest;
    function IsSetBaseModelName: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetModelName: Boolean;
    property BaseModelName: TBaseModelName read GetBaseModelName write SetBaseModelName;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property LanguageCode: TCLMLanguageCode read GetLanguageCode write SetLanguageCode;
    property ModelName: string read GetModelName write SetModelName;
  end;
  
  TCreateLanguageModelRequest = class(TAmazonTranscribeServiceRequest, ICreateLanguageModelRequest)
  strict private
    FBaseModelName: Nullable<TBaseModelName>;
    FInputDataConfig: TInputDataConfig;
    FKeepInputDataConfig: Boolean;
    FLanguageCode: Nullable<TCLMLanguageCode>;
    FModelName: Nullable<string>;
    function GetBaseModelName: TBaseModelName;
    procedure SetBaseModelName(const Value: TBaseModelName);
    function GetInputDataConfig: TInputDataConfig;
    procedure SetInputDataConfig(const Value: TInputDataConfig);
    function GetKeepInputDataConfig: Boolean;
    procedure SetKeepInputDataConfig(const Value: Boolean);
    function GetLanguageCode: TCLMLanguageCode;
    procedure SetLanguageCode(const Value: TCLMLanguageCode);
    function GetModelName: string;
    procedure SetModelName(const Value: string);
  strict protected
    function Obj: TCreateLanguageModelRequest;
  public
    destructor Destroy; override;
    function IsSetBaseModelName: Boolean;
    function IsSetInputDataConfig: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetModelName: Boolean;
    property BaseModelName: TBaseModelName read GetBaseModelName write SetBaseModelName;
    property InputDataConfig: TInputDataConfig read GetInputDataConfig write SetInputDataConfig;
    property KeepInputDataConfig: Boolean read GetKeepInputDataConfig write SetKeepInputDataConfig;
    property LanguageCode: TCLMLanguageCode read GetLanguageCode write SetLanguageCode;
    property ModelName: string read GetModelName write SetModelName;
  end;
  
implementation

{ TCreateLanguageModelRequest }

destructor TCreateLanguageModelRequest.Destroy;
begin
  InputDataConfig := nil;
  inherited;
end;

function TCreateLanguageModelRequest.Obj: TCreateLanguageModelRequest;
begin
  Result := Self;
end;

function TCreateLanguageModelRequest.GetBaseModelName: TBaseModelName;
begin
  Result := FBaseModelName.ValueOrDefault;
end;

procedure TCreateLanguageModelRequest.SetBaseModelName(const Value: TBaseModelName);
begin
  FBaseModelName := Value;
end;

function TCreateLanguageModelRequest.IsSetBaseModelName: Boolean;
begin
  Result := FBaseModelName.HasValue;
end;

function TCreateLanguageModelRequest.GetInputDataConfig: TInputDataConfig;
begin
  Result := FInputDataConfig;
end;

procedure TCreateLanguageModelRequest.SetInputDataConfig(const Value: TInputDataConfig);
begin
  if FInputDataConfig <> Value then
  begin
    if not KeepInputDataConfig then
      FInputDataConfig.Free;
    FInputDataConfig := Value;
  end;
end;

function TCreateLanguageModelRequest.GetKeepInputDataConfig: Boolean;
begin
  Result := FKeepInputDataConfig;
end;

procedure TCreateLanguageModelRequest.SetKeepInputDataConfig(const Value: Boolean);
begin
  FKeepInputDataConfig := Value;
end;

function TCreateLanguageModelRequest.IsSetInputDataConfig: Boolean;
begin
  Result := FInputDataConfig <> nil;
end;

function TCreateLanguageModelRequest.GetLanguageCode: TCLMLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCreateLanguageModelRequest.SetLanguageCode(const Value: TCLMLanguageCode);
begin
  FLanguageCode := Value;
end;

function TCreateLanguageModelRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCreateLanguageModelRequest.GetModelName: string;
begin
  Result := FModelName.ValueOrDefault;
end;

procedure TCreateLanguageModelRequest.SetModelName(const Value: string);
begin
  FModelName := Value;
end;

function TCreateLanguageModelRequest.IsSetModelName: Boolean;
begin
  Result := FModelName.HasValue;
end;

end.
