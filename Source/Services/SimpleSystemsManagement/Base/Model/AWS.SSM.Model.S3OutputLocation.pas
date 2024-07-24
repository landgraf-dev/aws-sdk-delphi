unit AWS.SSM.Model.S3OutputLocation;

interface

uses
  AWS.Nullable;

type
  TS3OutputLocation = class;
  
  IS3OutputLocation = interface
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetOutputS3Region: string;
    procedure SetOutputS3Region(const Value: string);
    function Obj: TS3OutputLocation;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetOutputS3Region: Boolean;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property OutputS3Region: string read GetOutputS3Region write SetOutputS3Region;
  end;
  
  TS3OutputLocation = class
  strict private
    FOutputS3BucketName: Nullable<string>;
    FOutputS3KeyPrefix: Nullable<string>;
    FOutputS3Region: Nullable<string>;
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetOutputS3Region: string;
    procedure SetOutputS3Region(const Value: string);
  strict protected
    function Obj: TS3OutputLocation;
  public
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetOutputS3Region: Boolean;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property OutputS3Region: string read GetOutputS3Region write SetOutputS3Region;
  end;
  
implementation

{ TS3OutputLocation }

function TS3OutputLocation.Obj: TS3OutputLocation;
begin
  Result := Self;
end;

function TS3OutputLocation.GetOutputS3BucketName: string;
begin
  Result := FOutputS3BucketName.ValueOrDefault;
end;

procedure TS3OutputLocation.SetOutputS3BucketName(const Value: string);
begin
  FOutputS3BucketName := Value;
end;

function TS3OutputLocation.IsSetOutputS3BucketName: Boolean;
begin
  Result := FOutputS3BucketName.HasValue;
end;

function TS3OutputLocation.GetOutputS3KeyPrefix: string;
begin
  Result := FOutputS3KeyPrefix.ValueOrDefault;
end;

procedure TS3OutputLocation.SetOutputS3KeyPrefix(const Value: string);
begin
  FOutputS3KeyPrefix := Value;
end;

function TS3OutputLocation.IsSetOutputS3KeyPrefix: Boolean;
begin
  Result := FOutputS3KeyPrefix.HasValue;
end;

function TS3OutputLocation.GetOutputS3Region: string;
begin
  Result := FOutputS3Region.ValueOrDefault;
end;

procedure TS3OutputLocation.SetOutputS3Region(const Value: string);
begin
  FOutputS3Region := Value;
end;

function TS3OutputLocation.IsSetOutputS3Region: Boolean;
begin
  Result := FOutputS3Region.HasValue;
end;

end.
