unit AWS.SQS.Model.SendMessageBatchRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SQS.Model.Request, 
  AWS.SQS.Model.SendMessageBatchRequestEntry, 
  AWS.Nullable;

type
  TSendMessageBatchRequest = class;
  
  ISendMessageBatchRequest = interface
    function GetEntries: TObjectList<TSendMessageBatchRequestEntry>;
    procedure SetEntries(const Value: TObjectList<TSendMessageBatchRequestEntry>);
    function GetKeepEntries: Boolean;
    procedure SetKeepEntries(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TSendMessageBatchRequest;
    function IsSetEntries: Boolean;
    function IsSetQueueUrl: Boolean;
    property Entries: TObjectList<TSendMessageBatchRequestEntry> read GetEntries write SetEntries;
    property KeepEntries: Boolean read GetKeepEntries write SetKeepEntries;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TSendMessageBatchRequest = class(TAmazonSQSRequest, ISendMessageBatchRequest)
  strict private
    FEntries: TObjectList<TSendMessageBatchRequestEntry>;
    FKeepEntries: Boolean;
    FQueueUrl: Nullable<string>;
    function GetEntries: TObjectList<TSendMessageBatchRequestEntry>;
    procedure SetEntries(const Value: TObjectList<TSendMessageBatchRequestEntry>);
    function GetKeepEntries: Boolean;
    procedure SetKeepEntries(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TSendMessageBatchRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AQueueUrl: string; const AEntries: TObjectList<TSendMessageBatchRequestEntry>); overload;
    function IsSetEntries: Boolean;
    function IsSetQueueUrl: Boolean;
    property Entries: TObjectList<TSendMessageBatchRequestEntry> read GetEntries write SetEntries;
    property KeepEntries: Boolean read GetKeepEntries write SetKeepEntries;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TSendMessageBatchRequest }

constructor TSendMessageBatchRequest.Create;
begin
  inherited;
  FEntries := TObjectList<TSendMessageBatchRequestEntry>.Create;
end;

destructor TSendMessageBatchRequest.Destroy;
begin
  Entries := nil;
  inherited;
end;

function TSendMessageBatchRequest.Obj: TSendMessageBatchRequest;
begin
  Result := Self;
end;

constructor TSendMessageBatchRequest.Create(const AQueueUrl: string; const AEntries: TObjectList<TSendMessageBatchRequestEntry>);
begin
  Create;
  QueueUrl := AQueueUrl;
  Entries := AEntries;
end;

function TSendMessageBatchRequest.GetEntries: TObjectList<TSendMessageBatchRequestEntry>;
begin
  Result := FEntries;
end;

procedure TSendMessageBatchRequest.SetEntries(const Value: TObjectList<TSendMessageBatchRequestEntry>);
begin
  if FEntries <> Value then
  begin
    if not KeepEntries then
      FEntries.Free;
    FEntries := Value;
  end;
end;

function TSendMessageBatchRequest.GetKeepEntries: Boolean;
begin
  Result := FKeepEntries;
end;

procedure TSendMessageBatchRequest.SetKeepEntries(const Value: Boolean);
begin
  FKeepEntries := Value;
end;

function TSendMessageBatchRequest.IsSetEntries: Boolean;
begin
  Result := (FEntries <> nil) and (FEntries.Count > 0);
end;

function TSendMessageBatchRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TSendMessageBatchRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TSendMessageBatchRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
