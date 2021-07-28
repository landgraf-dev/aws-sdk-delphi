unit AWS.SES.Model.GetTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TGetTemplateRequest = class;
  
  IGetTemplateRequest = interface
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TGetTemplateRequest;
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TGetTemplateRequest = class(TAmazonSimpleEmailServiceRequest, IGetTemplateRequest)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TGetTemplateRequest;
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TGetTemplateRequest }

function TGetTemplateRequest.Obj: TGetTemplateRequest;
begin
  Result := Self;
end;

function TGetTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TGetTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TGetTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
