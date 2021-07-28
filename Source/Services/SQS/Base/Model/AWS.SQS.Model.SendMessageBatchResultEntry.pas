unit AWS.SQS.Model.SendMessageBatchResultEntry;

interface

uses
  Bcl.Types.Nullable;

type
  TSendMessageBatchResultEntry = class;
  
  ISendMessageBatchResultEntry = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMD5OfMessageAttributes: string;
    procedure SetMD5OfMessageAttributes(const Value: string);
    function GetMD5OfMessageBody: string;
    procedure SetMD5OfMessageBody(const Value: string);
    function GetMD5OfMessageSystemAttributes: string;
    procedure SetMD5OfMessageSystemAttributes(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetSequenceNumber: string;
    procedure SetSequenceNumber(const Value: string);
    function Obj: TSendMessageBatchResultEntry;
    function IsSetId: Boolean;
    function IsSetMD5OfMessageAttributes: Boolean;
    function IsSetMD5OfMessageBody: Boolean;
    function IsSetMD5OfMessageSystemAttributes: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetSequenceNumber: Boolean;
    property Id: string read GetId write SetId;
    property MD5OfMessageAttributes: string read GetMD5OfMessageAttributes write SetMD5OfMessageAttributes;
    property MD5OfMessageBody: string read GetMD5OfMessageBody write SetMD5OfMessageBody;
    property MD5OfMessageSystemAttributes: string read GetMD5OfMessageSystemAttributes write SetMD5OfMessageSystemAttributes;
    property MessageId: string read GetMessageId write SetMessageId;
    property SequenceNumber: string read GetSequenceNumber write SetSequenceNumber;
  end;
  
  TSendMessageBatchResultEntry = class
  strict private
    FId: Nullable<string>;
    FMD5OfMessageAttributes: Nullable<string>;
    FMD5OfMessageBody: Nullable<string>;
    FMD5OfMessageSystemAttributes: Nullable<string>;
    FMessageId: Nullable<string>;
    FSequenceNumber: Nullable<string>;
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMD5OfMessageAttributes: string;
    procedure SetMD5OfMessageAttributes(const Value: string);
    function GetMD5OfMessageBody: string;
    procedure SetMD5OfMessageBody(const Value: string);
    function GetMD5OfMessageSystemAttributes: string;
    procedure SetMD5OfMessageSystemAttributes(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetSequenceNumber: string;
    procedure SetSequenceNumber(const Value: string);
  strict protected
    function Obj: TSendMessageBatchResultEntry;
  public
    function IsSetId: Boolean;
    function IsSetMD5OfMessageAttributes: Boolean;
    function IsSetMD5OfMessageBody: Boolean;
    function IsSetMD5OfMessageSystemAttributes: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetSequenceNumber: Boolean;
    property Id: string read GetId write SetId;
    property MD5OfMessageAttributes: string read GetMD5OfMessageAttributes write SetMD5OfMessageAttributes;
    property MD5OfMessageBody: string read GetMD5OfMessageBody write SetMD5OfMessageBody;
    property MD5OfMessageSystemAttributes: string read GetMD5OfMessageSystemAttributes write SetMD5OfMessageSystemAttributes;
    property MessageId: string read GetMessageId write SetMessageId;
    property SequenceNumber: string read GetSequenceNumber write SetSequenceNumber;
  end;
  
implementation

{ TSendMessageBatchResultEntry }

function TSendMessageBatchResultEntry.Obj: TSendMessageBatchResultEntry;
begin
  Result := Self;
end;

function TSendMessageBatchResultEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TSendMessageBatchResultEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TSendMessageBatchResultEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TSendMessageBatchResultEntry.GetMD5OfMessageAttributes: string;
begin
  Result := FMD5OfMessageAttributes.ValueOrDefault;
end;

procedure TSendMessageBatchResultEntry.SetMD5OfMessageAttributes(const Value: string);
begin
  FMD5OfMessageAttributes := Value;
end;

function TSendMessageBatchResultEntry.IsSetMD5OfMessageAttributes: Boolean;
begin
  Result := FMD5OfMessageAttributes.HasValue;
end;

function TSendMessageBatchResultEntry.GetMD5OfMessageBody: string;
begin
  Result := FMD5OfMessageBody.ValueOrDefault;
end;

procedure TSendMessageBatchResultEntry.SetMD5OfMessageBody(const Value: string);
begin
  FMD5OfMessageBody := Value;
end;

function TSendMessageBatchResultEntry.IsSetMD5OfMessageBody: Boolean;
begin
  Result := FMD5OfMessageBody.HasValue;
end;

function TSendMessageBatchResultEntry.GetMD5OfMessageSystemAttributes: string;
begin
  Result := FMD5OfMessageSystemAttributes.ValueOrDefault;
end;

procedure TSendMessageBatchResultEntry.SetMD5OfMessageSystemAttributes(const Value: string);
begin
  FMD5OfMessageSystemAttributes := Value;
end;

function TSendMessageBatchResultEntry.IsSetMD5OfMessageSystemAttributes: Boolean;
begin
  Result := FMD5OfMessageSystemAttributes.HasValue;
end;

function TSendMessageBatchResultEntry.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TSendMessageBatchResultEntry.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TSendMessageBatchResultEntry.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

function TSendMessageBatchResultEntry.GetSequenceNumber: string;
begin
  Result := FSequenceNumber.ValueOrDefault;
end;

procedure TSendMessageBatchResultEntry.SetSequenceNumber(const Value: string);
begin
  FSequenceNumber := Value;
end;

function TSendMessageBatchResultEntry.IsSetSequenceNumber: Boolean;
begin
  Result := FSequenceNumber.HasValue;
end;

end.
