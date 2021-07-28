unit AWS.SES.Model.CustomVerificationEmailTemplateDoesNotExistException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  ECustomVerificationEmailTemplateDoesNotExistException = class(EAmazonSimpleEmailServiceException)
  strict private
    FCustomVerificationEmailTemplateName: Nullable<string>;
    function GetCustomVerificationEmailTemplateName: string;
    procedure SetCustomVerificationEmailTemplateName(const Value: string);
  public
    function IsSetCustomVerificationEmailTemplateName: Boolean;
    property CustomVerificationEmailTemplateName: string read GetCustomVerificationEmailTemplateName write SetCustomVerificationEmailTemplateName;
  end;
  
implementation

{ ECustomVerificationEmailTemplateDoesNotExistException }

function ECustomVerificationEmailTemplateDoesNotExistException.GetCustomVerificationEmailTemplateName: string;
begin
  Result := FCustomVerificationEmailTemplateName.ValueOrDefault;
end;

procedure ECustomVerificationEmailTemplateDoesNotExistException.SetCustomVerificationEmailTemplateName(const Value: string);
begin
  FCustomVerificationEmailTemplateName := Value;
end;

function ECustomVerificationEmailTemplateDoesNotExistException.IsSetCustomVerificationEmailTemplateName: Boolean;
begin
  Result := FCustomVerificationEmailTemplateName.HasValue;
end;

end.
