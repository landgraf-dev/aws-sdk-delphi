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
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
    function Obj: TUpdateTemplateRequest;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
  TUpdateTemplateRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateTemplateRequest)
  strict private
    FTemplate: TTemplate;
    FKeepTemplate: Boolean;
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
  strict protected
    function Obj: TUpdateTemplateRequest;
  public
    destructor Destroy; override;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
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
    if not KeepTemplate then
      FTemplate.Free;
    FTemplate := Value;
  end;
end;

function TUpdateTemplateRequest.GetKeepTemplate: Boolean;
begin
  Result := FKeepTemplate;
end;

procedure TUpdateTemplateRequest.SetKeepTemplate(const Value: Boolean);
begin
  FKeepTemplate := Value;
end;

function TUpdateTemplateRequest.IsSetTemplate: Boolean;
begin
  Result := FTemplate <> nil;
end;

end.
