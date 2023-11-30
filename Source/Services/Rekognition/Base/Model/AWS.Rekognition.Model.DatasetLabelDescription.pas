unit AWS.Rekognition.Model.DatasetLabelDescription;

interface

uses
  AWS.Nullable, 
  AWS.Rekognition.Model.DatasetLabelStats;

type
  TDatasetLabelDescription = class;
  
  IDatasetLabelDescription = interface
    function GetLabelName: string;
    procedure SetLabelName(const Value: string);
    function GetLabelStats: TDatasetLabelStats;
    procedure SetLabelStats(const Value: TDatasetLabelStats);
    function GetKeepLabelStats: Boolean;
    procedure SetKeepLabelStats(const Value: Boolean);
    function Obj: TDatasetLabelDescription;
    function IsSetLabelName: Boolean;
    function IsSetLabelStats: Boolean;
    property LabelName: string read GetLabelName write SetLabelName;
    property LabelStats: TDatasetLabelStats read GetLabelStats write SetLabelStats;
    property KeepLabelStats: Boolean read GetKeepLabelStats write SetKeepLabelStats;
  end;
  
  TDatasetLabelDescription = class
  strict private
    FLabelName: Nullable<string>;
    FLabelStats: TDatasetLabelStats;
    FKeepLabelStats: Boolean;
    function GetLabelName: string;
    procedure SetLabelName(const Value: string);
    function GetLabelStats: TDatasetLabelStats;
    procedure SetLabelStats(const Value: TDatasetLabelStats);
    function GetKeepLabelStats: Boolean;
    procedure SetKeepLabelStats(const Value: Boolean);
  strict protected
    function Obj: TDatasetLabelDescription;
  public
    destructor Destroy; override;
    function IsSetLabelName: Boolean;
    function IsSetLabelStats: Boolean;
    property LabelName: string read GetLabelName write SetLabelName;
    property LabelStats: TDatasetLabelStats read GetLabelStats write SetLabelStats;
    property KeepLabelStats: Boolean read GetKeepLabelStats write SetKeepLabelStats;
  end;
  
implementation

{ TDatasetLabelDescription }

destructor TDatasetLabelDescription.Destroy;
begin
  LabelStats := nil;
  inherited;
end;

function TDatasetLabelDescription.Obj: TDatasetLabelDescription;
begin
  Result := Self;
end;

function TDatasetLabelDescription.GetLabelName: string;
begin
  Result := FLabelName.ValueOrDefault;
end;

procedure TDatasetLabelDescription.SetLabelName(const Value: string);
begin
  FLabelName := Value;
end;

function TDatasetLabelDescription.IsSetLabelName: Boolean;
begin
  Result := FLabelName.HasValue;
end;

function TDatasetLabelDescription.GetLabelStats: TDatasetLabelStats;
begin
  Result := FLabelStats;
end;

procedure TDatasetLabelDescription.SetLabelStats(const Value: TDatasetLabelStats);
begin
  if FLabelStats <> Value then
  begin
    if not KeepLabelStats then
      FLabelStats.Free;
    FLabelStats := Value;
  end;
end;

function TDatasetLabelDescription.GetKeepLabelStats: Boolean;
begin
  Result := FKeepLabelStats;
end;

procedure TDatasetLabelDescription.SetKeepLabelStats(const Value: Boolean);
begin
  FKeepLabelStats := Value;
end;

function TDatasetLabelDescription.IsSetLabelStats: Boolean;
begin
  Result := FLabelStats <> nil;
end;

end.
