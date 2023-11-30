unit AWS.SQS.Model.Message;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SQS.Model.MessageAttributeValue;

type
  TMessage = class;
  
  IMessage = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetBody: string;
    procedure SetBody(const Value: string);
    function GetMD5OfBody: string;
    procedure SetMD5OfBody(const Value: string);
    function GetMD5OfMessageAttributes: string;
    procedure SetMD5OfMessageAttributes(const Value: string);
    function GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    procedure SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
    function GetKeepMessageAttributes: Boolean;
    procedure SetKeepMessageAttributes(const Value: Boolean);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
    function Obj: TMessage;
    function IsSetAttributes: Boolean;
    function IsSetBody: Boolean;
    function IsSetMD5OfBody: Boolean;
    function IsSetMD5OfMessageAttributes: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetReceiptHandle: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property Body: string read GetBody write SetBody;
    property MD5OfBody: string read GetMD5OfBody write SetMD5OfBody;
    property MD5OfMessageAttributes: string read GetMD5OfMessageAttributes write SetMD5OfMessageAttributes;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property KeepMessageAttributes: Boolean read GetKeepMessageAttributes write SetKeepMessageAttributes;
    property MessageId: string read GetMessageId write SetMessageId;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
  end;
  
  TMessage = class
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    FBody: Nullable<string>;
    FMD5OfBody: Nullable<string>;
    FMD5OfMessageAttributes: Nullable<string>;
    FMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    FKeepMessageAttributes: Boolean;
    FMessageId: Nullable<string>;
    FReceiptHandle: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetBody: string;
    procedure SetBody(const Value: string);
    function GetMD5OfBody: string;
    procedure SetMD5OfBody(const Value: string);
    function GetMD5OfMessageAttributes: string;
    procedure SetMD5OfMessageAttributes(const Value: string);
    function GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
    procedure SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
    function GetKeepMessageAttributes: Boolean;
    procedure SetKeepMessageAttributes(const Value: Boolean);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetReceiptHandle: string;
    procedure SetReceiptHandle(const Value: string);
  strict protected
    function Obj: TMessage;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetBody: Boolean;
    function IsSetMD5OfBody: Boolean;
    function IsSetMD5OfMessageAttributes: Boolean;
    function IsSetMessageAttributes: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetReceiptHandle: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property Body: string read GetBody write SetBody;
    property MD5OfBody: string read GetMD5OfBody write SetMD5OfBody;
    property MD5OfMessageAttributes: string read GetMD5OfMessageAttributes write SetMD5OfMessageAttributes;
    property MessageAttributes: TObjectDictionary<string, TMessageAttributeValue> read GetMessageAttributes write SetMessageAttributes;
    property KeepMessageAttributes: Boolean read GetKeepMessageAttributes write SetKeepMessageAttributes;
    property MessageId: string read GetMessageId write SetMessageId;
    property ReceiptHandle: string read GetReceiptHandle write SetReceiptHandle;
  end;
  
implementation

{ TMessage }

constructor TMessage.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
  FMessageAttributes := TObjectDictionary<string, TMessageAttributeValue>.Create([doOwnsValues]);
end;

destructor TMessage.Destroy;
begin
  MessageAttributes := nil;
  Attributes := nil;
  inherited;
end;

function TMessage.Obj: TMessage;
begin
  Result := Self;
end;

function TMessage.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TMessage.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TMessage.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TMessage.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TMessage.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TMessage.GetBody: string;
begin
  Result := FBody.ValueOrDefault;
end;

procedure TMessage.SetBody(const Value: string);
begin
  FBody := Value;
end;

function TMessage.IsSetBody: Boolean;
begin
  Result := FBody.HasValue;
end;

function TMessage.GetMD5OfBody: string;
begin
  Result := FMD5OfBody.ValueOrDefault;
end;

procedure TMessage.SetMD5OfBody(const Value: string);
begin
  FMD5OfBody := Value;
end;

function TMessage.IsSetMD5OfBody: Boolean;
begin
  Result := FMD5OfBody.HasValue;
end;

function TMessage.GetMD5OfMessageAttributes: string;
begin
  Result := FMD5OfMessageAttributes.ValueOrDefault;
end;

procedure TMessage.SetMD5OfMessageAttributes(const Value: string);
begin
  FMD5OfMessageAttributes := Value;
end;

function TMessage.IsSetMD5OfMessageAttributes: Boolean;
begin
  Result := FMD5OfMessageAttributes.HasValue;
end;

function TMessage.GetMessageAttributes: TObjectDictionary<string, TMessageAttributeValue>;
begin
  Result := FMessageAttributes;
end;

procedure TMessage.SetMessageAttributes(const Value: TObjectDictionary<string, TMessageAttributeValue>);
begin
  if FMessageAttributes <> Value then
  begin
    if not KeepMessageAttributes then
      FMessageAttributes.Free;
    FMessageAttributes := Value;
  end;
end;

function TMessage.GetKeepMessageAttributes: Boolean;
begin
  Result := FKeepMessageAttributes;
end;

procedure TMessage.SetKeepMessageAttributes(const Value: Boolean);
begin
  FKeepMessageAttributes := Value;
end;

function TMessage.IsSetMessageAttributes: Boolean;
begin
  Result := (FMessageAttributes <> nil) and (FMessageAttributes.Count > 0);
end;

function TMessage.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TMessage.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TMessage.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

function TMessage.GetReceiptHandle: string;
begin
  Result := FReceiptHandle.ValueOrDefault;
end;

procedure TMessage.SetReceiptHandle(const Value: string);
begin
  FReceiptHandle := Value;
end;

function TMessage.IsSetReceiptHandle: Boolean;
begin
  Result := FReceiptHandle.HasValue;
end;

end.
