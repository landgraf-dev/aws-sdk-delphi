unit AWS.SQS.Model.ChangeMessageVisibilityBatchRequestEntry;

interface

uses
  Bcl.Types.Nullable;

type
  TChangeMessageVisibilityBatchRequestEntry = class;
  
  IChangeMessageVisibilityBatchRequestEntry = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
    function GetVisibilityTimeout: Integer;
    procedure SetVisibilityTimeout(const Value: Integer);
    function Obj: TChangeMessageVisibilityBatchRequestEntry;
    function IsSetId: Boolean;
    function IsSetReceiptHandle: Boolean;
    function IsSetVisibilityTimeout: Boolean;
    property Id: string read GetId write SetId;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
    property VisibilityTimeout: Integer read GetVisibilityTimeout write SetVisibilityTimeout;
  end;
  
  TChangeMessageVisibilityBatchRequestEntry = class
  strict private
    FId: Nullable<string>;
    FReceiptHandle: Nullable<string>;
    FVisibilityTimeout: Nullable<Integer>;
    function GetId: string;
    procedure SetId(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
    function GetVisibilityTimeout: Integer;
    procedure SetVisibilityTimeout(const Value: Integer);
  strict protected
    function Obj: TChangeMessageVisibilityBatchRequestEntry;
  public
    constructor Create(const AId: string; const AReceiptHandle: string); overload;
    function IsSetId: Boolean;
    function IsSetReceiptHandle: Boolean;
    function IsSetVisibilityTimeout: Boolean;
    property Id: string read GetId write SetId;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
    property VisibilityTimeout: Integer read GetVisibilityTimeout write SetVisibilityTimeout;
  end;
  
implementation

{ TChangeMessageVisibilityBatchRequestEntry }

function TChangeMessageVisibilityBatchRequestEntry.Obj: TChangeMessageVisibilityBatchRequestEntry;
begin
  Result := Self;
end;

constructor TChangeMessageVisibilityBatchRequestEntry.Create(const AId: string; const AReceiptHandle: string);
begin
  inherited Create;
  Id := AId;
  ReceiptHandle := AReceiptHandle;
end;

function TChangeMessageVisibilityBatchRequestEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TChangeMessageVisibilityBatchRequestEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TChangeMessageVisibilityBatchRequestEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TChangeMessageVisibilityBatchRequestEntry.GetReceiptHandle: string;
begin
  Result := FReceiptHandle.ValueOrDefault;
end;

procedure TChangeMessageVisibilityBatchRequestEntry.SetReceiptHandle(const Value: string);
begin
  FReceiptHandle := Value;
end;

function TChangeMessageVisibilityBatchRequestEntry.IsSetReceiptHandle: Boolean;
begin
  Result := FReceiptHandle.HasValue;
end;

function TChangeMessageVisibilityBatchRequestEntry.GetVisibilityTimeout: Integer;
begin
  Result := FVisibilityTimeout.ValueOrDefault;
end;

procedure TChangeMessageVisibilityBatchRequestEntry.SetVisibilityTimeout(const Value: Integer);
begin
  FVisibilityTimeout := Value;
end;

function TChangeMessageVisibilityBatchRequestEntry.IsSetVisibilityTimeout: Boolean;
begin
  Result := FVisibilityTimeout.HasValue;
end;

end.
