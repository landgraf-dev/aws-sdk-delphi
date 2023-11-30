unit AWS.Translate.Model.OutputDataConfig;

interface

uses
  AWS.Translate.Model.EncryptionKey, 
  AWS.Nullable;

type
  TOutputDataConfig = class;
  
  IOutputDataConfig = interface
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
    function Obj: TOutputDataConfig;
    function IsSetEncryptionKey: Boolean;
    function IsSetS3Uri: Boolean;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property S3Uri: string read GetS3Uri write SetS3Uri;
  end;
  
  TOutputDataConfig = class
  strict private
    FEncryptionKey: TEncryptionKey;
    FKeepEncryptionKey: Boolean;
    FS3Uri: Nullable<string>;
    function GetEncryptionKey: TEncryptionKey;
    procedure SetEncryptionKey(const Value: TEncryptionKey);
    function GetKeepEncryptionKey: Boolean;
    procedure SetKeepEncryptionKey(const Value: Boolean);
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
  strict protected
    function Obj: TOutputDataConfig;
  public
    destructor Destroy; override;
    function IsSetEncryptionKey: Boolean;
    function IsSetS3Uri: Boolean;
    property EncryptionKey: TEncryptionKey read GetEncryptionKey write SetEncryptionKey;
    property KeepEncryptionKey: Boolean read GetKeepEncryptionKey write SetKeepEncryptionKey;
    property S3Uri: string read GetS3Uri write SetS3Uri;
  end;
  
implementation

{ TOutputDataConfig }

destructor TOutputDataConfig.Destroy;
begin
  EncryptionKey := nil;
  inherited;
end;

function TOutputDataConfig.Obj: TOutputDataConfig;
begin
  Result := Self;
end;

function TOutputDataConfig.GetEncryptionKey: TEncryptionKey;
begin
  Result := FEncryptionKey;
end;

procedure TOutputDataConfig.SetEncryptionKey(const Value: TEncryptionKey);
begin
  if FEncryptionKey <> Value then
  begin
    if not KeepEncryptionKey then
      FEncryptionKey.Free;
    FEncryptionKey := Value;
  end;
end;

function TOutputDataConfig.GetKeepEncryptionKey: Boolean;
begin
  Result := FKeepEncryptionKey;
end;

procedure TOutputDataConfig.SetKeepEncryptionKey(const Value: Boolean);
begin
  FKeepEncryptionKey := Value;
end;

function TOutputDataConfig.IsSetEncryptionKey: Boolean;
begin
  Result := FEncryptionKey <> nil;
end;

function TOutputDataConfig.GetS3Uri: string;
begin
  Result := FS3Uri.ValueOrDefault;
end;

procedure TOutputDataConfig.SetS3Uri(const Value: string);
begin
  FS3Uri := Value;
end;

function TOutputDataConfig.IsSetS3Uri: Boolean;
begin
  Result := FS3Uri.HasValue;
end;

end.
