unit AWS.SES.Model.CreateTemplateRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.SES.Model.Template;

type
  TCreateTemplateRequest = class;
  
  ICreateTemplateRequest = interface
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
    function Obj: TCreateTemplateRequest;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
  TCreateTemplateRequest = class(TAmazonSimpleEmailServiceRequest, ICreateTemplateRequest)
  strict private
    FTemplate: TTemplate;
    FKeepTemplate: Boolean;
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
  strict protected
    function Obj: TCreateTemplateRequest;
  public
    destructor Destroy; override;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
implementation

{ TCreateTemplateRequest }

destructor TCreateTemplateRequest.Destroy;
begin
  Template := nil;
  inherited;
end;

function TCreateTemplateRequest.Obj: TCreateTemplateRequest;
begin
  Result := Self;
end;

function TCreateTemplateRequest.GetTemplate: TTemplate;
begin
  Result := FTemplate;
end;

procedure TCreateTemplateRequest.SetTemplate(const Value: TTemplate);
begin
  if FTemplate <> Value then
  begin
    if not KeepTemplate then
      FTemplate.Free;
    FTemplate := Value;
  end;
end;

function TCreateTemplateRequest.GetKeepTemplate: Boolean;
begin
  Result := FKeepTemplate;
end;

procedure TCreateTemplateRequest.SetKeepTemplate(const Value: Boolean);
begin
  FKeepTemplate := Value;
end;

function TCreateTemplateRequest.IsSetTemplate: Boolean;
begin
  Result := FTemplate <> nil;
end;

end.
