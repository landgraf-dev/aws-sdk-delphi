unit AWS.SES.Model.GetCustomVerificationEmailTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TGetCustomVerificationEmailTemplateRequest = class;
  
  IGetCustomVerificationEmailTemplateRequest = interface
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TGetCustomVerificationEmailTemplateRequest;
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TGetCustomVerificationEmailTemplateRequest = class(TAmazonSimpleEmailServiceRequest, IGetCustomVerificationEmailTemplateRequest)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TGetCustomVerificationEmailTemplateRequest;
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TGetCustomVerificationEmailTemplateRequest }

function TGetCustomVerificationEmailTemplateRequest.Obj: TGetCustomVerificationEmailTemplateRequest;
begin
  Result := Self;
end;

function TGetCustomVerificationEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TGetCustomVerificationEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TGetCustomVerificationEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
