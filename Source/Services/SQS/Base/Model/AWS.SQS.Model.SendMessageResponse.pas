unit AWS.SQS.Model.SendMessageResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TSendMessageResponse = class;
  
  ISendMessageResponse = interface(IAmazonWebServiceResponse)
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
    function Obj: TSendMessageResponse;
    function IsSetMD5OfMessageAttributes: Boolean;
    function IsSetMD5OfMessageBody: Boolean;
    function IsSetMD5OfMessageSystemAttributes: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetSequenceNumber: Boolean;
    property MD5OfMessageAttributes: string read GetMD5OfMessageAttributes write SetMD5OfMessageAttributes;
    property MD5OfMessageBody: string read GetMD5OfMessageBody write SetMD5OfMessageBody;
    property MD5OfMessageSystemAttributes: string read GetMD5OfMessageSystemAttributes write SetMD5OfMessageSystemAttributes;
    property MessageId: string read GetMessageId write SetMessageId;
    property SequenceNumber: string read GetSequenceNumber write SetSequenceNumber;
  end;
  
  TSendMessageResponse = class(TAmazonWebServiceResponse, ISendMessageResponse)
  strict private
    FMD5OfMessageAttributes: Nullable<string>;
    FMD5OfMessageBody: Nullable<string>;
    FMD5OfMessageSystemAttributes: Nullable<string>;
    FMessageId: Nullable<string>;
    FSequenceNumber: Nullable<string>;
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
    function Obj: TSendMessageResponse;
  public
    function IsSetMD5OfMessageAttributes: Boolean;
    function IsSetMD5OfMessageBody: Boolean;
    function IsSetMD5OfMessageSystemAttributes: Boolean;
    function IsSetMessageId: Boolean;
    function IsSetSequenceNumber: Boolean;
    property MD5OfMessageAttributes: string read GetMD5OfMessageAttributes write SetMD5OfMessageAttributes;
    property MD5OfMessageBody: string read GetMD5OfMessageBody write SetMD5OfMessageBody;
    property MD5OfMessageSystemAttributes: string read GetMD5OfMessageSystemAttributes write SetMD5OfMessageSystemAttributes;
    property MessageId: string read GetMessageId write SetMessageId;
    property SequenceNumber: string read GetSequenceNumber write SetSequenceNumber;
  end;
  
implementation

{ TSendMessageResponse }

function TSendMessageResponse.Obj: TSendMessageResponse;
begin
  Result := Self;
end;

function TSendMessageResponse.GetMD5OfMessageAttributes: string;
begin
  Result := FMD5OfMessageAttributes.ValueOrDefault;
end;

procedure TSendMessageResponse.SetMD5OfMessageAttributes(const Value: string);
begin
  FMD5OfMessageAttributes := Value;
end;

function TSendMessageResponse.IsSetMD5OfMessageAttributes: Boolean;
begin
  Result := FMD5OfMessageAttributes.HasValue;
end;

function TSendMessageResponse.GetMD5OfMessageBody: string;
begin
  Result := FMD5OfMessageBody.ValueOrDefault;
end;

procedure TSendMessageResponse.SetMD5OfMessageBody(const Value: string);
begin
  FMD5OfMessageBody := Value;
end;

function TSendMessageResponse.IsSetMD5OfMessageBody: Boolean;
begin
  Result := FMD5OfMessageBody.HasValue;
end;

function TSendMessageResponse.GetMD5OfMessageSystemAttributes: string;
begin
  Result := FMD5OfMessageSystemAttributes.ValueOrDefault;
end;

procedure TSendMessageResponse.SetMD5OfMessageSystemAttributes(const Value: string);
begin
  FMD5OfMessageSystemAttributes := Value;
end;

function TSendMessageResponse.IsSetMD5OfMessageSystemAttributes: Boolean;
begin
  Result := FMD5OfMessageSystemAttributes.HasValue;
end;

function TSendMessageResponse.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TSendMessageResponse.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TSendMessageResponse.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

function TSendMessageResponse.GetSequenceNumber: string;
begin
  Result := FSequenceNumber.ValueOrDefault;
end;

procedure TSendMessageResponse.SetSequenceNumber(const Value: string);
begin
  FSequenceNumber := Value;
end;

function TSendMessageResponse.IsSetSequenceNumber: Boolean;
begin
  Result := FSequenceNumber.HasValue;
end;

end.
