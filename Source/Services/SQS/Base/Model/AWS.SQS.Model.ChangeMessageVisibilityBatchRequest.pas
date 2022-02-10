unit AWS.SQS.Model.ChangeMessageVisibilityBatchRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SQS.Model.Request, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchRequestEntry;

type
  TChangeMessageVisibilityBatchRequest = class;
  
  IChangeMessageVisibilityBatchRequest = interface
    function GetEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>;
    procedure SetEntries(const Value: TObjectList<TChangeMessageVisibilityBatchRequestEntry>);
    function GetKeepEntries: Boolean;
    procedure SetKeepEntries(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TChangeMessageVisibilityBatchRequest;
    function IsSetEntries: Boolean;
    function IsSetQueueUrl: Boolean;
    property Entries: TObjectList<TChangeMessageVisibilityBatchRequestEntry> read GetEntries write SetEntries;
    property KeepEntries: Boolean read GetKeepEntries write SetKeepEntries;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TChangeMessageVisibilityBatchRequest = class(TAmazonSQSRequest, IChangeMessageVisibilityBatchRequest)
  strict private
    FEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>;
    FKeepEntries: Boolean;
    FQueueUrl: Nullable<string>;
    function GetEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>;
    procedure SetEntries(const Value: TObjectList<TChangeMessageVisibilityBatchRequestEntry>);
    function GetKeepEntries: Boolean;
    procedure SetKeepEntries(const Value: Boolean);
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TChangeMessageVisibilityBatchRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AQueueUrl: string; const AEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>); overload;
    function IsSetEntries: Boolean;
    function IsSetQueueUrl: Boolean;
    property Entries: TObjectList<TChangeMessageVisibilityBatchRequestEntry> read GetEntries write SetEntries;
    property KeepEntries: Boolean read GetKeepEntries write SetKeepEntries;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TChangeMessageVisibilityBatchRequest }

constructor TChangeMessageVisibilityBatchRequest.Create;
begin
  inherited;
  FEntries := TObjectList<TChangeMessageVisibilityBatchRequestEntry>.Create;
end;

destructor TChangeMessageVisibilityBatchRequest.Destroy;
begin
  Entries := nil;
  inherited;
end;

function TChangeMessageVisibilityBatchRequest.Obj: TChangeMessageVisibilityBatchRequest;
begin
  Result := Self;
end;

constructor TChangeMessageVisibilityBatchRequest.Create(const AQueueUrl: string; const AEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>);
begin
  Create;
  QueueUrl := AQueueUrl;
  Entries := AEntries;
end;

function TChangeMessageVisibilityBatchRequest.GetEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>;
begin
  Result := FEntries;
end;

procedure TChangeMessageVisibilityBatchRequest.SetEntries(const Value: TObjectList<TChangeMessageVisibilityBatchRequestEntry>);
begin
  if FEntries <> Value then
  begin
    if not KeepEntries then
      FEntries.Free;
    FEntries := Value;
  end;
end;

function TChangeMessageVisibilityBatchRequest.GetKeepEntries: Boolean;
begin
  Result := FKeepEntries;
end;

procedure TChangeMessageVisibilityBatchRequest.SetKeepEntries(const Value: Boolean);
begin
  FKeepEntries := Value;
end;

function TChangeMessageVisibilityBatchRequest.IsSetEntries: Boolean;
begin
  Result := (FEntries <> nil) and (FEntries.Count > 0);
end;

function TChangeMessageVisibilityBatchRequest.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TChangeMessageVisibilityBatchRequest.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TChangeMessageVisibilityBatchRequest.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
