unit AWS.SES.Model.CustomVerificationEmailTemplate;

interface

uses
  Bcl.Types.Nullable;

type
  TCustomVerificationEmailTemplate = class;
  
  ICustomVerificationEmailTemplate = interface
    function GetFailureRedirectionURL: string;
    procedure SetFailureRedirectionURL(const Value: string);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetSuccessRedirectionURL: string;
    procedure SetSuccessRedirectionURL(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function GetTemplateSubject: string;
    procedure SetTemplateSubject(const Value: string);
    function Obj: TCustomVerificationEmailTemplate;
    function IsSetFailureRedirectionURL: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetSuccessRedirectionURL: Boolean;
    function IsSetTemplateName: Boolean;
    function IsSetTemplateSubject: Boolean;
    property FailureRedirectionURL: string read GetFailureRedirectionURL write SetFailureRedirectionURL;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property SuccessRedirectionURL: string read GetSuccessRedirectionURL write SetSuccessRedirectionURL;
    property TemplateName: string read GetTemplateName write SetTemplateName;
    property TemplateSubject: string read GetTemplateSubject write SetTemplateSubject;
  end;
  
  TCustomVerificationEmailTemplate = class
  strict private
    FFailureRedirectionURL: Nullable<string>;
    FFromEmailAddress: Nullable<string>;
    FSuccessRedirectionURL: Nullable<string>;
    FTemplateName: Nullable<string>;
    FTemplateSubject: Nullable<string>;
    function GetFailureRedirectionURL: string;
    procedure SetFailureRedirectionURL(const Value: string);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetSuccessRedirectionURL: string;
    procedure SetSuccessRedirectionURL(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function GetTemplateSubject: string;
    procedure SetTemplateSubject(const Value: string);
  strict protected
    function Obj: TCustomVerificationEmailTemplate;
  public
    function IsSetFailureRedirectionURL: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetSuccessRedirectionURL: Boolean;
    function IsSetTemplateName: Boolean;
    function IsSetTemplateSubject: Boolean;
    property FailureRedirectionURL: string read GetFailureRedirectionURL write SetFailureRedirectionURL;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property SuccessRedirectionURL: string read GetSuccessRedirectionURL write SetSuccessRedirectionURL;
    property TemplateName: string read GetTemplateName write SetTemplateName;
    property TemplateSubject: string read GetTemplateSubject write SetTemplateSubject;
  end;
  
implementation

{ TCustomVerificationEmailTemplate }

function TCustomVerificationEmailTemplate.Obj: TCustomVerificationEmailTemplate;
begin
  Result := Self;
end;

function TCustomVerificationEmailTemplate.GetFailureRedirectionURL: string;
begin
  Result := FFailureRedirectionURL.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplate.SetFailureRedirectionURL(const Value: string);
begin
  FFailureRedirectionURL := Value;
end;

function TCustomVerificationEmailTemplate.IsSetFailureRedirectionURL: Boolean;
begin
  Result := FFailureRedirectionURL.HasValue;
end;

function TCustomVerificationEmailTemplate.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplate.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TCustomVerificationEmailTemplate.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TCustomVerificationEmailTemplate.GetSuccessRedirectionURL: string;
begin
  Result := FSuccessRedirectionURL.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplate.SetSuccessRedirectionURL(const Value: string);
begin
  FSuccessRedirectionURL := Value;
end;

function TCustomVerificationEmailTemplate.IsSetSuccessRedirectionURL: Boolean;
begin
  Result := FSuccessRedirectionURL.HasValue;
end;

function TCustomVerificationEmailTemplate.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplate.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TCustomVerificationEmailTemplate.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

function TCustomVerificationEmailTemplate.GetTemplateSubject: string;
begin
  Result := FTemplateSubject.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplate.SetTemplateSubject(const Value: string);
begin
  FTemplateSubject := Value;
end;

function TCustomVerificationEmailTemplate.IsSetTemplateSubject: Boolean;
begin
  Result := FTemplateSubject.HasValue;
end;

end.
