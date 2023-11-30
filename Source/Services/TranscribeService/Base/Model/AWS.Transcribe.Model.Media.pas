unit AWS.Transcribe.Model.Media;

interface

uses
  AWS.Nullable;

type
  TMedia = class;
  
  IMedia = interface
    function GetMediaFileUri: string;
    procedure SetMediaFileUri(const Value: string);
    function GetRedactedMediaFileUri: string;
    procedure SetRedactedMediaFileUri(const Value: string);
    function Obj: TMedia;
    function IsSetMediaFileUri: Boolean;
    function IsSetRedactedMediaFileUri: Boolean;
    property MediaFileUri: string read GetMediaFileUri write SetMediaFileUri;
    property RedactedMediaFileUri: string read GetRedactedMediaFileUri write SetRedactedMediaFileUri;
  end;
  
  TMedia = class
  strict private
    FMediaFileUri: Nullable<string>;
    FRedactedMediaFileUri: Nullable<string>;
    function GetMediaFileUri: string;
    procedure SetMediaFileUri(const Value: string);
    function GetRedactedMediaFileUri: string;
    procedure SetRedactedMediaFileUri(const Value: string);
  strict protected
    function Obj: TMedia;
  public
    function IsSetMediaFileUri: Boolean;
    function IsSetRedactedMediaFileUri: Boolean;
    property MediaFileUri: string read GetMediaFileUri write SetMediaFileUri;
    property RedactedMediaFileUri: string read GetRedactedMediaFileUri write SetRedactedMediaFileUri;
  end;
  
implementation

{ TMedia }

function TMedia.Obj: TMedia;
begin
  Result := Self;
end;

function TMedia.GetMediaFileUri: string;
begin
  Result := FMediaFileUri.ValueOrDefault;
end;

procedure TMedia.SetMediaFileUri(const Value: string);
begin
  FMediaFileUri := Value;
end;

function TMedia.IsSetMediaFileUri: Boolean;
begin
  Result := FMediaFileUri.HasValue;
end;

function TMedia.GetRedactedMediaFileUri: string;
begin
  Result := FRedactedMediaFileUri.ValueOrDefault;
end;

procedure TMedia.SetRedactedMediaFileUri(const Value: string);
begin
  FRedactedMediaFileUri := Value;
end;

function TMedia.IsSetRedactedMediaFileUri: Boolean;
begin
  Result := FRedactedMediaFileUri.HasValue;
end;

end.
