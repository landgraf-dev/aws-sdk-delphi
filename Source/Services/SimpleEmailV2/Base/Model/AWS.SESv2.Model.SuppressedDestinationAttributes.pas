unit AWS.SESv2.Model.SuppressedDestinationAttributes;

interface

uses
  Bcl.Types.Nullable;

type
  TSuppressedDestinationAttributes = class;
  
  ISuppressedDestinationAttributes = interface
    function GetFeedbackId: string;
    procedure SetFeedbackId(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function Obj: TSuppressedDestinationAttributes;
    function IsSetFeedbackId: Boolean;
    function IsSetMessageId: Boolean;
    property FeedbackId: string read GetFeedbackId write SetFeedbackId;
    property MessageId: string read GetMessageId write SetMessageId;
  end;
  
  TSuppressedDestinationAttributes = class
  strict private
    FFeedbackId: Nullable<string>;
    FMessageId: Nullable<string>;
    function GetFeedbackId: string;
    procedure SetFeedbackId(const Value: string);
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
  strict protected
    function Obj: TSuppressedDestinationAttributes;
  public
    function IsSetFeedbackId: Boolean;
    function IsSetMessageId: Boolean;
    property FeedbackId: string read GetFeedbackId write SetFeedbackId;
    property MessageId: string read GetMessageId write SetMessageId;
  end;
  
implementation

{ TSuppressedDestinationAttributes }

function TSuppressedDestinationAttributes.Obj: TSuppressedDestinationAttributes;
begin
  Result := Self;
end;

function TSuppressedDestinationAttributes.GetFeedbackId: string;
begin
  Result := FFeedbackId.ValueOrDefault;
end;

procedure TSuppressedDestinationAttributes.SetFeedbackId(const Value: string);
begin
  FFeedbackId := Value;
end;

function TSuppressedDestinationAttributes.IsSetFeedbackId: Boolean;
begin
  Result := FFeedbackId.HasValue;
end;

function TSuppressedDestinationAttributes.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TSuppressedDestinationAttributes.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TSuppressedDestinationAttributes.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

end.
