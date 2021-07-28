unit AWS.SES.Model.CustomVerificationEmailTemplateAlreadyExistsException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  ECustomVerificationEmailTemplateAlreadyExistsException = class(EAmazonSimpleEmailServiceException)
  strict private
    FCustomVerificationEmailTemplateName: Nullable<string>;
    function GetCustomVerificationEmailTemplateName: string;
    procedure SetCustomVerificationEmailTemplateName(const Value: string);
  public
    function IsSetCustomVerificationEmailTemplateName: Boolean;
    property CustomVerificationEmailTemplateName: string read GetCustomVerificationEmailTemplateName write SetCustomVerificationEmailTemplateName;
  end;
  
implementation

{ ECustomVerificationEmailTemplateAlreadyExistsException }

function ECustomVerificationEmailTemplateAlreadyExistsException.GetCustomVerificationEmailTemplateName: string;
begin
  Result := FCustomVerificationEmailTemplateName.ValueOrDefault;
end;

procedure ECustomVerificationEmailTemplateAlreadyExistsException.SetCustomVerificationEmailTemplateName(const Value: string);
begin
  FCustomVerificationEmailTemplateName := Value;
end;

function ECustomVerificationEmailTemplateAlreadyExistsException.IsSetCustomVerificationEmailTemplateName: Boolean;
begin
  Result := FCustomVerificationEmailTemplateName.HasValue;
end;

end.
