unit AWS.Rekognition.Model.S3Destination;

interface

uses
  Bcl.Types.Nullable;

type
  TS3Destination = class;
  
  IS3Destination = interface
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetKeyPrefix: string;
    procedure SetKeyPrefix(const Value: string);
    function Obj: TS3Destination;
    function IsSetBucket: Boolean;
    function IsSetKeyPrefix: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property KeyPrefix: string read GetKeyPrefix write SetKeyPrefix;
  end;
  
  TS3Destination = class
  strict private
    FBucket: Nullable<string>;
    FKeyPrefix: Nullable<string>;
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetKeyPrefix: string;
    procedure SetKeyPrefix(const Value: string);
  strict protected
    function Obj: TS3Destination;
  public
    function IsSetBucket: Boolean;
    function IsSetKeyPrefix: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property KeyPrefix: string read GetKeyPrefix write SetKeyPrefix;
  end;
  
implementation

{ TS3Destination }

function TS3Destination.Obj: TS3Destination;
begin
  Result := Self;
end;

function TS3Destination.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TS3Destination.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TS3Destination.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TS3Destination.GetKeyPrefix: string;
begin
  Result := FKeyPrefix.ValueOrDefault;
end;

procedure TS3Destination.SetKeyPrefix(const Value: string);
begin
  FKeyPrefix := Value;
end;

function TS3Destination.IsSetKeyPrefix: Boolean;
begin
  Result := FKeyPrefix.HasValue;
end;

end.
