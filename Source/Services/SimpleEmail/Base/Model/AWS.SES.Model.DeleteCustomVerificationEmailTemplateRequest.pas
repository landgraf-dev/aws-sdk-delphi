unit AWS.SES.Model.DeleteCustomVerificationEmailTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDeleteCustomVerificationEmailTemplateRequest = class;
  
  IDeleteCustomVerificationEmailTemplateRequest = interface
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TDeleteCustomVerificationEmailTemplateRequest;
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TDeleteCustomVerificationEmailTemplateRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteCustomVerificationEmailTemplateRequest)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TDeleteCustomVerificationEmailTemplateRequest;
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TDeleteCustomVerificationEmailTemplateRequest }

function TDeleteCustomVerificationEmailTemplateRequest.Obj: TDeleteCustomVerificationEmailTemplateRequest;
begin
  Result := Self;
end;

function TDeleteCustomVerificationEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TDeleteCustomVerificationEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TDeleteCustomVerificationEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
