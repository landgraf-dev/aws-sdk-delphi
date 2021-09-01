unit AWS.Translate.Model.OutputDataConfig;

interface

uses
  Bcl.Types.Nullable;

type
  TOutputDataConfig = class;
  
  IOutputDataConfig = interface
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
    function Obj: TOutputDataConfig;
    function IsSetS3Uri: Boolean;
    property S3Uri: string read GetS3Uri write SetS3Uri;
  end;
  
  TOutputDataConfig = class
  strict private
    FS3Uri: Nullable<string>;
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
  strict protected
    function Obj: TOutputDataConfig;
  public
    function IsSetS3Uri: Boolean;
    property S3Uri: string read GetS3Uri write SetS3Uri;
  end;
  
implementation

{ TOutputDataConfig }

function TOutputDataConfig.Obj: TOutputDataConfig;
begin
  Result := Self;
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
