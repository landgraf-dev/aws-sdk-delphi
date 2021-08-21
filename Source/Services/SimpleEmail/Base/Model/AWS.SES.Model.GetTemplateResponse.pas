unit AWS.SES.Model.GetTemplateResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SES.Model.Template;

type
  TGetTemplateResponse = class;
  
  IGetTemplateResponse = interface(IAmazonWebServiceResponse)
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
    function Obj: TGetTemplateResponse;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
  TGetTemplateResponse = class(TAmazonWebServiceResponse, IGetTemplateResponse)
  strict private
    FTemplate: TTemplate;
    FKeepTemplate: Boolean;
    function GetTemplate: TTemplate;
    procedure SetTemplate(const Value: TTemplate);
    function GetKeepTemplate: Boolean;
    procedure SetKeepTemplate(const Value: Boolean);
  strict protected
    function Obj: TGetTemplateResponse;
  public
    destructor Destroy; override;
    function IsSetTemplate: Boolean;
    property Template: TTemplate read GetTemplate write SetTemplate;
    property KeepTemplate: Boolean read GetKeepTemplate write SetKeepTemplate;
  end;
  
implementation

{ TGetTemplateResponse }

destructor TGetTemplateResponse.Destroy;
begin
  Template := nil;
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
    if not KeepTemplate then
      FTemplate.Free;
    FTemplate := Value;
  end;
end;

function TGetTemplateResponse.GetKeepTemplate: Boolean;
begin
  Result := FKeepTemplate;
end;

procedure TGetTemplateResponse.SetKeepTemplate(const Value: Boolean);
begin
  FKeepTemplate := Value;
end;

function TGetTemplateResponse.IsSetTemplate: Boolean;
begin
  Result := FTemplate <> nil;
end;

end.
