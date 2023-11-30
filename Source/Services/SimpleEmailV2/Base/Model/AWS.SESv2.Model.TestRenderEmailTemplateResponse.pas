unit AWS.SESv2.Model.TestRenderEmailTemplateResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TTestRenderEmailTemplateResponse = class;
  
  ITestRenderEmailTemplateResponse = interface(IAmazonWebServiceResponse)
    function GetRenderedTemplate: string;
    procedure SetRenderedTemplate(const Value: string);
    function Obj: TTestRenderEmailTemplateResponse;
    function IsSetRenderedTemplate: Boolean;
    property RenderedTemplate: string read GetRenderedTemplate write SetRenderedTemplate;
  end;
  
  TTestRenderEmailTemplateResponse = class(TAmazonWebServiceResponse, ITestRenderEmailTemplateResponse)
  strict private
    FRenderedTemplate: Nullable<string>;
    function GetRenderedTemplate: string;
    procedure SetRenderedTemplate(const Value: string);
  strict protected
    function Obj: TTestRenderEmailTemplateResponse;
  public
    function IsSetRenderedTemplate: Boolean;
    property RenderedTemplate: string read GetRenderedTemplate write SetRenderedTemplate;
  end;
  
implementation

{ TTestRenderEmailTemplateResponse }

function TTestRenderEmailTemplateResponse.Obj: TTestRenderEmailTemplateResponse;
begin
  Result := Self;
end;

function TTestRenderEmailTemplateResponse.GetRenderedTemplate: string;
begin
  Result := FRenderedTemplate.ValueOrDefault;
end;

procedure TTestRenderEmailTemplateResponse.SetRenderedTemplate(const Value: string);
begin
  FRenderedTemplate := Value;
end;

function TTestRenderEmailTemplateResponse.IsSetRenderedTemplate: Boolean;
begin
  Result := FRenderedTemplate.HasValue;
end;

end.
