unit AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TUpdateCustomVerificationEmailTemplateRequest = class;
  
  IUpdateCustomVerificationEmailTemplateRequest = interface
    function GetFailureRedirectionURL: string;
    procedure SetFailureRedirectionURL(const Value: string);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetSuccessRedirectionURL: string;
    procedure SetSuccessRedirectionURL(const Value: string);
    function GetTemplateContent: string;
    procedure SetTemplateContent(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function GetTemplateSubject: string;
    procedure SetTemplateSubject(const Value: string);
    function Obj: TUpdateCustomVerificationEmailTemplateRequest;
    function IsSetFailureRedirectionURL: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetSuccessRedirectionURL: Boolean;
    function IsSetTemplateContent: Boolean;
    function IsSetTemplateName: Boolean;
    function IsSetTemplateSubject: Boolean;
    property FailureRedirectionURL: string read GetFailureRedirectionURL write SetFailureRedirectionURL;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property SuccessRedirectionURL: string read GetSuccessRedirectionURL write SetSuccessRedirectionURL;
    property TemplateContent: string read GetTemplateContent write SetTemplateContent;
    property TemplateName: string read GetTemplateName write SetTemplateName;
    property TemplateSubject: string read GetTemplateSubject write SetTemplateSubject;
  end;
  
  TUpdateCustomVerificationEmailTemplateRequest = class(TAmazonSimpleEmailServiceV2Request, IUpdateCustomVerificationEmailTemplateRequest)
  strict private
    FFailureRedirectionURL: Nullable<string>;
    FFromEmailAddress: Nullable<string>;
    FSuccessRedirectionURL: Nullable<string>;
    FTemplateContent: Nullable<string>;
    FTemplateName: Nullable<string>;
    FTemplateSubject: Nullable<string>;
    function GetFailureRedirectionURL: string;
    procedure SetFailureRedirectionURL(const Value: string);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetSuccessRedirectionURL: string;
    procedure SetSuccessRedirectionURL(const Value: string);
    function GetTemplateContent: string;
    procedure SetTemplateContent(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function GetTemplateSubject: string;
    procedure SetTemplateSubject(const Value: string);
  strict protected
    function Obj: TUpdateCustomVerificationEmailTemplateRequest;
  public
    function IsSetFailureRedirectionURL: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetSuccessRedirectionURL: Boolean;
    function IsSetTemplateContent: Boolean;
    function IsSetTemplateName: Boolean;
    function IsSetTemplateSubject: Boolean;
    property FailureRedirectionURL: string read GetFailureRedirectionURL write SetFailureRedirectionURL;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property SuccessRedirectionURL: string read GetSuccessRedirectionURL write SetSuccessRedirectionURL;
    property TemplateContent: string read GetTemplateContent write SetTemplateContent;
    property TemplateName: string read GetTemplateName write SetTemplateName;
    property TemplateSubject: string read GetTemplateSubject write SetTemplateSubject;
  end;
  
implementation

{ TUpdateCustomVerificationEmailTemplateRequest }

function TUpdateCustomVerificationEmailTemplateRequest.Obj: TUpdateCustomVerificationEmailTemplateRequest;
begin
  Result := Self;
end;

function TUpdateCustomVerificationEmailTemplateRequest.GetFailureRedirectionURL: string;
begin
  Result := FFailureRedirectionURL.ValueOrDefault;
end;

procedure TUpdateCustomVerificationEmailTemplateRequest.SetFailureRedirectionURL(const Value: string);
begin
  FFailureRedirectionURL := Value;
end;

function TUpdateCustomVerificationEmailTemplateRequest.IsSetFailureRedirectionURL: Boolean;
begin
  Result := FFailureRedirectionURL.HasValue;
end;

function TUpdateCustomVerificationEmailTemplateRequest.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TUpdateCustomVerificationEmailTemplateRequest.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TUpdateCustomVerificationEmailTemplateRequest.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TUpdateCustomVerificationEmailTemplateRequest.GetSuccessRedirectionURL: string;
begin
  Result := FSuccessRedirectionURL.ValueOrDefault;
end;

procedure TUpdateCustomVerificationEmailTemplateRequest.SetSuccessRedirectionURL(const Value: string);
begin
  FSuccessRedirectionURL := Value;
end;

function TUpdateCustomVerificationEmailTemplateRequest.IsSetSuccessRedirectionURL: Boolean;
begin
  Result := FSuccessRedirectionURL.HasValue;
end;

function TUpdateCustomVerificationEmailTemplateRequest.GetTemplateContent: string;
begin
  Result := FTemplateContent.ValueOrDefault;
end;

procedure TUpdateCustomVerificationEmailTemplateRequest.SetTemplateContent(const Value: string);
begin
  FTemplateContent := Value;
end;

function TUpdateCustomVerificationEmailTemplateRequest.IsSetTemplateContent: Boolean;
begin
  Result := FTemplateContent.HasValue;
end;

function TUpdateCustomVerificationEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TUpdateCustomVerificationEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TUpdateCustomVerificationEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

function TUpdateCustomVerificationEmailTemplateRequest.GetTemplateSubject: string;
begin
  Result := FTemplateSubject.ValueOrDefault;
end;

procedure TUpdateCustomVerificationEmailTemplateRequest.SetTemplateSubject(const Value: string);
begin
  FTemplateSubject := Value;
end;

function TUpdateCustomVerificationEmailTemplateRequest.IsSetTemplateSubject: Boolean;
begin
  Result := FTemplateSubject.HasValue;
end;

end.
