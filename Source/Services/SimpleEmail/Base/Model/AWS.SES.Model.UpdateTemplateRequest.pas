unit AWS.SES.Model.UpdateTemplateRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.SES.Model.Template;

type
  TUpdateTemplateRequest = class;
  
  IUpdateTemplateRequest = interface
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function Obj: TUpdateTemplateRequest;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
  end;
  
  TUpdateTemplateRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateTemplateRequest)
  strict private
    FTemplate: TTemplate;
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
  strict protected
    function Obj: TUpdateTemplateRequest;
  public
    destructor Destroy; override;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
  end;
  
implementation

{ TUpdateTemplateRequest }

destructor TUpdateTemplateRequest.Destroy;
begin
  Template := nil;
  inherited;
end;

function TUpdateTemplateRequest.Obj: TUpdateTemplateRequest;
begin
  Result := Self;
end;

function TUpdateTemplateRequest.GetTemplate: TTemplate;
begin
  Result := FTemplate;
end;

procedure TUpdateTemplateRequest.SetTemplate(const Value: TTemplate);
begin
  if FTemplate <> Value then
  begin
    FTemplate.Free;
    FTemplate := Value;
  end;
end;

function TUpdateTemplateRequest.IsSetTemplate: Boolean;
begin
  Result := FTemplate <> nil;
end;

end.
