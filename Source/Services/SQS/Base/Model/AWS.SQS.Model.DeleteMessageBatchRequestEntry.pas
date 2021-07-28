unit AWS.SQS.Model.DeleteMessageBatchRequestEntry;

interface

uses
  Bcl.Types.Nullable;

type
  TDeleteMessageBatchRequestEntry = class;
  
  IDeleteMessageBatchRequestEntry = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
    function Obj: TDeleteMessageBatchRequestEntry;
    function IsSetId: Boolean;
    function IsSetReceiptHandle: Boolean;
    property Id: string read GetId write SetId;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
  end;
  
  TDeleteMessageBatchRequestEntry = class
  strict private
    FId: Nullable<string>;
    FReceiptHandle: Nullable<string>;
    function GetId: string;
    procedure SetId(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
  strict protected
    function Obj: TDeleteMessageBatchRequestEntry;
  public
    constructor Create(const AId: string; const AReceiptHandle: string); overload;
    function IsSetId: Boolean;
    function IsSetReceiptHandle: Boolean;
    property Id: string read GetId write SetId;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
  end;
  
implementation

{ TDeleteMessageBatchRequestEntry }

function TDeleteMessageBatchRequestEntry.Obj: TDeleteMessageBatchRequestEntry;
begin
  Result := Self;
end;

constructor TDeleteMessageBatchRequestEntry.Create(const AId: string; const AReceiptHandle: string);
begin
  inherited Create;
  Id := AId;
  ReceiptHandle := AReceiptHandle;
end;

function TDeleteMessageBatchRequestEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TDeleteMessageBatchRequestEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TDeleteMessageBatchRequestEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TDeleteMessageBatchRequestEntry.GetReceiptHandle: string;
begin
  Result := FReceiptHandle.ValueOrDefault;
end;

procedure TDeleteMessageBatchRequestEntry.SetReceiptHandle(const Value: string);
begin
  FReceiptHandle := Value;
end;

function TDeleteMessageBatchRequestEntry.IsSetReceiptHandle: Boolean;
begin
  Result := FReceiptHandle.HasValue;
end;

end.
