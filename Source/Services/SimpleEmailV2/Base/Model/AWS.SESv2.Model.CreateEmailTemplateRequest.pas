unit AWS.SESv2.Model.CreateEmailTemplateRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.EmailTemplateContent, 
  AWS.Nullable;

type
  TCreateEmailTemplateRequest = class;
  
  ICreateEmailTemplateRequest = interface
    function GetTemplateContent: TEmailTemplateContent;
    procedure SetTemplateContent(const Value: TEmailTemplateContent);
    function GetKeepTemplateContent: Boolean;
    procedure SetKeepTemplateContent(const Value: Boolean);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TCreateEmailTemplateRequest;
    function IsSetTemplateContent: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateContent: TEmailTemplateContent read GetTemplateContent write SetTemplateContent;
    property KeepTemplateContent: Boolean read GetKeepTemplateContent write SetKeepTemplateContent;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TCreateEmailTemplateRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateEmailTemplateRequest)
  strict private
    FTemplateContent: TEmailTemplateContent;
    FKeepTemplateContent: Boolean;
    FTemplateName: Nullable<string>;
    function GetTemplateContent: TEmailTemplateContent;
    procedure SetTemplateContent(const Value: TEmailTemplateContent);
    function GetKeepTemplateContent: Boolean;
    procedure SetKeepTemplateContent(const Value: Boolean);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TCreateEmailTemplateRequest;
  public
    destructor Destroy; override;
    function IsSetTemplateContent: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateContent: TEmailTemplateContent read GetTemplateContent write SetTemplateContent;
    property KeepTemplateContent: Boolean read GetKeepTemplateContent write SetKeepTemplateContent;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TCreateEmailTemplateRequest }

destructor TCreateEmailTemplateRequest.Destroy;
begin
  TemplateContent := nil;
  inherited;
end;

function TCreateEmailTemplateRequest.Obj: TCreateEmailTemplateRequest;
begin
  Result := Self;
end;

function TCreateEmailTemplateRequest.GetTemplateContent: TEmailTemplateContent;
begin
  Result := FTemplateContent;
end;

procedure TCreateEmailTemplateRequest.SetTemplateContent(const Value: TEmailTemplateContent);
begin
  if FTemplateContent <> Value then
  begin
    if not KeepTemplateContent then
      FTemplateContent.Free;
    FTemplateContent := Value;
  end;
end;

function TCreateEmailTemplateRequest.GetKeepTemplateContent: Boolean;
begin
  Result := FKeepTemplateContent;
end;

procedure TCreateEmailTemplateRequest.SetKeepTemplateContent(const Value: Boolean);
begin
  FKeepTemplateContent := Value;
end;

function TCreateEmailTemplateRequest.IsSetTemplateContent: Boolean;
begin
  Result := FTemplateContent <> nil;
end;

function TCreateEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TCreateEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TCreateEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
