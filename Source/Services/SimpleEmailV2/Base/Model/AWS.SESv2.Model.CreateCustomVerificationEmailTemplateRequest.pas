unit AWS.SESv2.Model.CreateCustomVerificationEmailTemplateRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TCreateCustomVerificationEmailTemplateRequest = class;
  
  ICreateCustomVerificationEmailTemplateRequest = interface
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
    function Obj: TCreateCustomVerificationEmailTemplateRequest;
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
  
  TCreateCustomVerificationEmailTemplateRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateCustomVerificationEmailTemplateRequest)
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
    function Obj: TCreateCustomVerificationEmailTemplateRequest;
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

{ TCreateCustomVerificationEmailTemplateRequest }

function TCreateCustomVerificationEmailTemplateRequest.Obj: TCreateCustomVerificationEmailTemplateRequest;
begin
  Result := Self;
end;

function TCreateCustomVerificationEmailTemplateRequest.GetFailureRedirectionURL: string;
begin
  Result := FFailureRedirectionURL.ValueOrDefault;
end;

procedure TCreateCustomVerificationEmailTemplateRequest.SetFailureRedirectionURL(const Value: string);
begin
  FFailureRedirectionURL := Value;
end;

function TCreateCustomVerificationEmailTemplateRequest.IsSetFailureRedirectionURL: Boolean;
begin
  Result := FFailureRedirectionURL.HasValue;
end;

function TCreateCustomVerificationEmailTemplateRequest.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TCreateCustomVerificationEmailTemplateRequest.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TCreateCustomVerificationEmailTemplateRequest.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TCreateCustomVerificationEmailTemplateRequest.GetSuccessRedirectionURL: string;
begin
  Result := FSuccessRedirectionURL.ValueOrDefault;
end;

procedure TCreateCustomVerificationEmailTemplateRequest.SetSuccessRedirectionURL(const Value: string);
begin
  FSuccessRedirectionURL := Value;
end;

function TCreateCustomVerificationEmailTemplateRequest.IsSetSuccessRedirectionURL: Boolean;
begin
  Result := FSuccessRedirectionURL.HasValue;
end;

function TCreateCustomVerificationEmailTemplateRequest.GetTemplateContent: string;
begin
  Result := FTemplateContent.ValueOrDefault;
end;

procedure TCreateCustomVerificationEmailTemplateRequest.SetTemplateContent(const Value: string);
begin
  FTemplateContent := Value;
end;

function TCreateCustomVerificationEmailTemplateRequest.IsSetTemplateContent: Boolean;
begin
  Result := FTemplateContent.HasValue;
end;

function TCreateCustomVerificationEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TCreateCustomVerificationEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TCreateCustomVerificationEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

function TCreateCustomVerificationEmailTemplateRequest.GetTemplateSubject: string;
begin
  Result := FTemplateSubject.ValueOrDefault;
end;

procedure TCreateCustomVerificationEmailTemplateRequest.SetTemplateSubject(const Value: string);
begin
  FTemplateSubject := Value;
end;

function TCreateCustomVerificationEmailTemplateRequest.IsSetTemplateSubject: Boolean;
begin
  Result := FTemplateSubject.HasValue;
end;

end.
