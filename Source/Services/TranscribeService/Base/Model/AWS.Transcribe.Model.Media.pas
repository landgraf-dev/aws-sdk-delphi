unit AWS.Transcribe.Model.Media;

interface

uses
  Bcl.Types.Nullable;

type
  TMedia = class;
  
  IMedia = interface
    function GetMediaFileUri: string;
    procedure SetMediaFileUri(const Value: string);
    function Obj: TMedia;
    function IsSetMediaFileUri: Boolean;
    property MediaFileUri: string read GetMediaFileUri write SetMediaFileUri;
  end;
  
  TMedia = class
  strict private
    FMediaFileUri: Nullable<string>;
    function GetMediaFileUri: string;
    procedure SetMediaFileUri(const Value: string);
  strict protected
    function Obj: TMedia;
  public
    function IsSetMediaFileUri: Boolean;
    property MediaFileUri: string read GetMediaFileUri write SetMediaFileUri;
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

end.
