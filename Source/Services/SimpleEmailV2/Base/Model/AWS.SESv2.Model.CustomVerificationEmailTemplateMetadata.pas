unit AWS.SESv2.Model.CustomVerificationEmailTemplateMetadata;

interface

uses
  Bcl.Types.Nullable;

type
  TCustomVerificationEmailTemplateMetadata = class;
  
  ICustomVerificationEmailTemplateMetadata = interface
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
    function Obj: TCustomVerificationEmailTemplateMetadata;
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
  
  TCustomVerificationEmailTemplateMetadata = class
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
    function Obj: TCustomVerificationEmailTemplateMetadata;
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

{ TCustomVerificationEmailTemplateMetadata }

function TCustomVerificationEmailTemplateMetadata.Obj: TCustomVerificationEmailTemplateMetadata;
begin
  Result := Self;
end;

function TCustomVerificationEmailTemplateMetadata.GetFailureRedirectionURL: string;
begin
  Result := FFailureRedirectionURL.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplateMetadata.SetFailureRedirectionURL(const Value: string);
begin
  FFailureRedirectionURL := Value;
end;

function TCustomVerificationEmailTemplateMetadata.IsSetFailureRedirectionURL: Boolean;
begin
  Result := FFailureRedirectionURL.HasValue;
end;

function TCustomVerificationEmailTemplateMetadata.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplateMetadata.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TCustomVerificationEmailTemplateMetadata.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TCustomVerificationEmailTemplateMetadata.GetSuccessRedirectionURL: string;
begin
  Result := FSuccessRedirectionURL.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplateMetadata.SetSuccessRedirectionURL(const Value: string);
begin
  FSuccessRedirectionURL := Value;
end;

function TCustomVerificationEmailTemplateMetadata.IsSetSuccessRedirectionURL: Boolean;
begin
  Result := FSuccessRedirectionURL.HasValue;
end;

function TCustomVerificationEmailTemplateMetadata.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplateMetadata.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TCustomVerificationEmailTemplateMetadata.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

function TCustomVerificationEmailTemplateMetadata.GetTemplateSubject: string;
begin
  Result := FTemplateSubject.ValueOrDefault;
end;

procedure TCustomVerificationEmailTemplateMetadata.SetTemplateSubject(const Value: string);
begin
  FTemplateSubject := Value;
end;

function TCustomVerificationEmailTemplateMetadata.IsSetTemplateSubject: Boolean;
begin
  Result := FTemplateSubject.HasValue;
end;

end.
