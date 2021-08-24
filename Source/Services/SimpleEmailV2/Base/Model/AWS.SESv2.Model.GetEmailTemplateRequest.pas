unit AWS.SESv2.Model.GetEmailTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TGetEmailTemplateRequest = class;
  
  IGetEmailTemplateRequest = interface
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TGetEmailTemplateRequest;
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TGetEmailTemplateRequest = class(TAmazonSimpleEmailServiceV2Request, IGetEmailTemplateRequest)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TGetEmailTemplateRequest;
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TGetEmailTemplateRequest }

function TGetEmailTemplateRequest.Obj: TGetEmailTemplateRequest;
begin
  Result := Self;
end;

function TGetEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TGetEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TGetEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
