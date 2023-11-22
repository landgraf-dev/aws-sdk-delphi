unit AWS.S3Control.Model.JobReport;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Enums;

type
  TJobReport = class;
  
  IJobReport = interface
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetFormat: TJobReportFormat;
    procedure SetFormat(const Value: TJobReportFormat);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetReportScope: TJobReportScope;
    procedure SetReportScope(const Value: TJobReportScope);
    function Obj: TJobReport;
    function IsSetBucket: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetFormat: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetReportScope: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Format: TJobReportFormat read GetFormat write SetFormat;
    property Prefix: string read GetPrefix write SetPrefix;
    property ReportScope: TJobReportScope read GetReportScope write SetReportScope;
  end;
  
  TJobReport = class
  strict private
    FBucket: Nullable<string>;
    FEnabled: Nullable<Boolean>;
    FFormat: Nullable<TJobReportFormat>;
    FPrefix: Nullable<string>;
    FReportScope: Nullable<TJobReportScope>;
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetFormat: TJobReportFormat;
    procedure SetFormat(const Value: TJobReportFormat);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetReportScope: TJobReportScope;
    procedure SetReportScope(const Value: TJobReportScope);
  strict protected
    function Obj: TJobReport;
  public
    function IsSetBucket: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetFormat: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetReportScope: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Format: TJobReportFormat read GetFormat write SetFormat;
    property Prefix: string read GetPrefix write SetPrefix;
    property ReportScope: TJobReportScope read GetReportScope write SetReportScope;
  end;
  
implementation

{ TJobReport }

function TJobReport.Obj: TJobReport;
begin
  Result := Self;
end;

function TJobReport.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TJobReport.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TJobReport.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TJobReport.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TJobReport.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TJobReport.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TJobReport.GetFormat: TJobReportFormat;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TJobReport.SetFormat(const Value: TJobReportFormat);
begin
  FFormat := Value;
end;

function TJobReport.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

function TJobReport.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TJobReport.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TJobReport.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TJobReport.GetReportScope: TJobReportScope;
begin
  Result := FReportScope.ValueOrDefault;
end;

procedure TJobReport.SetReportScope(const Value: TJobReportScope);
begin
  FReportScope := Value;
end;

function TJobReport.IsSetReportScope: Boolean;
begin
  Result := FReportScope.HasValue;
end;

end.
