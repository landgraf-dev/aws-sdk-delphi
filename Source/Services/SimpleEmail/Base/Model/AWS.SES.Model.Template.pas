unit AWS.SES.Model.Template;

interface

uses
  Bcl.Types.Nullable;

type
  TTemplate = class;
  
  ITemplate = interface
    function GetHtmlPart: string;
    procedure SetHtmlPart(const Value: string);
    function GetSubjectPart: string;
    procedure SetSubjectPart(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function GetTextPart: string;
    procedure SetTextPart(const Value: string);
    function Obj: TTemplate;
    function IsSetHtmlPart: Boolean;
    function IsSetSubjectPart: Boolean;
    function IsSetTemplateName: Boolean;
    function IsSetTextPart: Boolean;
    property HtmlPart: string read GetHtmlPart write SetHtmlPart;
    property SubjectPart: string read GetSubjectPart write SetSubjectPart;
    property TemplateName: string read GetTemplateName write SetTemplateName;
    property TextPart: string read GetTextPart write SetTextPart;
  end;
  
  TTemplate = class
  strict private
    FHtmlPart: Nullable<string>;
    FSubjectPart: Nullable<string>;
    FTemplateName: Nullable<string>;
    FTextPart: Nullable<string>;
    function GetHtmlPart: string;
    procedure SetHtmlPart(const Value: string);
    function GetSubjectPart: string;
    procedure SetSubjectPart(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function GetTextPart: string;
    procedure SetTextPart(const Value: string);
  strict protected
    function Obj: TTemplate;
  public
    function IsSetHtmlPart: Boolean;
    function IsSetSubjectPart: Boolean;
    function IsSetTemplateName: Boolean;
    function IsSetTextPart: Boolean;
    property HtmlPart: string read GetHtmlPart write SetHtmlPart;
    property SubjectPart: string read GetSubjectPart write SetSubjectPart;
    property TemplateName: string read GetTemplateName write SetTemplateName;
    property TextPart: string read GetTextPart write SetTextPart;
  end;
  
implementation

{ TTemplate }

function TTemplate.Obj: TTemplate;
begin
  Result := Self;
end;

function TTemplate.GetHtmlPart: string;
begin
  Result := FHtmlPart.ValueOrDefault;
end;

procedure TTemplate.SetHtmlPart(const Value: string);
begin
  FHtmlPart := Value;
end;

function TTemplate.IsSetHtmlPart: Boolean;
begin
  Result := FHtmlPart.HasValue;
end;

function TTemplate.GetSubjectPart: string;
begin
  Result := FSubjectPart.ValueOrDefault;
end;

procedure TTemplate.SetSubjectPart(const Value: string);
begin
  FSubjectPart := Value;
end;

function TTemplate.IsSetSubjectPart: Boolean;
begin
  Result := FSubjectPart.HasValue;
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

function TTemplate.GetTextPart: string;
begin
  Result := FTextPart.ValueOrDefault;
end;

procedure TTemplate.SetTextPart(const Value: string);
begin
  FTextPart := Value;
end;

function TTemplate.IsSetTextPart: Boolean;
begin
  Result := FTextPart.HasValue;
end;

end.
