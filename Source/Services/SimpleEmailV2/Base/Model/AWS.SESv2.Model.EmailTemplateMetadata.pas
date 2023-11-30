unit AWS.SESv2.Model.EmailTemplateMetadata;

interface

uses
  AWS.Nullable;

type
  TEmailTemplateMetadata = class;
  
  IEmailTemplateMetadata = interface
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TEmailTemplateMetadata;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetTemplateName: Boolean;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TEmailTemplateMetadata = class
  strict private
    FCreatedTimestamp: Nullable<TDateTime>;
    FTemplateName: Nullable<string>;
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TEmailTemplateMetadata;
  public
    function IsSetCreatedTimestamp: Boolean;
    function IsSetTemplateName: Boolean;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TEmailTemplateMetadata }

function TEmailTemplateMetadata.Obj: TEmailTemplateMetadata;
begin
  Result := Self;
end;

function TEmailTemplateMetadata.GetCreatedTimestamp: TDateTime;
begin
  Result := FCreatedTimestamp.ValueOrDefault;
end;

procedure TEmailTemplateMetadata.SetCreatedTimestamp(const Value: TDateTime);
begin
  FCreatedTimestamp := Value;
end;

function TEmailTemplateMetadata.IsSetCreatedTimestamp: Boolean;
begin
  Result := FCreatedTimestamp.HasValue;
end;

function TEmailTemplateMetadata.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TEmailTemplateMetadata.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TEmailTemplateMetadata.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
