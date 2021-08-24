unit AWS.SESv2.Model.Template;

interface

uses
  Bcl.Types.Nullable;

type
  TTemplate = class;
  
  ITemplate = interface
    function GetTemplateArn: string;
    procedure SetTemplateArn(const Value: string);
    function GetTemplateData: string;
    procedure SetTemplateData(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TTemplate;
    function IsSetTemplateArn: Boolean;
    function IsSetTemplateData: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateArn: string read GetTemplateArn write SetTemplateArn;
    property TemplateData: string read GetTemplateData write SetTemplateData;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TTemplate = class
  strict private
    FTemplateArn: Nullable<string>;
    FTemplateData: Nullable<string>;
    FTemplateName: Nullable<string>;
    function GetTemplateArn: string;
    procedure SetTemplateArn(const Value: string);
    function GetTemplateData: string;
    procedure SetTemplateData(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TTemplate;
  public
    function IsSetTemplateArn: Boolean;
    function IsSetTemplateData: Boolean;
    function IsSetTemplateName: Boolean;
    property TemplateArn: string read GetTemplateArn write SetTemplateArn;
    property TemplateData: string read GetTemplateData write SetTemplateData;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TTemplate }

function TTemplate.Obj: TTemplate;
begin
  Result := Self;
end;

function TTemplate.GetTemplateArn: string;
begin
  Result := FTemplateArn.ValueOrDefault;
end;

procedure TTemplate.SetTemplateArn(const Value: string);
begin
  FTemplateArn := Value;
end;

function TTemplate.IsSetTemplateArn: Boolean;
begin
  Result := FTemplateArn.HasValue;
end;

function TTemplate.GetTemplateData: string;
begin
  Result := FTemplateData.ValueOrDefault;
end;

procedure TTemplate.SetTemplateData(const Value: string);
begin
  FTemplateData := Value;
end;

function TTemplate.IsSetTemplateData: Boolean;
begin
  Result := FTemplateData.HasValue;
end;

function TTemplate.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TTemplate.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TTemplate.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
