unit AWS.LexRuntimeV2.Model.ImageResponseCard;

interface

uses
  System.Generics.Collections, 
  AWS.LexRuntimeV2.Model.Button, 
  AWS.Nullable;

type
  TImageResponseCard = class;
  
  IImageResponseCard = interface
    function GetButtons: TObjectList<TButton>;
    procedure SetButtons(const Value: TObjectList<TButton>);
    function GetKeepButtons: Boolean;
    procedure SetKeepButtons(const Value: Boolean);
    function GetImageUrl: string;
    procedure SetImageUrl(const Value: string);
    function GetSubtitle: string;
    procedure SetSubtitle(const Value: string);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function Obj: TImageResponseCard;
    function IsSetButtons: Boolean;
    function IsSetImageUrl: Boolean;
    function IsSetSubtitle: Boolean;
    function IsSetTitle: Boolean;
    property Buttons: TObjectList<TButton> read GetButtons write SetButtons;
    property KeepButtons: Boolean read GetKeepButtons write SetKeepButtons;
    property ImageUrl: string read GetImageUrl write SetImageUrl;
    property Subtitle: string read GetSubtitle write SetSubtitle;
    property Title: string read GetTitle write SetTitle;
  end;
  
  TImageResponseCard = class
  strict private
    FButtons: TObjectList<TButton>;
    FKeepButtons: Boolean;
    FImageUrl: Nullable<string>;
    FSubtitle: Nullable<string>;
    FTitle: Nullable<string>;
    function GetButtons: TObjectList<TButton>;
    procedure SetButtons(const Value: TObjectList<TButton>);
    function GetKeepButtons: Boolean;
    procedure SetKeepButtons(const Value: Boolean);
    function GetImageUrl: string;
    procedure SetImageUrl(const Value: string);
    function GetSubtitle: string;
    procedure SetSubtitle(const Value: string);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  strict protected
    function Obj: TImageResponseCard;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetButtons: Boolean;
    function IsSetImageUrl: Boolean;
    function IsSetSubtitle: Boolean;
    function IsSetTitle: Boolean;
    property Buttons: TObjectList<TButton> read GetButtons write SetButtons;
    property KeepButtons: Boolean read GetKeepButtons write SetKeepButtons;
    property ImageUrl: string read GetImageUrl write SetImageUrl;
    property Subtitle: string read GetSubtitle write SetSubtitle;
    property Title: string read GetTitle write SetTitle;
  end;
  
implementation

{ TImageResponseCard }

constructor TImageResponseCard.Create;
begin
  inherited;
  FButtons := TObjectList<TButton>.Create;
end;

destructor TImageResponseCard.Destroy;
begin
  Buttons := nil;
  inherited;
end;

function TImageResponseCard.Obj: TImageResponseCard;
begin
  Result := Self;
end;

function TImageResponseCard.GetButtons: TObjectList<TButton>;
begin
  Result := FButtons;
end;

procedure TImageResponseCard.SetButtons(const Value: TObjectList<TButton>);
begin
  if FButtons <> Value then
  begin
    if not KeepButtons then
      FButtons.Free;
    FButtons := Value;
  end;
end;

function TImageResponseCard.GetKeepButtons: Boolean;
begin
  Result := FKeepButtons;
end;

procedure TImageResponseCard.SetKeepButtons(const Value: Boolean);
begin
  FKeepButtons := Value;
end;

function TImageResponseCard.IsSetButtons: Boolean;
begin
  Result := (FButtons <> nil) and (FButtons.Count > 0);
end;

function TImageResponseCard.GetImageUrl: string;
begin
  Result := FImageUrl.ValueOrDefault;
end;

procedure TImageResponseCard.SetImageUrl(const Value: string);
begin
  FImageUrl := Value;
end;

function TImageResponseCard.IsSetImageUrl: Boolean;
begin
  Result := FImageUrl.HasValue;
end;

function TImageResponseCard.GetSubtitle: string;
begin
  Result := FSubtitle.ValueOrDefault;
end;

procedure TImageResponseCard.SetSubtitle(const Value: string);
begin
  FSubtitle := Value;
end;

function TImageResponseCard.IsSetSubtitle: Boolean;
begin
  Result := FSubtitle.HasValue;
end;

function TImageResponseCard.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TImageResponseCard.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TImageResponseCard.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

end.
