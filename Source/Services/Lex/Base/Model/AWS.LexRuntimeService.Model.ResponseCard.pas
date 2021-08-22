unit AWS.LexRuntimeService.Model.ResponseCard;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.LexRuntimeService.Enums, 
  AWS.LexRuntimeService.Model.GenericAttachment;

type
  TResponseCard = class;
  
  IResponseCard = interface
    function GetContentType: TContentType;
    procedure SetContentType(const Value: TContentType);
    function GetGenericAttachments: TObjectList<TGenericAttachment>;
    procedure SetGenericAttachments(const Value: TObjectList<TGenericAttachment>);
    function GetKeepGenericAttachments: Boolean;
    procedure SetKeepGenericAttachments(const Value: Boolean);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    function Obj: TResponseCard;
    function IsSetContentType: Boolean;
    function IsSetGenericAttachments: Boolean;
    function IsSetVersion: Boolean;
    property ContentType: TContentType read GetContentType write SetContentType;
    property GenericAttachments: TObjectList<TGenericAttachment> read GetGenericAttachments write SetGenericAttachments;
    property KeepGenericAttachments: Boolean read GetKeepGenericAttachments write SetKeepGenericAttachments;
    property Version: string read GetVersion write SetVersion;
  end;
  
  TResponseCard = class
  strict private
    FContentType: Nullable<TContentType>;
    FGenericAttachments: TObjectList<TGenericAttachment>;
    FKeepGenericAttachments: Boolean;
    FVersion: Nullable<string>;
    function GetContentType: TContentType;
    procedure SetContentType(const Value: TContentType);
    function GetGenericAttachments: TObjectList<TGenericAttachment>;
    procedure SetGenericAttachments(const Value: TObjectList<TGenericAttachment>);
    function GetKeepGenericAttachments: Boolean;
    procedure SetKeepGenericAttachments(const Value: Boolean);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
  strict protected
    function Obj: TResponseCard;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContentType: Boolean;
    function IsSetGenericAttachments: Boolean;
    function IsSetVersion: Boolean;
    property ContentType: TContentType read GetContentType write SetContentType;
    property GenericAttachments: TObjectList<TGenericAttachment> read GetGenericAttachments write SetGenericAttachments;
    property KeepGenericAttachments: Boolean read GetKeepGenericAttachments write SetKeepGenericAttachments;
    property Version: string read GetVersion write SetVersion;
  end;
  
implementation

{ TResponseCard }

constructor TResponseCard.Create;
begin
  inherited;
  FGenericAttachments := TObjectList<TGenericAttachment>.Create;
end;

destructor TResponseCard.Destroy;
begin
  GenericAttachments := nil;
  inherited;
end;

function TResponseCard.Obj: TResponseCard;
begin
  Result := Self;
end;

function TResponseCard.GetContentType: TContentType;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TResponseCard.SetContentType(const Value: TContentType);
begin
  FContentType := Value;
end;

function TResponseCard.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TResponseCard.GetGenericAttachments: TObjectList<TGenericAttachment>;
begin
  Result := FGenericAttachments;
end;

procedure TResponseCard.SetGenericAttachments(const Value: TObjectList<TGenericAttachment>);
begin
  if FGenericAttachments <> Value then
  begin
    if not KeepGenericAttachments then
      FGenericAttachments.Free;
    FGenericAttachments := Value;
  end;
end;

function TResponseCard.GetKeepGenericAttachments: Boolean;
begin
  Result := FKeepGenericAttachments;
end;

procedure TResponseCard.SetKeepGenericAttachments(const Value: Boolean);
begin
  FKeepGenericAttachments := Value;
end;

function TResponseCard.IsSetGenericAttachments: Boolean;
begin
  Result := (FGenericAttachments <> nil) and (FGenericAttachments.Count > 0);
end;

function TResponseCard.GetVersion: string;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TResponseCard.SetVersion(const Value: string);
begin
  FVersion := Value;
end;

function TResponseCard.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
