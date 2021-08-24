unit AWS.SESv2.Model.EmailTemplateContent;

interface

uses
  Bcl.Types.Nullable;

type
  TEmailTemplateContent = class;
  
  IEmailTemplateContent = interface
    function GetHtml: string;
    procedure SetHtml(const Value: string);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
    function GetText: string;
    procedure SetText(const Value: string);
    function Obj: TEmailTemplateContent;
    function IsSetHtml: Boolean;
    function IsSetSubject: Boolean;
    function IsSetText: Boolean;
    property Html: string read GetHtml write SetHtml;
    property Subject: string read GetSubject write SetSubject;
    property Text: string read GetText write SetText;
  end;
  
  TEmailTemplateContent = class
  strict private
    FHtml: Nullable<string>;
    FSubject: Nullable<string>;
    FText: Nullable<string>;
    function GetHtml: string;
    procedure SetHtml(const Value: string);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
    function GetText: string;
    procedure SetText(const Value: string);
  strict protected
    function Obj: TEmailTemplateContent;
  public
    function IsSetHtml: Boolean;
    function IsSetSubject: Boolean;
    function IsSetText: Boolean;
    property Html: string read GetHtml write SetHtml;
    property Subject: string read GetSubject write SetSubject;
    property Text: string read GetText write SetText;
  end;
  
implementation

{ TEmailTemplateContent }

function TEmailTemplateContent.Obj: TEmailTemplateContent;
begin
  Result := Self;
end;

function TEmailTemplateContent.GetHtml: string;
begin
  Result := FHtml.ValueOrDefault;
end;

procedure TEmailTemplateContent.SetHtml(const Value: string);
begin
  FHtml := Value;
end;

function TEmailTemplateContent.IsSetHtml: Boolean;
begin
  Result := FHtml.HasValue;
end;

function TEmailTemplateContent.GetSubject: string;
begin
  Result := FSubject.ValueOrDefault;
end;

procedure TEmailTemplateContent.SetSubject(const Value: string);
begin
  FSubject := Value;
end;

function TEmailTemplateContent.IsSetSubject: Boolean;
begin
  Result := FSubject.HasValue;
end;

function TEmailTemplateContent.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TEmailTemplateContent.SetText(const Value: string);
begin
  FText := Value;
end;

function TEmailTemplateContent.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

end.
