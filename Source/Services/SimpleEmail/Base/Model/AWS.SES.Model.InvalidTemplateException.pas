unit AWS.SES.Model.InvalidTemplateException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  EInvalidTemplateException = class(EAmazonSimpleEmailServiceException)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ EInvalidTemplateException }

function EInvalidTemplateException.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure EInvalidTemplateException.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function EInvalidTemplateException.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
