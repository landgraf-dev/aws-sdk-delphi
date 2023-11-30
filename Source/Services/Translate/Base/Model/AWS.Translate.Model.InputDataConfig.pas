unit AWS.Translate.Model.InputDataConfig;

interface

uses
  AWS.Nullable;

type
  TInputDataConfig = class;
  
  IInputDataConfig = interface
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
    function Obj: TInputDataConfig;
    function IsSetContentType: Boolean;
    function IsSetS3Uri: Boolean;
    property ContentType: string read GetContentType write SetContentType;
    property S3Uri: string read GetS3Uri write SetS3Uri;
  end;
  
  TInputDataConfig = class
  strict private
    FContentType: Nullable<string>;
    FS3Uri: Nullable<string>;
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
  strict protected
    function Obj: TInputDataConfig;
  public
    function IsSetContentType: Boolean;
    function IsSetS3Uri: Boolean;
    property ContentType: string read GetContentType write SetContentType;
    property S3Uri: string read GetS3Uri write SetS3Uri;
  end;
  
implementation

{ TInputDataConfig }

function TInputDataConfig.Obj: TInputDataConfig;
begin
  Result := Self;
end;

function TInputDataConfig.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TInputDataConfig.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TInputDataConfig.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TInputDataConfig.GetS3Uri: string;
begin
  Result := FS3Uri.ValueOrDefault;
end;

procedure TInputDataConfig.SetS3Uri(const Value: string);
begin
  FS3Uri := Value;
end;

function TInputDataConfig.IsSetS3Uri: Boolean;
begin
  Result := FS3Uri.HasValue;
end;

end.
