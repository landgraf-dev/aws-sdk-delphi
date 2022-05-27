unit AWS.Rekognition.Model.DatasetLabelStats;

interface

uses
  Bcl.Types.Nullable;

type
  TDatasetLabelStats = class;
  
  IDatasetLabelStats = interface
    function GetBoundingBoxCount: Integer;
    procedure SetBoundingBoxCount(const Value: Integer);
    function GetEntryCount: Integer;
    procedure SetEntryCount(const Value: Integer);
    function Obj: TDatasetLabelStats;
    function IsSetBoundingBoxCount: Boolean;
    function IsSetEntryCount: Boolean;
    property BoundingBoxCount: Integer read GetBoundingBoxCount write SetBoundingBoxCount;
    property EntryCount: Integer read GetEntryCount write SetEntryCount;
  end;
  
  TDatasetLabelStats = class
  strict private
    FBoundingBoxCount: Nullable<Integer>;
    FEntryCount: Nullable<Integer>;
    function GetBoundingBoxCount: Integer;
    procedure SetBoundingBoxCount(const Value: Integer);
    function GetEntryCount: Integer;
    procedure SetEntryCount(const Value: Integer);
  strict protected
    function Obj: TDatasetLabelStats;
  public
    function IsSetBoundingBoxCount: Boolean;
    function IsSetEntryCount: Boolean;
    property BoundingBoxCount: Integer read GetBoundingBoxCount write SetBoundingBoxCount;
    property EntryCount: Integer read GetEntryCount write SetEntryCount;
  end;
  
implementation

{ TDatasetLabelStats }

function TDatasetLabelStats.Obj: TDatasetLabelStats;
begin
  Result := Self;
end;

function TDatasetLabelStats.GetBoundingBoxCount: Integer;
begin
  Result := FBoundingBoxCount.ValueOrDefault;
end;

procedure TDatasetLabelStats.SetBoundingBoxCount(const Value: Integer);
begin
  FBoundingBoxCount := Value;
end;

function TDatasetLabelStats.IsSetBoundingBoxCount: Boolean;
begin
  Result := FBoundingBoxCount.HasValue;
end;

function TDatasetLabelStats.GetEntryCount: Integer;
begin
  Result := FEntryCount.ValueOrDefault;
end;

procedure TDatasetLabelStats.SetEntryCount(const Value: Integer);
begin
  FEntryCount := Value;
end;

function TDatasetLabelStats.IsSetEntryCount: Boolean;
begin
  Result := FEntryCount.HasValue;
end;

end.
