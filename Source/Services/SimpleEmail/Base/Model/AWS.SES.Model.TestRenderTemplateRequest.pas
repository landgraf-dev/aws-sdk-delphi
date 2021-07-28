unit AWS.SES.Model.TestRenderTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TTestRenderTemplateRequest = class;
  
  ITestRenderTemplateRequest = interface
    function GetTemplateData: string;
    procedure SetTemplateData(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TTestRenderTemplateRequest;
    function IsSetTemplateData: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateData: string read GetTemplateData write SetTemplateData;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TTestRenderTemplateRequest = class(TAmazonSimpleEmailServiceRequest, ITestRenderTemplateRequest)
  strict private
    FTemplateData: Nullable<string>;
    FTemplateName: Nullable<string>;
    function GetTemplateData: string;
    procedure SetTemplateData(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TTestRenderTemplateRequest;
  public
    function IsSetTemplateData: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateData: string read GetTemplateData write SetTemplateData;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TTestRenderTemplateRequest }

function TTestRenderTemplateRequest.Obj: TTestRenderTemplateRequest;
begin
  Result := Self;
end;

function TTestRenderTemplateRequest.GetTemplateData: string;
begin
  Result := FTemplateData.ValueOrDefault;
end;

procedure TTestRenderTemplateRequest.SetTemplateData(const Value: string);
begin
  FTemplateData := Value;
end;

function TTestRenderTemplateRequest.IsSetTemplateData: Boolean;
begin
  Result := FTemplateData.HasValue;
end;

function TTestRenderTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TTestRenderTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TTestRenderTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
