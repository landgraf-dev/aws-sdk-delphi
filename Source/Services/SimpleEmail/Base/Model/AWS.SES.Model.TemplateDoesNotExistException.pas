unit AWS.SES.Model.TemplateDoesNotExistException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  ETemplateDoesNotExistException = class(EAmazonSimpleEmailServiceException)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ ETemplateDoesNotExistException }

function ETemplateDoesNotExistException.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure ETemplateDoesNotExistException.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function ETemplateDoesNotExistException.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
