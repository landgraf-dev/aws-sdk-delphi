unit AWS.SESv2.Model.GetCustomVerificationEmailTemplateResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TGetCustomVerificationEmailTemplateResponse = class;
  
  IGetCustomVerificationEmailTemplateResponse = interface(IAmazonWebServiceResponse)
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
    function Obj: TGetCustomVerificationEmailTemplateResponse;
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
  
  TGetCustomVerificationEmailTemplateResponse = class(TAmazonWebServiceResponse, IGetCustomVerificationEmailTemplateResponse)
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
    function Obj: TGetCustomVerificationEmailTemplateResponse;
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

{ TGetCustomVerificationEmailTemplateResponse }

function TGetCustomVerificationEmailTemplateResponse.Obj: TGetCustomVerificationEmailTemplateResponse;
begin
  Result := Self;
end;

function TGetCustomVerificationEmailTemplateResponse.GetFailureRedirectionURL: string;
begin
  Result := FFailureRedirectionURL.ValueOrDefault;
end;

procedure TGetCustomVerificationEmailTemplateResponse.SetFailureRedirectionURL(const Value: string);
begin
  FFailureRedirectionURL := Value;
end;

function TGetCustomVerificationEmailTemplateResponse.IsSetFailureRedirectionURL: Boolean;
begin
  Result := FFailureRedirectionURL.HasValue;
end;

function TGetCustomVerificationEmailTemplateResponse.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TGetCustomVerificationEmailTemplateResponse.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TGetCustomVerificationEmailTemplateResponse.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TGetCustomVerificationEmailTemplateResponse.GetSuccessRedirectionURL: string;
begin
  Result := FSuccessRedirectionURL.ValueOrDefault;
end;

procedure TGetCustomVerificationEmailTemplateResponse.SetSuccessRedirectionURL(const Value: string);
begin
  FSuccessRedirectionURL := Value;
end;

function TGetCustomVerificationEmailTemplateResponse.IsSetSuccessRedirectionURL: Boolean;
begin
  Result := FSuccessRedirectionURL.HasValue;
end;

function TGetCustomVerificationEmailTemplateResponse.GetTemplateContent: string;
begin
  Result := FTemplateContent.ValueOrDefault;
end;

procedure TGetCustomVerificationEmailTemplateResponse.SetTemplateContent(const Value: string);
begin
  FTemplateContent := Value;
end;

function TGetCustomVerificationEmailTemplateResponse.IsSetTemplateContent: Boolean;
begin
  Result := FTemplateContent.HasValue;
end;

function TGetCustomVerificationEmailTemplateResponse.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TGetCustomVerificationEmailTemplateResponse.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TGetCustomVerificationEmailTemplateResponse.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

function TGetCustomVerificationEmailTemplateResponse.GetTemplateSubject: string;
begin
  Result := FTemplateSubject.ValueOrDefault;
end;

procedure TGetCustomVerificationEmailTemplateResponse.SetTemplateSubject(const Value: string);
begin
  FTemplateSubject := Value;
end;

function TGetCustomVerificationEmailTemplateResponse.IsSetTemplateSubject: Boolean;
begin
  Result := FTemplateSubject.HasValue;
end;

end.
