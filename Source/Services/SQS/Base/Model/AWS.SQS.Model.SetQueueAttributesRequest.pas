unit AWS.SQS.Model.SetQueueAttributesRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request;

type
  TSetQueueAttributesRequest = class;
  
  ISetQueueAttributesRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TSetQueueAttributesRequest;
    function IsSetAttributes: Boolean;
    function IsSetQueueUrl: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TSetQueueAttributesRequest = class(TAmazonSQSRequest, ISetQueueAttributesRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    FQueueUrl: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TSetQueueAttributesRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AQueueUrl: string; const AAttributes: TDictionary<string, string>); overload;
    function IsSetAttributes: Boolean;
    function IsSetQueueUrl: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TSetQueueAttributesRequest }

constructor TSetQueueAttributesRequest.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TSetQueueAttributesRequest.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TSetQueueAttributesRequest.Obj: TSetQueueAttributesRequest;
begin
  Result := Self;
end;

constructor TSetQueueAttributesRequest.Create(const AQueueUrl: string; const AAttributes: TDictionary<string, string>);
begin
  inherited Create;
  QueueUrl := AQueueUrl;
  Attributes := AAttributes;
end;

function TSetQueueAttributesRequest.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TSetQueueAttributesRequest.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TSetQueueAttributesRequest.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TSetQueueAttributesRequest.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TSetQueueAttributesRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TSetQueueAttributesRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TSetQueueAttributesRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TSetQueueAttributesRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
