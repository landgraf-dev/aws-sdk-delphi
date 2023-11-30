unit AWS.SQS.Model.CreateQueueRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SQS.Model.Request, 
  AWS.Nullable;

type
  TCreateQueueRequest = class;
  
  ICreateQueueRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetQueueName: string;
    procedure SetQueueName(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateQueueRequest;
    function IsSetAttributes: Boolean;
    function IsSetQueueName: Boolean;
    function IsSetTags: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property QueueName: string read GetQueueName write SetQueueName;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateQueueRequest = class(TAmazonSQSRequest, ICreateQueueRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    FQueueName: Nullable<string>;
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetQueueName: string;
    procedure SetQueueName(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateQueueRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AQueueName: string); overload;
    function IsSetAttributes: Boolean;
    function IsSetQueueName: Boolean;
    function IsSetTags: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property QueueName: string read GetQueueName write SetQueueName;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateQueueRequest }

constructor TCreateQueueRequest.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
  FTags := TDictionary<string, string>.Create;
end;

destructor TCreateQueueRequest.Destroy;
begin
  Tags := nil;
  Attributes := nil;
  inherited;
end;

function TCreateQueueRequest.Obj: TCreateQueueRequest;
begin
  Result := Self;
end;

constructor TCreateQueueRequest.Create(const AQueueName: string);
begin
  Create;
  QueueName := AQueueName;
end;

function TCreateQueueRequest.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TCreateQueueRequest.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TCreateQueueRequest.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TCreateQueueRequest.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TCreateQueueRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TCreateQueueRequest.GetQueueName: string;
begin
  Result := FQueueName.ValueOrDefault;
end;

procedure TCreateQueueRequest.SetQueueName(const Value: string);
begin
  FQueueName := Value;
end;

function TCreateQueueRequest.IsSetQueueName: Boolean;
begin
  Result := FQueueName.HasValue;
end;

function TCreateQueueRequest.GetTags: TDictionary<string, string>;
begin
  Result := FTags;
end;

procedure TCreateQueueRequest.SetTags(const Value: TDictionary<string, string>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateQueueRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateQueueRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateQueueRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
