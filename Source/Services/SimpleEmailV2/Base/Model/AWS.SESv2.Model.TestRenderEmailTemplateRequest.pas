unit AWS.SESv2.Model.TestRenderEmailTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TTestRenderEmailTemplateRequest = class;
  
  ITestRenderEmailTemplateRequest = interface
    function GetTemplateData: string;
    procedure SetTemplateData(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TTestRenderEmailTemplateRequest;
    function IsSetTemplateData: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateData: string read GetTemplateData write SetTemplateData;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TTestRenderEmailTemplateRequest = class(TAmazonSimpleEmailServiceV2Request, ITestRenderEmailTemplateRequest)
  strict private
    FTemplateData: Nullable<string>;
    FTemplateName: Nullable<string>;
    function GetTemplateData: string;
    procedure SetTemplateData(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TTestRenderEmailTemplateRequest;
  public
    function IsSetTemplateData: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateData: string read GetTemplateData write SetTemplateData;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TTestRenderEmailTemplateRequest }

function TTestRenderEmailTemplateRequest.Obj: TTestRenderEmailTemplateRequest;
begin
  Result := Self;
end;

function TTestRenderEmailTemplateRequest.GetTemplateData: string;
begin
  Result := FTemplateData.ValueOrDefault;
end;

procedure TTestRenderEmailTemplateRequest.SetTemplateData(const Value: string);
begin
  FTemplateData := Value;
end;

function TTestRenderEmailTemplateRequest.IsSetTemplateData: Boolean;
begin
  Result := FTemplateData.HasValue;
end;

function TTestRenderEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TTestRenderEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TTestRenderEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
