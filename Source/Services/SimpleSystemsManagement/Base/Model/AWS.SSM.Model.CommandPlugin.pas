unit AWS.SSM.Model.CommandPlugin;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TCommandPlugin = class;
  
  ICommandPlugin = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOutput: string;
    procedure SetOutput(const Value: string);
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetOutputS3Region: string;
    procedure SetOutputS3Region(const Value: string);
    function GetResponseCode: Integer;
    procedure SetResponseCode(const Value: Integer);
    function GetResponseFinishDateTime: TDateTime;
    procedure SetResponseFinishDateTime(const Value: TDateTime);
    function GetResponseStartDateTime: TDateTime;
    procedure SetResponseStartDateTime(const Value: TDateTime);
    function GetStandardErrorUrl: string;
    procedure SetStandardErrorUrl(const Value: string);
    function GetStandardOutputUrl: string;
    procedure SetStandardOutputUrl(const Value: string);
    function GetStatus: TCommandPluginStatus;
    procedure SetStatus(const Value: TCommandPluginStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function Obj: TCommandPlugin;
    function IsSetName: Boolean;
    function IsSetOutput: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetOutputS3Region: Boolean;
    function IsSetResponseCode: Boolean;
    function IsSetResponseFinishDateTime: Boolean;
    function IsSetResponseStartDateTime: Boolean;
    function IsSetStandardErrorUrl: Boolean;
    function IsSetStandardOutputUrl: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    property Name: string read GetName write SetName;
    property Output: string read GetOutput write SetOutput;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property OutputS3Region: string read GetOutputS3Region write SetOutputS3Region;
    property ResponseCode: Integer read GetResponseCode write SetResponseCode;
    property ResponseFinishDateTime: TDateTime read GetResponseFinishDateTime write SetResponseFinishDateTime;
    property ResponseStartDateTime: TDateTime read GetResponseStartDateTime write SetResponseStartDateTime;
    property StandardErrorUrl: string read GetStandardErrorUrl write SetStandardErrorUrl;
    property StandardOutputUrl: string read GetStandardOutputUrl write SetStandardOutputUrl;
    property Status: TCommandPluginStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
  end;
  
  TCommandPlugin = class
  strict private
    FName: Nullable<string>;
    FOutput: Nullable<string>;
    FOutputS3BucketName: Nullable<string>;
    FOutputS3KeyPrefix: Nullable<string>;
    FOutputS3Region: Nullable<string>;
    FResponseCode: Nullable<Integer>;
    FResponseFinishDateTime: Nullable<TDateTime>;
    FResponseStartDateTime: Nullable<TDateTime>;
    FStandardErrorUrl: Nullable<string>;
    FStandardOutputUrl: Nullable<string>;
    FStatus: Nullable<TCommandPluginStatus>;
    FStatusDetails: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOutput: string;
    procedure SetOutput(const Value: string);
    function GetOutputS3BucketName: string;
    procedure SetOutputS3BucketName(const Value: string);
    function GetOutputS3KeyPrefix: string;
    procedure SetOutputS3KeyPrefix(const Value: string);
    function GetOutputS3Region: string;
    procedure SetOutputS3Region(const Value: string);
    function GetResponseCode: Integer;
    procedure SetResponseCode(const Value: Integer);
    function GetResponseFinishDateTime: TDateTime;
    procedure SetResponseFinishDateTime(const Value: TDateTime);
    function GetResponseStartDateTime: TDateTime;
    procedure SetResponseStartDateTime(const Value: TDateTime);
    function GetStandardErrorUrl: string;
    procedure SetStandardErrorUrl(const Value: string);
    function GetStandardOutputUrl: string;
    procedure SetStandardOutputUrl(const Value: string);
    function GetStatus: TCommandPluginStatus;
    procedure SetStatus(const Value: TCommandPluginStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
  strict protected
    function Obj: TCommandPlugin;
  public
    function IsSetName: Boolean;
    function IsSetOutput: Boolean;
    function IsSetOutputS3BucketName: Boolean;
    function IsSetOutputS3KeyPrefix: Boolean;
    function IsSetOutputS3Region: Boolean;
    function IsSetResponseCode: Boolean;
    function IsSetResponseFinishDateTime: Boolean;
    function IsSetResponseStartDateTime: Boolean;
    function IsSetStandardErrorUrl: Boolean;
    function IsSetStandardOutputUrl: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    property Name: string read GetName write SetName;
    property Output: string read GetOutput write SetOutput;
    property OutputS3BucketName: string read GetOutputS3BucketName write SetOutputS3BucketName;
    property OutputS3KeyPrefix: string read GetOutputS3KeyPrefix write SetOutputS3KeyPrefix;
    property OutputS3Region: string read GetOutputS3Region write SetOutputS3Region;
    property ResponseCode: Integer read GetResponseCode write SetResponseCode;
    property ResponseFinishDateTime: TDateTime read GetResponseFinishDateTime write SetResponseFinishDateTime;
    property ResponseStartDateTime: TDateTime read GetResponseStartDateTime write SetResponseStartDateTime;
    property StandardErrorUrl: string read GetStandardErrorUrl write SetStandardErrorUrl;
    property StandardOutputUrl: string read GetStandardOutputUrl write SetStandardOutputUrl;
    property Status: TCommandPluginStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
  end;
  
implementation

{ TCommandPlugin }

function TCommandPlugin.Obj: TCommandPlugin;
begin
  Result := Self;
end;

function TCommandPlugin.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCommandPlugin.SetName(const Value: string);
begin
  FName := Value;
end;

function TCommandPlugin.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCommandPlugin.GetOutput: string;
begin
  Result := FOutput.ValueOrDefault;
end;

procedure TCommandPlugin.SetOutput(const Value: string);
begin
  FOutput := Value;
end;

function TCommandPlugin.IsSetOutput: Boolean;
begin
  Result := FOutput.HasValue;
end;

function TCommandPlugin.GetOutputS3BucketName: string;
begin
  Result := FOutputS3BucketName.ValueOrDefault;
end;

procedure TCommandPlugin.SetOutputS3BucketName(const Value: string);
begin
  FOutputS3BucketName := Value;
end;

function TCommandPlugin.IsSetOutputS3BucketName: Boolean;
begin
  Result := FOutputS3BucketName.HasValue;
end;

function TCommandPlugin.GetOutputS3KeyPrefix: string;
begin
  Result := FOutputS3KeyPrefix.ValueOrDefault;
end;

procedure TCommandPlugin.SetOutputS3KeyPrefix(const Value: string);
begin
  FOutputS3KeyPrefix := Value;
end;

function TCommandPlugin.IsSetOutputS3KeyPrefix: Boolean;
begin
  Result := FOutputS3KeyPrefix.HasValue;
end;

function TCommandPlugin.GetOutputS3Region: string;
begin
  Result := FOutputS3Region.ValueOrDefault;
end;

procedure TCommandPlugin.SetOutputS3Region(const Value: string);
begin
  FOutputS3Region := Value;
end;

function TCommandPlugin.IsSetOutputS3Region: Boolean;
begin
  Result := FOutputS3Region.HasValue;
end;

function TCommandPlugin.GetResponseCode: Integer;
begin
  Result := FResponseCode.ValueOrDefault;
end;

procedure TCommandPlugin.SetResponseCode(const Value: Integer);
begin
  FResponseCode := Value;
end;

function TCommandPlugin.IsSetResponseCode: Boolean;
begin
  Result := FResponseCode.HasValue;
end;

function TCommandPlugin.GetResponseFinishDateTime: TDateTime;
begin
  Result := FResponseFinishDateTime.ValueOrDefault;
end;

procedure TCommandPlugin.SetResponseFinishDateTime(const Value: TDateTime);
begin
  FResponseFinishDateTime := Value;
end;

function TCommandPlugin.IsSetResponseFinishDateTime: Boolean;
begin
  Result := FResponseFinishDateTime.HasValue;
end;

function TCommandPlugin.GetResponseStartDateTime: TDateTime;
begin
  Result := FResponseStartDateTime.ValueOrDefault;
end;

procedure TCommandPlugin.SetResponseStartDateTime(const Value: TDateTime);
begin
  FResponseStartDateTime := Value;
end;

function TCommandPlugin.IsSetResponseStartDateTime: Boolean;
begin
  Result := FResponseStartDateTime.HasValue;
end;

function TCommandPlugin.GetStandardErrorUrl: string;
begin
  Result := FStandardErrorUrl.ValueOrDefault;
end;

procedure TCommandPlugin.SetStandardErrorUrl(const Value: string);
begin
  FStandardErrorUrl := Value;
end;

function TCommandPlugin.IsSetStandardErrorUrl: Boolean;
begin
  Result := FStandardErrorUrl.HasValue;
end;

function TCommandPlugin.GetStandardOutputUrl: string;
begin
  Result := FStandardOutputUrl.ValueOrDefault;
end;

procedure TCommandPlugin.SetStandardOutputUrl(const Value: string);
begin
  FStandardOutputUrl := Value;
end;

function TCommandPlugin.IsSetStandardOutputUrl: Boolean;
begin
  Result := FStandardOutputUrl.HasValue;
end;

function TCommandPlugin.GetStatus: TCommandPluginStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TCommandPlugin.SetStatus(const Value: TCommandPluginStatus);
begin
  FStatus := Value;
end;

function TCommandPlugin.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TCommandPlugin.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TCommandPlugin.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TCommandPlugin.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

end.
