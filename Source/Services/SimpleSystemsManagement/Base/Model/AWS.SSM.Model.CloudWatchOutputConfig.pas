unit AWS.SSM.Model.CloudWatchOutputConfig;

interface

uses
  AWS.Nullable;

type
  TCloudWatchOutputConfig = class;
  
  ICloudWatchOutputConfig = interface
    function GetCloudWatchLogGroupName: string;
    procedure SetCloudWatchLogGroupName(const Value: string);
    function GetCloudWatchOutputEnabled: Boolean;
    procedure SetCloudWatchOutputEnabled(const Value: Boolean);
    function Obj: TCloudWatchOutputConfig;
    function IsSetCloudWatchLogGroupName: Boolean;
    function IsSetCloudWatchOutputEnabled: Boolean;
    property CloudWatchLogGroupName: string read GetCloudWatchLogGroupName write SetCloudWatchLogGroupName;
    property CloudWatchOutputEnabled: Boolean read GetCloudWatchOutputEnabled write SetCloudWatchOutputEnabled;
  end;
  
  TCloudWatchOutputConfig = class
  strict private
    FCloudWatchLogGroupName: Nullable<string>;
    FCloudWatchOutputEnabled: Nullable<Boolean>;
    function GetCloudWatchLogGroupName: string;
    procedure SetCloudWatchLogGroupName(const Value: string);
    function GetCloudWatchOutputEnabled: Boolean;
    procedure SetCloudWatchOutputEnabled(const Value: Boolean);
  strict protected
    function Obj: TCloudWatchOutputConfig;
  public
    function IsSetCloudWatchLogGroupName: Boolean;
    function IsSetCloudWatchOutputEnabled: Boolean;
    property CloudWatchLogGroupName: string read GetCloudWatchLogGroupName write SetCloudWatchLogGroupName;
    property CloudWatchOutputEnabled: Boolean read GetCloudWatchOutputEnabled write SetCloudWatchOutputEnabled;
  end;
  
implementation

{ TCloudWatchOutputConfig }

function TCloudWatchOutputConfig.Obj: TCloudWatchOutputConfig;
begin
  Result := Self;
end;

function TCloudWatchOutputConfig.GetCloudWatchLogGroupName: string;
begin
  Result := FCloudWatchLogGroupName.ValueOrDefault;
end;

procedure TCloudWatchOutputConfig.SetCloudWatchLogGroupName(const Value: string);
begin
  FCloudWatchLogGroupName := Value;
end;

function TCloudWatchOutputConfig.IsSetCloudWatchLogGroupName: Boolean;
begin
  Result := FCloudWatchLogGroupName.HasValue;
end;

function TCloudWatchOutputConfig.GetCloudWatchOutputEnabled: Boolean;
begin
  Result := FCloudWatchOutputEnabled.ValueOrDefault;
end;

procedure TCloudWatchOutputConfig.SetCloudWatchOutputEnabled(const Value: Boolean);
begin
  FCloudWatchOutputEnabled := Value;
end;

function TCloudWatchOutputConfig.IsSetCloudWatchOutputEnabled: Boolean;
begin
  Result := FCloudWatchOutputEnabled.HasValue;
end;

end.
