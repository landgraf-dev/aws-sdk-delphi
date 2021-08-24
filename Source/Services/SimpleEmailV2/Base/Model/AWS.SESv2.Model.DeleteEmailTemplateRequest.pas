unit AWS.SESv2.Model.DeleteEmailTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TDeleteEmailTemplateRequest = class;
  
  IDeleteEmailTemplateRequest = interface
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TDeleteEmailTemplateRequest;
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TDeleteEmailTemplateRequest = class(TAmazonSimpleEmailServiceV2Request, IDeleteEmailTemplateRequest)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TDeleteEmailTemplateRequest;
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TDeleteEmailTemplateRequest }

function TDeleteEmailTemplateRequest.Obj: TDeleteEmailTemplateRequest;
begin
  Result := Self;
end;

function TDeleteEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TDeleteEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TDeleteEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
