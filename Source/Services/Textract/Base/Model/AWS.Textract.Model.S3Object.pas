unit AWS.Textract.Model.S3Object;

interface

uses
  Bcl.Types.Nullable;

type
  TS3Object = class;
  
  IS3Object = interface
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    function Obj: TS3Object;
    function IsSetBucket: Boolean;
    function IsSetName: Boolean;
    function IsSetVersion: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property Name: string read GetName write SetName;
    property Version: string read GetVersion write SetVersion;
  end;
  
  TS3Object = class
  strict private
    FBucket: Nullable<string>;
    FName: Nullable<string>;
    FVersion: Nullable<string>;
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
  strict protected
    function Obj: TS3Object;
  public
    function IsSetBucket: Boolean;
    function IsSetName: Boolean;
    function IsSetVersion: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property Name: string read GetName write SetName;
    property Version: string read GetVersion write SetVersion;
  end;
  
implementation

{ TS3Object }

function TS3Object.Obj: TS3Object;
begin
  Result := Self;
end;

function TS3Object.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TS3Object.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TS3Object.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TS3Object.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TS3Object.SetName(const Value: string);
begin
  FName := Value;
end;

function TS3Object.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TS3Object.GetVersion: string;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TS3Object.SetVersion(const Value: string);
begin
  FVersion := Value;
end;

function TS3Object.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
