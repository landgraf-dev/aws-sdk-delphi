unit AWS.SES.Model.BounceAction;

interface

uses
  AWS.Nullable;

type
  TBounceAction = class;
  
  IBounceAction = interface
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetSender: string;
    procedure SetSender(const Value: string);
    function GetSmtpReplyCode: string;
    procedure SetSmtpReplyCode(const Value: string);
    function GetStatusCode: string;
    procedure SetStatusCode(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TBounceAction;
    function IsSetMessage: Boolean;
    function IsSetSender: Boolean;
    function IsSetSmtpReplyCode: Boolean;
    function IsSetStatusCode: Boolean;
    function IsSetTopicArn: Boolean;
    property Message: string read GetMessage write SetMessage;
    property Sender: string read GetSender write SetSender;
    property SmtpReplyCode: string read GetSmtpReplyCode write SetSmtpReplyCode;
    property StatusCode: string read GetStatusCode write SetStatusCode;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TBounceAction = class
  strict private
    FMessage: Nullable<string>;
    FSender: Nullable<string>;
    FSmtpReplyCode: Nullable<string>;
    FStatusCode: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetSender: string;
    procedure SetSender(const Value: string);
    function GetSmtpReplyCode: string;
    procedure SetSmtpReplyCode(const Value: string);
    function GetStatusCode: string;
    procedure SetStatusCode(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TBounceAction;
  public
    function IsSetMessage: Boolean;
    function IsSetSender: Boolean;
    function IsSetSmtpReplyCode: Boolean;
    function IsSetStatusCode: Boolean;
    function IsSetTopicArn: Boolean;
    property Message: string read GetMessage write SetMessage;
    property Sender: string read GetSender write SetSender;
    property SmtpReplyCode: string read GetSmtpReplyCode write SetSmtpReplyCode;
    property StatusCode: string read GetStatusCode write SetStatusCode;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TBounceAction }

function TBounceAction.Obj: TBounceAction;
begin
  Result := Self;
end;

function TBounceAction.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TBounceAction.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TBounceAction.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TBounceAction.GetSender: string;
begin
  Result := FSender.ValueOrDefault;
end;

procedure TBounceAction.SetSender(const Value: string);
begin
  FSender := Value;
end;

function TBounceAction.IsSetSender: Boolean;
begin
  Result := FSender.HasValue;
end;

function TBounceAction.GetSmtpReplyCode: string;
begin
  Result := FSmtpReplyCode.ValueOrDefault;
end;

procedure TBounceAction.SetSmtpReplyCode(const Value: string);
begin
  FSmtpReplyCode := Value;
end;

function TBounceAction.IsSetSmtpReplyCode: Boolean;
begin
  Result := FSmtpReplyCode.HasValue;
end;

function TBounceAction.GetStatusCode: string;
begin
  Result := FStatusCode.ValueOrDefault;
end;

procedure TBounceAction.SetStatusCode(const Value: string);
begin
  FStatusCode := Value;
end;

function TBounceAction.IsSetStatusCode: Boolean;
begin
  Result := FStatusCode.HasValue;
end;

function TBounceAction.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TBounceAction.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TBounceAction.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
