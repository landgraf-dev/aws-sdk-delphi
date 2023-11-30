unit AWS.Rekognition.Model.DatasetStats;

interface

uses
  AWS.Nullable;

type
  TDatasetStats = class;
  
  IDatasetStats = interface
    function GetErrorEntries: Integer;
    procedure SetErrorEntries(const Value: Integer);
    function GetLabeledEntries: Integer;
    procedure SetLabeledEntries(const Value: Integer);
    function GetTotalEntries: Integer;
    procedure SetTotalEntries(const Value: Integer);
    function GetTotalLabels: Integer;
    procedure SetTotalLabels(const Value: Integer);
    function Obj: TDatasetStats;
    function IsSetErrorEntries: Boolean;
    function IsSetLabeledEntries: Boolean;
    function IsSetTotalEntries: Boolean;
    function IsSetTotalLabels: Boolean;
    property ErrorEntries: Integer read GetErrorEntries write SetErrorEntries;
    property LabeledEntries: Integer read GetLabeledEntries write SetLabeledEntries;
    property TotalEntries: Integer read GetTotalEntries write SetTotalEntries;
    property TotalLabels: Integer read GetTotalLabels write SetTotalLabels;
  end;
  
  TDatasetStats = class
  strict private
    FErrorEntries: Nullable<Integer>;
    FLabeledEntries: Nullable<Integer>;
    FTotalEntries: Nullable<Integer>;
    FTotalLabels: Nullable<Integer>;
    function GetErrorEntries: Integer;
    procedure SetErrorEntries(const Value: Integer);
    function GetLabeledEntries: Integer;
    procedure SetLabeledEntries(const Value: Integer);
    function GetTotalEntries: Integer;
    procedure SetTotalEntries(const Value: Integer);
    function GetTotalLabels: Integer;
    procedure SetTotalLabels(const Value: Integer);
  strict protected
    function Obj: TDatasetStats;
  public
    function IsSetErrorEntries: Boolean;
    function IsSetLabeledEntries: Boolean;
    function IsSetTotalEntries: Boolean;
    function IsSetTotalLabels: Boolean;
    property ErrorEntries: Integer read GetErrorEntries write SetErrorEntries;
    property LabeledEntries: Integer read GetLabeledEntries write SetLabeledEntries;
    property TotalEntries: Integer read GetTotalEntries write SetTotalEntries;
    property TotalLabels: Integer read GetTotalLabels write SetTotalLabels;
  end;
  
implementation

{ TDatasetStats }

function TDatasetStats.Obj: TDatasetStats;
begin
  Result := Self;
end;

function TDatasetStats.GetErrorEntries: Integer;
begin
  Result := FErrorEntries.ValueOrDefault;
end;

procedure TDatasetStats.SetErrorEntries(const Value: Integer);
begin
  FErrorEntries := Value;
end;

function TDatasetStats.IsSetErrorEntries: Boolean;
begin
  Result := FErrorEntries.HasValue;
end;

function TDatasetStats.GetLabeledEntries: Integer;
begin
  Result := FLabeledEntries.ValueOrDefault;
end;

procedure TDatasetStats.SetLabeledEntries(const Value: Integer);
begin
  FLabeledEntries := Value;
end;

function TDatasetStats.IsSetLabeledEntries: Boolean;
begin
  Result := FLabeledEntries.HasValue;
end;

function TDatasetStats.GetTotalEntries: Integer;
begin
  Result := FTotalEntries.ValueOrDefault;
end;

procedure TDatasetStats.SetTotalEntries(const Value: Integer);
begin
  FTotalEntries := Value;
end;

function TDatasetStats.IsSetTotalEntries: Boolean;
begin
  Result := FTotalEntries.HasValue;
end;

function TDatasetStats.GetTotalLabels: Integer;
begin
  Result := FTotalLabels.ValueOrDefault;
end;

procedure TDatasetStats.SetTotalLabels(const Value: Integer);
begin
  FTotalLabels := Value;
end;

function TDatasetStats.IsSetTotalLabels: Boolean;
begin
  Result := FTotalLabels.HasValue;
end;

end.
