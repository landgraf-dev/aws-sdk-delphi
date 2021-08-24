unit AWS.SESv2.Model.UpdateEmailTemplateRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.EmailTemplateContent;

type
  TUpdateEmailTemplateRequest = class;
  
  IUpdateEmailTemplateRequest = interface
    function GetTemplateContent: TEmailTemplateContent;
    procedure SetTemplateContent(const Value: TEmailTemplateContent);
    function GetKeepTemplateContent: Boolean;
    procedure SetKeepTemplateContent(const Value: Boolean);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TUpdateEmailTemplateRequest;
    function IsSetTemplateContent: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateContent: TEmailTemplateContent read GetTemplateContent write SetTemplateContent;
    property KeepTemplateContent: Boolean read GetKeepTemplateContent write SetKeepTemplateContent;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TUpdateEmailTemplateRequest = class(TAmazonSimpleEmailServiceV2Request, IUpdateEmailTemplateRequest)
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
    function Obj: TUpdateEmailTemplateRequest;
  public
    destructor Destroy; override;
    function IsSetTemplateContent: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateContent: TEmailTemplateContent read GetTemplateContent write SetTemplateContent;
    property KeepTemplateContent: Boolean read GetKeepTemplateContent write SetKeepTemplateContent;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TUpdateEmailTemplateRequest }

destructor TUpdateEmailTemplateRequest.Destroy;
begin
  TemplateContent := nil;
  inherited;
end;

function TUpdateEmailTemplateRequest.Obj: TUpdateEmailTemplateRequest;
begin
  Result := Self;
end;

function TUpdateEmailTemplateRequest.GetTemplateContent: TEmailTemplateContent;
begin
  Result := FTemplateContent;
end;

procedure TUpdateEmailTemplateRequest.SetTemplateContent(const Value: TEmailTemplateContent);
begin
  if FTemplateContent <> Value then
  begin
    if not KeepTemplateContent then
      FTemplateContent.Free;
    FTemplateContent := Value;
  end;
end;

function TUpdateEmailTemplateRequest.GetKeepTemplateContent: Boolean;
begin
  Result := FKeepTemplateContent;
end;

procedure TUpdateEmailTemplateRequest.SetKeepTemplateContent(const Value: Boolean);
begin
  FKeepTemplateContent := Value;
end;

function TUpdateEmailTemplateRequest.IsSetTemplateContent: Boolean;
begin
  Result := FTemplateContent <> nil;
end;

function TUpdateEmailTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TUpdateEmailTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TUpdateEmailTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
