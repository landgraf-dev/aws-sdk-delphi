unit AWS.SSM.Model.SessionManagerOutputUrl;

interface

uses
  AWS.Nullable;

type
  TSessionManagerOutputUrl = class;
  
  ISessionManagerOutputUrl = interface
    function GetCloudWatchOutputUrl: string;
    procedure SetCloudWatchOutputUrl(const Value: string);
    function GetS3OutputUrl: string;
    procedure SetS3OutputUrl(const Value: string);
    function Obj: TSessionManagerOutputUrl;
    function IsSetCloudWatchOutputUrl: Boolean;
    function IsSetS3OutputUrl: Boolean;
    property CloudWatchOutputUrl: string read GetCloudWatchOutputUrl write SetCloudWatchOutputUrl;
    property S3OutputUrl: string read GetS3OutputUrl write SetS3OutputUrl;
  end;
  
  TSessionManagerOutputUrl = class
  strict private
    FCloudWatchOutputUrl: Nullable<string>;
    FS3OutputUrl: Nullable<string>;
    function GetCloudWatchOutputUrl: string;
    procedure SetCloudWatchOutputUrl(const Value: string);
    function GetS3OutputUrl: string;
    procedure SetS3OutputUrl(const Value: string);
  strict protected
    function Obj: TSessionManagerOutputUrl;
  public
    function IsSetCloudWatchOutputUrl: Boolean;
    function IsSetS3OutputUrl: Boolean;
    property CloudWatchOutputUrl: string read GetCloudWatchOutputUrl write SetCloudWatchOutputUrl;
    property S3OutputUrl: string read GetS3OutputUrl write SetS3OutputUrl;
  end;
  
implementation

{ TSessionManagerOutputUrl }

function TSessionManagerOutputUrl.Obj: TSessionManagerOutputUrl;
begin
  Result := Self;
end;

function TSessionManagerOutputUrl.GetCloudWatchOutputUrl: string;
begin
  Result := FCloudWatchOutputUrl.ValueOrDefault;
end;

procedure TSessionManagerOutputUrl.SetCloudWatchOutputUrl(const Value: string);
begin
  FCloudWatchOutputUrl := Value;
end;

function TSessionManagerOutputUrl.IsSetCloudWatchOutputUrl: Boolean;
begin
  Result := FCloudWatchOutputUrl.HasValue;
end;

function TSessionManagerOutputUrl.GetS3OutputUrl: string;
begin
  Result := FS3OutputUrl.ValueOrDefault;
end;

procedure TSessionManagerOutputUrl.SetS3OutputUrl(const Value: string);
begin
  FS3OutputUrl := Value;
end;

function TSessionManagerOutputUrl.IsSetS3OutputUrl: Boolean;
begin
  Result := FS3OutputUrl.HasValue;
end;

end.
