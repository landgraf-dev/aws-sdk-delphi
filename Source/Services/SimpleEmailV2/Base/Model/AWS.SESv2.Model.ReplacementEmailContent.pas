unit AWS.SESv2.Model.ReplacementEmailContent;

interface

uses
  AWS.SESv2.Model.ReplacementTemplate;

type
  TReplacementEmailContent = class;
  
  IReplacementEmailContent = interface
    function GetReplacementTemplate: TReplacementTemplate;
    procedure SetReplacementTemplate(const Value: TReplacementTemplate);
    function GetKeepReplacementTemplate: Boolean;
    procedure SetKeepReplacementTemplate(const Value: Boolean);
    function Obj: TReplacementEmailContent;
    function IsSetReplacementTemplate: Boolean;
    property ReplacementTemplate: TReplacementTemplate read GetReplacementTemplate write SetReplacementTemplate;
    property KeepReplacementTemplate: Boolean read GetKeepReplacementTemplate write SetKeepReplacementTemplate;
  end;
  
  TReplacementEmailContent = class
  strict private
    FReplacementTemplate: TReplacementTemplate;
    FKeepReplacementTemplate: Boolean;
    function GetReplacementTemplate: TReplacementTemplate;
    procedure SetReplacementTemplate(const Value: TReplacementTemplate);
    function GetKeepReplacementTemplate: Boolean;
    procedure SetKeepReplacementTemplate(const Value: Boolean);
  strict protected
    function Obj: TReplacementEmailContent;
  public
    destructor Destroy; override;
    function IsSetReplacementTemplate: Boolean;
    property ReplacementTemplate: TReplacementTemplate read GetReplacementTemplate write SetReplacementTemplate;
    property KeepReplacementTemplate: Boolean read GetKeepReplacementTemplate write SetKeepReplacementTemplate;
  end;
  
implementation

{ TReplacementEmailContent }

destructor TReplacementEmailContent.Destroy;
begin
  ReplacementTemplate := nil;
  inherited;
end;

function TReplacementEmailContent.Obj: TReplacementEmailContent;
begin
  Result := Self;
end;

function TReplacementEmailContent.GetReplacementTemplate: TReplacementTemplate;
begin
  Result := FReplacementTemplate;
end;

procedure TReplacementEmailContent.SetReplacementTemplate(const Value: TReplacementTemplate);
begin
  if FReplacementTemplate <> Value then
  begin
    if not KeepReplacementTemplate then
      FReplacementTemplate.Free;
    FReplacementTemplate := Value;
  end;
end;

function TReplacementEmailContent.GetKeepReplacementTemplate: Boolean;
begin
  Result := FKeepReplacementTemplate;
end;

procedure TReplacementEmailContent.SetKeepReplacementTemplate(const Value: Boolean);
begin
  FKeepReplacementTemplate := Value;
end;

function TReplacementEmailContent.IsSetReplacementTemplate: Boolean;
begin
  Result := FReplacementTemplate <> nil;
end;

end.
