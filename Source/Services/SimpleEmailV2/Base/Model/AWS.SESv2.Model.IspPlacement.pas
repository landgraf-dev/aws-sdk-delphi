unit AWS.SESv2.Model.IspPlacement;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.PlacementStatistics;

type
  TIspPlacement = class;
  
  IIspPlacement = interface
    function GetIspName: string;
    procedure SetIspName(const Value: string);
    function GetPlacementStatistics: TPlacementStatistics;
    procedure SetPlacementStatistics(const Value: TPlacementStatistics);
    function GetKeepPlacementStatistics: Boolean;
    procedure SetKeepPlacementStatistics(const Value: Boolean);
    function Obj: TIspPlacement;
    function IsSetIspName: Boolean;
    function IsSetPlacementStatistics: Boolean;
    property IspName: string read GetIspName write SetIspName;
    property PlacementStatistics: TPlacementStatistics read GetPlacementStatistics write SetPlacementStatistics;
    property KeepPlacementStatistics: Boolean read GetKeepPlacementStatistics write SetKeepPlacementStatistics;
  end;
  
  TIspPlacement = class
  strict private
    FIspName: Nullable<string>;
    FPlacementStatistics: TPlacementStatistics;
    FKeepPlacementStatistics: Boolean;
    function GetIspName: string;
    procedure SetIspName(const Value: string);
    function GetPlacementStatistics: TPlacementStatistics;
    procedure SetPlacementStatistics(const Value: TPlacementStatistics);
    function GetKeepPlacementStatistics: Boolean;
    procedure SetKeepPlacementStatistics(const Value: Boolean);
  strict protected
    function Obj: TIspPlacement;
  public
    destructor Destroy; override;
    function IsSetIspName: Boolean;
    function IsSetPlacementStatistics: Boolean;
    property IspName: string read GetIspName write SetIspName;
    property PlacementStatistics: TPlacementStatistics read GetPlacementStatistics write SetPlacementStatistics;
    property KeepPlacementStatistics: Boolean read GetKeepPlacementStatistics write SetKeepPlacementStatistics;
  end;
  
implementation

{ TIspPlacement }

destructor TIspPlacement.Destroy;
begin
  PlacementStatistics := nil;
  inherited;
end;

function TIspPlacement.Obj: TIspPlacement;
begin
  Result := Self;
end;

function TIspPlacement.GetIspName: string;
begin
  Result := FIspName.ValueOrDefault;
end;

procedure TIspPlacement.SetIspName(const Value: string);
begin
  FIspName := Value;
end;

function TIspPlacement.IsSetIspName: Boolean;
begin
  Result := FIspName.HasValue;
end;

function TIspPlacement.GetPlacementStatistics: TPlacementStatistics;
begin
  Result := FPlacementStatistics;
end;

procedure TIspPlacement.SetPlacementStatistics(const Value: TPlacementStatistics);
begin
  if FPlacementStatistics <> Value then
  begin
    if not KeepPlacementStatistics then
      FPlacementStatistics.Free;
    FPlacementStatistics := Value;
  end;
end;

function TIspPlacement.GetKeepPlacementStatistics: Boolean;
begin
  Result := FKeepPlacementStatistics;
end;

procedure TIspPlacement.SetKeepPlacementStatistics(const Value: Boolean);
begin
  FKeepPlacementStatistics := Value;
end;

function TIspPlacement.IsSetPlacementStatistics: Boolean;
begin
  Result := FPlacementStatistics <> nil;
end;

end.
