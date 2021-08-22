unit AWS.LexRuntimeV2.Model.Message;

interface

uses
  Bcl.Types.Nullable, 
  AWS.LexRuntimeV2.Enums, 
  AWS.LexRuntimeV2.Model.ImageResponseCard;

type
  TMessage = class;
  
  IMessage = interface
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetContentType: TMessageContentType;
    procedure SetContentType(const Value: TMessageContentType);
    function GetImageResponseCard: TImageResponseCard;
    procedure SetImageResponseCard(const Value: TImageResponseCard);
    function GetKeepImageResponseCard: Boolean;
    procedure SetKeepImageResponseCard(const Value: Boolean);
    function Obj: TMessage;
    function IsSetContent: Boolean;
    function IsSetContentType: Boolean;
    function IsSetImageResponseCard: Boolean;
    property Content: string read GetContent write SetContent;
    property ContentType: TMessageContentType read GetContentType write SetContentType;
    property ImageResponseCard: TImageResponseCard read GetImageResponseCard write SetImageResponseCard;
    property KeepImageResponseCard: Boolean read GetKeepImageResponseCard write SetKeepImageResponseCard;
  end;
  
  TMessage = class
  strict private
    FContent: Nullable<string>;
    FContentType: Nullable<TMessageContentType>;
    FImageResponseCard: TImageResponseCard;
    FKeepImageResponseCard: Boolean;
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetContentType: TMessageContentType;
    procedure SetContentType(const Value: TMessageContentType);
    function GetImageResponseCard: TImageResponseCard;
    procedure SetImageResponseCard(const Value: TImageResponseCard);
    function GetKeepImageResponseCard: Boolean;
    procedure SetKeepImageResponseCard(const Value: Boolean);
  strict protected
    function Obj: TMessage;
  public
    destructor Destroy; override;
    function IsSetContent: Boolean;
    function IsSetContentType: Boolean;
    function IsSetImageResponseCard: Boolean;
    property Content: string read GetContent write SetContent;
    property ContentType: TMessageContentType read GetContentType write SetContentType;
    property ImageResponseCard: TImageResponseCard read GetImageResponseCard write SetImageResponseCard;
    property KeepImageResponseCard: Boolean read GetKeepImageResponseCard write SetKeepImageResponseCard;
  end;
  
implementation

{ TMessage }

destructor TMessage.Destroy;
begin
  ImageResponseCard := nil;
  inherited;
end;

function TMessage.Obj: TMessage;
begin
  Result := Self;
end;

function TMessage.GetContent: string;
begin
  Result := FContent.ValueOrDefault;
end;

procedure TMessage.SetContent(const Value: string);
begin
  FContent := Value;
end;

function TMessage.IsSetContent: Boolean;
begin
  Result := FContent.HasValue;
end;

function TMessage.GetContentType: TMessageContentType;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TMessage.SetContentType(const Value: TMessageContentType);
begin
  FContentType := Value;
end;

function TMessage.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TMessage.GetImageResponseCard: TImageResponseCard;
begin
  Result := FImageResponseCard;
end;

procedure TMessage.SetImageResponseCard(const Value: TImageResponseCard);
begin
  if FImageResponseCard <> Value then
  begin
    if not KeepImageResponseCard then
      FImageResponseCard.Free;
    FImageResponseCard := Value;
  end;
end;

function TMessage.GetKeepImageResponseCard: Boolean;
begin
  Result := FKeepImageResponseCard;
end;

procedure TMessage.SetKeepImageResponseCard(const Value: Boolean);
begin
  FKeepImageResponseCard := Value;
end;

function TMessage.IsSetImageResponseCard: Boolean;
begin
  Result := FImageResponseCard <> nil;
end;

end.
