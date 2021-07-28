unit AWS.SES.Model.InvalidRenderingParameterException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Exception;

type
  EInvalidRenderingParameterException = class(EAmazonSimpleEmailServiceException)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ EInvalidRenderingParameterException }

function EInvalidRenderingParameterException.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure EInvalidRenderingParameterException.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function EInvalidRenderingParameterException.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
