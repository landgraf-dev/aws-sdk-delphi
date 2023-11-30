unit AWS.SES.Model.TestRenderTemplateResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TTestRenderTemplateResponse = class;
  
  ITestRenderTemplateResponse = interface(IAmazonWebServiceResponse)
    function GetRenderedTemplate: string;
    procedure SetRenderedTemplate(const Value: string);
    function Obj: TTestRenderTemplateResponse;
    function IsSetRenderedTemplate: Boolean;
    property RenderedTemplate: string read GetRenderedTemplate write SetRenderedTemplate;
  end;
  
  TTestRenderTemplateResponse = class(TAmazonWebServiceResponse, ITestRenderTemplateResponse)
  strict private
    FRenderedTemplate: Nullable<string>;
    function GetRenderedTemplate: string;
    procedure SetRenderedTemplate(const Value: string);
  strict protected
    function Obj: TTestRenderTemplateResponse;
  public
    function IsSetRenderedTemplate: Boolean;
    property RenderedTemplate: string read GetRenderedTemplate write SetRenderedTemplate;
  end;
  
implementation

{ TTestRenderTemplateResponse }

function TTestRenderTemplateResponse.Obj: TTestRenderTemplateResponse;
begin
  Result := Self;
end;

function TTestRenderTemplateResponse.GetRenderedTemplate: string;
begin
  Result := FRenderedTemplate.ValueOrDefault;
end;

procedure TTestRenderTemplateResponse.SetRenderedTemplate(const Value: string);
begin
  FRenderedTemplate := Value;
end;

function TTestRenderTemplateResponse.IsSetRenderedTemplate: Boolean;
begin
  Result := FRenderedTemplate.HasValue;
end;

end.
