unit AWS.SES.Model.GetTemplateResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.Template;

type
  TGetTemplateResponse = class;
  
  IGetTemplateResponse = interface
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function Obj: TGetTemplateResponse;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
  end;
  
  TGetTemplateResponse = class(TAmazonWebServiceResponse, IGetTemplateResponse)
  strict private
    FTemplate: TTemplate;
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
  strict protected
    function Obj: TGetTemplateResponse;
  public
    destructor Destroy; override;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
  end;
  
implementation

{ TGetTemplateResponse }

destructor TGetTemplateResponse.Destroy;
begin
  FTemplate.Free;
  inherited;
end;

function TGetTemplateResponse.Obj: TGetTemplateResponse;
begin
  Result := Self;
end;

function TGetTemplateResponse.GetTemplate: TTemplate;
begin
  Result := FTemplate;
end;

procedure TGetTemplateResponse.SetTemplate(const Value: TTemplate);
begin
  if FTemplate <> Value then
  begin
    FTemplate.Free;
    FTemplate := Value;
  end;
end;

function TGetTemplateResponse.IsSetTemplate: Boolean;
begin
  Result := FTemplate <> nil;
end;

end.
