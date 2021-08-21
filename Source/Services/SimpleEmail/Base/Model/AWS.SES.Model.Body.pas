unit AWS.SES.Model.Body;

interface

uses
  AWS.SES.Model.Content;

type
  TBody = class;
  
  IBody = interface
    function GetHtml: TContent;
    procedure SetHtml(const Value: TContent);
    function GetKeepHtml: Boolean;
    procedure SetKeepHtml(const Value: Boolean);
    function GetText: TContent;
    procedure SetText(const Value: TContent);
    function GetKeepText: Boolean;
    procedure SetKeepText(const Value: Boolean);
    function Obj: TBody;
    function IsSetHtml: Boolean;
    function IsSetText: Boolean;
    property Html: TContent read GetHtml write SetHtml;
    property KeepHtml: Boolean read GetKeepHtml write SetKeepHtml;
    property Text: TContent read GetText write SetText;
    property KeepText: Boolean read GetKeepText write SetKeepText;
  end;
  
  TBody = class
  strict private
    FHtml: TContent;
    FKeepHtml: Boolean;
    FText: TContent;
    FKeepText: Boolean;
    function GetHtml: TContent;
    procedure SetHtml(const Value: TContent);
    function GetKeepHtml: Boolean;
    procedure SetKeepHtml(const Value: Boolean);
    function GetText: TContent;
    procedure SetText(const Value: TContent);
    function GetKeepText: Boolean;
    procedure SetKeepText(const Value: Boolean);
  strict protected
    function Obj: TBody;
  public
    destructor Destroy; override;
    constructor Create(const AText: TContent); overload;
    function IsSetHtml: Boolean;
    function IsSetText: Boolean;
    property Html: TContent read GetHtml write SetHtml;
    property KeepHtml: Boolean read GetKeepHtml write SetKeepHtml;
    property Text: TContent read GetText write SetText;
    property KeepText: Boolean read GetKeepText write SetKeepText;
  end;
  
implementation

{ TBody }

destructor TBody.Destroy;
begin
  Text := nil;
  Html := nil;
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
    if not KeepHtml then
      FHtml.Free;
    FHtml := Value;
  end;
end;

function TBody.GetKeepHtml: Boolean;
begin
  Result := FKeepHtml;
end;

procedure TBody.SetKeepHtml(const Value: Boolean);
begin
  FKeepHtml := Value;
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
    if not KeepText then
      FText.Free;
    FText := Value;
  end;
end;

function TBody.GetKeepText: Boolean;
begin
  Result := FKeepText;
end;

procedure TBody.SetKeepText(const Value: Boolean);
begin
  FKeepText := Value;
end;

function TBody.IsSetText: Boolean;
begin
  Result := FText <> nil;
end;

end.
