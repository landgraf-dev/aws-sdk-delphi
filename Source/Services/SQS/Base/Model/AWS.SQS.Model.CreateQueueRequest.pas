unit AWS.SQS.Model.CreateQueueRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TCreateQueueRequest = class;
  
  ICreateQueueRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetQueueName: string;
    procedure SetQueueName(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function Obj: TCreateQueueRequest;
    function IsSetAttributes: Boolean;
    function IsSetQueueName: Boolean;
    function IsSetTags: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property QueueName: string read GetQueueName write SetQueueName;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
  end;
  
  TCreateQueueRequest = class(TAmazonSQSRequest, ICreateQueueRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FQueueName: Nullable<string>;
    FTags: TDictionary<string, string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetQueueName: string;
    procedure SetQueueName(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
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
    property QueueName: string read GetQueueName write SetQueueName;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
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
  FTags.Free;
  FAttributes.Free;
  inherited;
end;

function TCreateQueueRequest.Obj: TCreateQueueRequest;
begin
  Result := Self;
end;

constructor TCreateQueueRequest.Create(const AQueueName: string);
begin
  inherited Create;
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
    FAttributes.Free;
    FAttributes := Value;
  end;
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
    FTags.Free;
    FTags := Value;
  end;
end;

function TCreateQueueRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
