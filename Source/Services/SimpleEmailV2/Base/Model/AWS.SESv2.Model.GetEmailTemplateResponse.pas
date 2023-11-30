unit AWS.SESv2.Model.GetEmailTemplateResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SESv2.Model.EmailTemplateContent, 
  AWS.Nullable;

type
  TGetEmailTemplateResponse = class;
  
  IGetEmailTemplateResponse = interface(IAmazonWebServiceResponse)
    function GetTemplateContent: TEmailTemplateContent;
    procedure SetTemplateContent(const Value: TEmailTemplateContent);
    function GetKeepTemplateContent: Boolean;
    procedure SetKeepTemplateContent(const Value: Boolean);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TGetEmailTemplateResponse;
    function IsSetTemplateContent: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateContent: TEmailTemplateContent read GetTemplateContent write SetTemplateContent;
    property KeepTemplateContent: Boolean read GetKeepTemplateContent write SetKeepTemplateContent;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TGetEmailTemplateResponse = class(TAmazonWebServiceResponse, IGetEmailTemplateResponse)
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
    function Obj: TGetEmailTemplateResponse;
  public
    destructor Destroy; override;
    function IsSetTemplateContent: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateContent: TEmailTemplateContent read GetTemplateContent write SetTemplateContent;
    property KeepTemplateContent: Boolean read GetKeepTemplateContent write SetKeepTemplateContent;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TGetEmailTemplateResponse }

destructor TGetEmailTemplateResponse.Destroy;
begin
  TemplateContent := nil;
  inherited;
end;

function TGetEmailTemplateResponse.Obj: TGetEmailTemplateResponse;
begin
  Result := Self;
end;

function TGetEmailTemplateResponse.GetTemplateContent: TEmailTemplateContent;
begin
  Result := FTemplateContent;
end;

procedure TGetEmailTemplateResponse.SetTemplateContent(const Value: TEmailTemplateContent);
begin
  if FTemplateContent <> Value then
  begin
    if not KeepTemplateContent then
      FTemplateContent.Free;
    FTemplateContent := Value;
  end;
end;

function TGetEmailTemplateResponse.GetKeepTemplateContent: Boolean;
begin
  Result := FKeepTemplateContent;
end;

procedure TGetEmailTemplateResponse.SetKeepTemplateContent(const Value: Boolean);
begin
  FKeepTemplateContent := Value;
end;

function TGetEmailTemplateResponse.IsSetTemplateContent: Boolean;
begin
  Result := FTemplateContent <> nil;
end;

function TGetEmailTemplateResponse.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TGetEmailTemplateResponse.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TGetEmailTemplateResponse.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
