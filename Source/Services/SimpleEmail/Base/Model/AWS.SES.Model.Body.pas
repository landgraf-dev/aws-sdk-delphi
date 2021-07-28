unit AWS.SES.Model.Body;

interface

uses
  AWS.SES.Model.Content;

type
  TBody = class;
  
  IBody = interface
    function GetHtml: TContent;
    procedure SetHtml(const Value: TContent);
    function GetText: TContent;
    procedure SetText(const Value: TContent);
    function Obj: TBody;
    function IsSetHtml: Boolean;
    function IsSetText: Boolean;
    property Html: TContent read GetHtml write SetHtml;
    property Text: TContent read GetText write SetText;
  end;
  
  TBody = class
  strict private
    FHtml: TContent;
    FText: TContent;
    function GetHtml: TContent;
    procedure SetHtml(const Value: TContent);
    function GetText: TContent;
    procedure SetText(const Value: TContent);
  strict protected
    function Obj: TBody;
  public
    destructor Destroy; override;
    constructor Create(const AText: TContent); overload;
    function IsSetHtml: Boolean;
    function IsSetText: Boolean;
    property Html: TContent read GetHtml write SetHtml;
    property Text: TContent read GetText write SetText;
  end;
  
implementation

{ TBody }

destructor TBody.Destroy;
begin
  FText.Free;
  FHtml.Free;
  inherited;
end;

function TBody.Obj: TBody;
begin
  Result := Self;
end;

constructor TBody.Create(const AText: TContent);
begin
  inherited Create;
  Text := AText;
end;

function TBody.GetHtml: TContent;
begin
  Result := FHtml;
end;

procedure TBody.SetHtml(const Value: TContent);
begin
  if FHtml <> Value then
  begin
    FHtml.Free;
    FHtml := Value;
  end;
end;

function TBody.IsSetHtml: Boolean;
begin
  Result := FHtml <> nil;
end;

function TBody.GetText: TContent;
begin
  Result := FText;
end;

procedure TBody.SetText(const Value: TContent);
begin
  if FText <> Value then
  begin
    FText.Free;
    FText := Value;
  end;
end;

function TBody.IsSetText: Boolean;
begin
  Result := FText <> nil;
end;

end.
