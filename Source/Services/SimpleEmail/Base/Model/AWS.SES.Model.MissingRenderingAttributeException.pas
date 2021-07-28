unit AWS.SES.Model.MissingRenderingAttributeException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EMissingRenderingAttributeException = class(EAmazonSimpleEmailServiceException)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ EMissingRenderingAttributeException }

function EMissingRenderingAttributeException.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure EMissingRenderingAttributeException.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function EMissingRenderingAttributeException.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
