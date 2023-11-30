unit AWS.Rekognition.Model.DatasetDescription;

interface

uses
  AWS.Nullable, 
  AWS.Rekognition.Model.DatasetStats, 
  AWS.Rekognition.Enums;

type
  TDatasetDescription = class;
  
  IDatasetDescription = interface
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetDatasetStats: TDatasetStats;
    procedure SetDatasetStats(const Value: TDatasetStats);
    function GetKeepDatasetStats: Boolean;
    procedure SetKeepDatasetStats(const Value: Boolean);
    function GetLastUpdatedTimestamp: TDateTime;
    procedure SetLastUpdatedTimestamp(const Value: TDateTime);
    function GetStatus: TDatasetStatus;
    procedure SetStatus(const Value: TDatasetStatus);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetStatusMessageCode: TDatasetStatusMessageCode;
    procedure SetStatusMessageCode(const Value: TDatasetStatusMessageCode);
    function Obj: TDatasetDescription;
    function IsSetCreationTimestamp: Boolean;
    function IsSetDatasetStats: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetStatusMessageCode: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property DatasetStats: TDatasetStats read GetDatasetStats write SetDatasetStats;
    property KeepDatasetStats: Boolean read GetKeepDatasetStats write SetKeepDatasetStats;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
    property Status: TDatasetStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property StatusMessageCode: TDatasetStatusMessageCode read GetStatusMessageCode write SetStatusMessageCode;
  end;
  
  TDatasetDescription = class
  strict private
    FCreationTimestamp: Nullable<TDateTime>;
    FDatasetStats: TDatasetStats;
    FKeepDatasetStats: Boolean;
    FLastUpdatedTimestamp: Nullable<TDateTime>;
    FStatus: Nullable<TDatasetStatus>;
    FStatusMessage: Nullable<string>;
    FStatusMessageCode: Nullable<TDatasetStatusMessageCode>;
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetDatasetStats: TDatasetStats;
    procedure SetDatasetStats(const Value: TDatasetStats);
    function GetKeepDatasetStats: Boolean;
    procedure SetKeepDatasetStats(const Value: Boolean);
    function GetLastUpdatedTimestamp: TDateTime;
    procedure SetLastUpdatedTimestamp(const Value: TDateTime);
    function GetStatus: TDatasetStatus;
    procedure SetStatus(const Value: TDatasetStatus);
    function GetStatusMessage: string;
    procedure SetStatusMessage(const Value: string);
    function GetStatusMessageCode: TDatasetStatusMessageCode;
    procedure SetStatusMessageCode(const Value: TDatasetStatusMessageCode);
  strict protected
    function Obj: TDatasetDescription;
  public
    destructor Destroy; override;
    function IsSetCreationTimestamp: Boolean;
    function IsSetDatasetStats: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusMessage: Boolean;
    function IsSetStatusMessageCode: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property DatasetStats: TDatasetStats read GetDatasetStats write SetDatasetStats;
    property KeepDatasetStats: Boolean read GetKeepDatasetStats write SetKeepDatasetStats;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
    property Status: TDatasetStatus read GetStatus write SetStatus;
    property StatusMessage: string read GetStatusMessage write SetStatusMessage;
    property StatusMessageCode: TDatasetStatusMessageCode read GetStatusMessageCode write SetStatusMessageCode;
  end;
  
implementation

{ TDatasetDescription }

destructor TDatasetDescription.Destroy;
begin
  DatasetStats := nil;
  inherited;
end;

function TDatasetDescription.Obj: TDatasetDescription;
begin
  Result := Self;
end;

function TDatasetDescription.GetCreationTimestamp: TDateTime;
begin
  Result := FCreationTimestamp.ValueOrDefault;
end;

procedure TDatasetDescription.SetCreationTimestamp(const Value: TDateTime);
begin
  FCreationTimestamp := Value;
end;

function TDatasetDescription.IsSetCreationTimestamp: Boolean;
begin
  Result := FCreationTimestamp.HasValue;
end;

function TDatasetDescription.GetDatasetStats: TDatasetStats;
begin
  Result := FDatasetStats;
end;

procedure TDatasetDescription.SetDatasetStats(const Value: TDatasetStats);
begin
  if FDatasetStats <> Value then
  begin
    if not KeepDatasetStats then
      FDatasetStats.Free;
    FDatasetStats := Value;
  end;
end;

function TDatasetDescription.GetKeepDatasetStats: Boolean;
begin
  Result := FKeepDatasetStats;
end;

procedure TDatasetDescription.SetKeepDatasetStats(const Value: Boolean);
begin
  FKeepDatasetStats := Value;
end;

function TDatasetDescription.IsSetDatasetStats: Boolean;
begin
  Result := FDatasetStats <> nil;
end;

function TDatasetDescription.GetLastUpdatedTimestamp: TDateTime;
begin
  Result := FLastUpdatedTimestamp.ValueOrDefault;
end;

procedure TDatasetDescription.SetLastUpdatedTimestamp(const Value: TDateTime);
begin
  FLastUpdatedTimestamp := Value;
end;

function TDatasetDescription.IsSetLastUpdatedTimestamp: Boolean;
begin
  Result := FLastUpdatedTimestamp.HasValue;
end;

function TDatasetDescription.GetStatus: TDatasetStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TDatasetDescription.SetStatus(const Value: TDatasetStatus);
begin
  FStatus := Value;
end;

function TDatasetDescription.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TDatasetDescription.GetStatusMessage: string;
begin
  Result := FStatusMessage.ValueOrDefault;
end;

procedure TDatasetDescription.SetStatusMessage(const Value: string);
begin
  FStatusMessage := Value;
end;

function TDatasetDescription.IsSetStatusMessage: Boolean;
begin
  Result := FStatusMessage.HasValue;
end;

function TDatasetDescription.GetStatusMessageCode: TDatasetStatusMessageCode;
begin
  Result := FStatusMessageCode.ValueOrDefault;
end;

procedure TDatasetDescription.SetStatusMessageCode(const Value: TDatasetStatusMessageCode);
begin
  FStatusMessageCode := Value;
end;

function TDatasetDescription.IsSetStatusMessageCode: Boolean;
begin
  Result := FStatusMessageCode.HasValue;
end;

end.
