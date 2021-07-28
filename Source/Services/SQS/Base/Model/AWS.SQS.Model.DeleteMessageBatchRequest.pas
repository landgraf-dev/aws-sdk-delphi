unit AWS.SQS.Model.DeleteMessageBatchRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request, 
  AWS.SQS.Model.DeleteMessageBatchRequestEntry;

type
  TDeleteMessageBatchRequest = class;
  
  IDeleteMessageBatchRequest = interface
    function GetEntries: TObjectList<TDeleteMessageBatchRequestEntry>;
    procedure SetEntries(const Value: TObjectList<TDeleteMessageBatchRequestEntry>);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TDeleteMessageBatchRequest;
    function IsSetEntries: Boolean;
    function IsSetQueueUrl: Boolean;
    property Entries: TObjectList<TDeleteMessageBatchRequestEntry> read GetEntries write SetEntries;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TDeleteMessageBatchRequest = class(TAmazonSQSRequest, IDeleteMessageBatchRequest)
  strict private
    FEntries: TObjectList<TDeleteMessageBatchRequestEntry>;
    FQueueUrl: Nullable<string>;
    function GetEntries: TObjectList<TDeleteMessageBatchRequestEntry>;
    procedure SetEntries(const Value: TObjectList<TDeleteMessageBatchRequestEntry>);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TDeleteMessageBatchRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AQueueUrl: string; const AEntries: TObjectList<TDeleteMessageBatchRequestEntry>); overload;
    function IsSetEntries: Boolean;
    function IsSetQueueUrl: Boolean;
    property Entries: TObjectList<TDeleteMessageBatchRequestEntry> read GetEntries write SetEntries;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TDeleteMessageBatchRequest }

constructor TDeleteMessageBatchRequest.Create;
begin
  inherited;
  FEntries := TObjectList<TDeleteMessageBatchRequestEntry>.Create;
end;

destructor TDeleteMessageBatchRequest.Destroy;
begin
  FEntries.Free;
  inherited;
end;

function TDeleteMessageBatchRequest.Obj: TDeleteMessageBatchRequest;
begin
  Result := Self;
end;

constructor TDeleteMessageBatchRequest.Create(const AQueueUrl: string; const AEntries: TObjectList<TDeleteMessageBatchRequestEntry>);
begin
  inherited Create;
  QueueUrl := AQueueUrl;
  Entries := AEntries;
end;

function TDeleteMessageBatchRequest.GetEntries: TObjectList<TDeleteMessageBatchRequestEntry>;
begin
  Result := FEntries;
end;

procedure TDeleteMessageBatchRequest.SetEntries(const Value: TObjectList<TDeleteMessageBatchRequestEntry>);
begin
  if FEntries <> Value then
  begin
    FEntries.Free;
    FEntries := Value;
  end;
end;

function TDeleteMessageBatchRequest.IsSetEntries: Boolean;
begin
  Result := (FEntries <> nil) and (FEntries.Count > 0);
end;

function TDeleteMessageBatchRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TDeleteMessageBatchRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TDeleteMessageBatchRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
