unit AWS.LexRuntimeService.Model.GenericAttachment;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.LexRuntimeService.Model.Button;

type
  TGenericAttachment = class;
  
  IGenericAttachment = interface
    function GetAttachmentLinkUrl: string;
    procedure SetAttachmentLinkUrl(const Value: string);
    function GetButtons: TObjectList<TButton>;
    procedure SetButtons(const Value: TObjectList<TButton>);
    function GetKeepButtons: Boolean;
    procedure SetKeepButtons(const Value: Boolean);
    function GetImageUrl: string;
    procedure SetImageUrl(const Value: string);
    function GetSubTitle: string;
    procedure SetSubTitle(const Value: string);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function Obj: TGenericAttachment;
    function IsSetAttachmentLinkUrl: Boolean;
    function IsSetButtons: Boolean;
    function IsSetImageUrl: Boolean;
    function IsSetSubTitle: Boolean;
    function IsSetTitle: Boolean;
    property AttachmentLinkUrl: string read GetAttachmentLinkUrl write SetAttachmentLinkUrl;
    property Buttons: TObjectList<TButton> read GetButtons write SetButtons;
    property KeepButtons: Boolean read GetKeepButtons write SetKeepButtons;
    property ImageUrl: string read GetImageUrl write SetImageUrl;
    property SubTitle: string read GetSubTitle write SetSubTitle;
    property Title: string read GetTitle write SetTitle;
  end;
  
  TGenericAttachment = class
  strict private
    FAttachmentLinkUrl: Nullable<string>;
    FButtons: TObjectList<TButton>;
    FKeepButtons: Boolean;
    FImageUrl: Nullable<string>;
    FSubTitle: Nullable<string>;
    FTitle: Nullable<string>;
    function GetAttachmentLinkUrl: string;
    procedure SetAttachmentLinkUrl(const Value: string);
    function GetButtons: TObjectList<TButton>;
    procedure SetButtons(const Value: TObjectList<TButton>);
    function GetKeepButtons: Boolean;
    procedure SetKeepButtons(const Value: Boolean);
    function GetImageUrl: string;
    procedure SetImageUrl(const Value: string);
    function GetSubTitle: string;
    procedure SetSubTitle(const Value: string);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  strict protected
    function Obj: TGenericAttachment;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttachmentLinkUrl: Boolean;
    function IsSetButtons: Boolean;
    function IsSetImageUrl: Boolean;
    function IsSetSubTitle: Boolean;
    function IsSetTitle: Boolean;
    property AttachmentLinkUrl: string read GetAttachmentLinkUrl write SetAttachmentLinkUrl;
    property Buttons: TObjectList<TButton> read GetButtons write SetButtons;
    property KeepButtons: Boolean read GetKeepButtons write SetKeepButtons;
    property ImageUrl: string read GetImageUrl write SetImageUrl;
    property SubTitle: string read GetSubTitle write SetSubTitle;
    property Title: string read GetTitle write SetTitle;
  end;
  
implementation

{ TGenericAttachment }

constructor TGenericAttachment.Create;
begin
  inherited;
  FButtons := TObjectList<TButton>.Create;
end;

destructor TGenericAttachment.Destroy;
begin
  Buttons := nil;
  inherited;
end;

function TGenericAttachment.Obj: TGenericAttachment;
begin
  Result := Self;
end;

function TGenericAttachment.GetAttachmentLinkUrl: string;
begin
  Result := FAttachmentLinkUrl.ValueOrDefault;
end;

procedure TGenericAttachment.SetAttachmentLinkUrl(const Value: string);
begin
  FAttachmentLinkUrl := Value;
end;

function TGenericAttachment.IsSetAttachmentLinkUrl: Boolean;
begin
  Result := FAttachmentLinkUrl.HasValue;
end;

function TGenericAttachment.GetButtons: TObjectList<TButton>;
begin
  Result := FButtons;
end;

procedure TGenericAttachment.SetButtons(const Value: TObjectList<TButton>);
begin
  if FButtons <> Value then
  begin
    if not KeepButtons then
      FButtons.Free;
    FButtons := Value;
  end;
end;

function TGenericAttachment.GetKeepButtons: Boolean;
begin
  Result := FKeepButtons;
end;

procedure TGenericAttachment.SetKeepButtons(const Value: Boolean);
begin
  FKeepButtons := Value;
end;

function TGenericAttachment.IsSetButtons: Boolean;
begin
  Result := (FButtons <> nil) and (FButtons.Count > 0);
end;

function TGenericAttachment.GetImageUrl: string;
begin
  Result := FImageUrl.ValueOrDefault;
end;

procedure TGenericAttachment.SetImageUrl(const Value: string);
begin
  FImageUrl := Value;
end;

function TGenericAttachment.IsSetImageUrl: Boolean;
begin
  Result := FImageUrl.HasValue;
end;

function TGenericAttachment.GetSubTitle: string;
begin
  Result := FSubTitle.ValueOrDefault;
end;

procedure TGenericAttachment.SetSubTitle(const Value: string);
begin
  FSubTitle := Value;
end;

function TGenericAttachment.IsSetSubTitle: Boolean;
begin
  Result := FSubTitle.HasValue;
end;

function TGenericAttachment.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TGenericAttachment.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TGenericAttachment.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

end.
