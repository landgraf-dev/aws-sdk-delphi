unit AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TDeleteCustomVerificationEmailTemplateRequest = class;
  
  IDeleteCustomVerificationEmailTemplateRequest = interface
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TDeleteCustomVerificationEmailTemplateRequest;
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TDeleteCustomVerificationEmailTemplateRequest = class(TAmazonSimpleEmailServiceV2Request, IDeleteCustomVerificationEmailTemplateRequest)
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
