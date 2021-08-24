unit AWS.SESv2.Model.ReplacementTemplate;

interface

uses
  Bcl.Types.Nullable;

type
  TReplacementTemplate = class;
  
  IReplacementTemplate = interface
    function GetReplacementTemplateData: string;
    procedure SetReplacementTemplateData(const Value: string);
    function Obj: TReplacementTemplate;
    function IsSetReplacementTemplateData: Boolean;
    property ReplacementTemplateData: string read GetReplacementTemplateData write SetReplacementTemplateData;
  end;
  
  TReplacementTemplate = class
  strict private
    FReplacementTemplateData: Nullable<string>;
    function GetReplacementTemplateData: string;
    procedure SetReplacementTemplateData(const Value: string);
  strict protected
    function Obj: TReplacementTemplate;
  public
    function IsSetReplacementTemplateData: Boolean;
    property ReplacementTemplateData: string read GetReplacementTemplateData write SetReplacementTemplateData;
  end;
  
implementation

{ TReplacementTemplate }

function TReplacementTemplate.Obj: TReplacementTemplate;
begin
  Result := Self;
end;

function TReplacementTemplate.GetReplacementTemplateData: string;
begin
  Result := FReplacementTemplateData.ValueOrDefault;
end;

procedure TReplacementTemplate.SetReplacementTemplateData(const Value: string);
begin
  FReplacementTemplateData := Value;
end;

function TReplacementTemplate.IsSetReplacementTemplateData: Boolean;
begin
  Result := FReplacementTemplateData.HasValue;
end;

end.
