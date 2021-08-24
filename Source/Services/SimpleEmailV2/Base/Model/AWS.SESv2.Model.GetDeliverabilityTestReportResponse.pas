unit AWS.SESv2.Model.GetDeliverabilityTestReportResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeliverabilityTestReport, 
  AWS.SESv2.Model.IspPlacement, 
  AWS.SESv2.Model.PlacementStatistics, 
  AWS.SESv2.Model.Tag;

type
  TGetDeliverabilityTestReportResponse = class;
  
  IGetDeliverabilityTestReportResponse = interface(IAmazonWebServiceResponse)
    function GetDeliverabilityTestReport: TDeliverabilityTestReport;
    procedure SetDeliverabilityTestReport(const Value: TDeliverabilityTestReport);
    function GetKeepDeliverabilityTestReport: Boolean;
    procedure SetKeepDeliverabilityTestReport(const Value: Boolean);
    function GetIspPlacements: TObjectList<TIspPlacement>;
    procedure SetIspPlacements(const Value: TObjectList<TIspPlacement>);
    function GetKeepIspPlacements: Boolean;
    procedure SetKeepIspPlacements(const Value: Boolean);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetOverallPlacement: TPlacementStatistics;
    procedure SetOverallPlacement(const Value: TPlacementStatistics);
    function GetKeepOverallPlacement: Boolean;
    procedure SetKeepOverallPlacement(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TGetDeliverabilityTestReportResponse;
    function IsSetDeliverabilityTestReport: Boolean;
    function IsSetIspPlacements: Boolean;
    function IsSetMessage: Boolean;
    function IsSetOverallPlacement: Boolean;
    function IsSetTags: Boolean;
    property DeliverabilityTestReport: TDeliverabilityTestReport read GetDeliverabilityTestReport write SetDeliverabilityTestReport;
    property KeepDeliverabilityTestReport: Boolean read GetKeepDeliverabilityTestReport write SetKeepDeliverabilityTestReport;
    property IspPlacements: TObjectList<TIspPlacement> read GetIspPlacements write SetIspPlacements;
    property KeepIspPlacements: Boolean read GetKeepIspPlacements write SetKeepIspPlacements;
    property Message: string read GetMessage write SetMessage;
    property OverallPlacement: TPlacementStatistics read GetOverallPlacement write SetOverallPlacement;
    property KeepOverallPlacement: Boolean read GetKeepOverallPlacement write SetKeepOverallPlacement;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TGetDeliverabilityTestReportResponse = class(TAmazonWebServiceResponse, IGetDeliverabilityTestReportResponse)
  strict private
    FDeliverabilityTestReport: TDeliverabilityTestReport;
    FKeepDeliverabilityTestReport: Boolean;
    FIspPlacements: TObjectList<TIspPlacement>;
    FKeepIspPlacements: Boolean;
    FMessage: Nullable<string>;
    FOverallPlacement: TPlacementStatistics;
    FKeepOverallPlacement: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetDeliverabilityTestReport: TDeliverabilityTestReport;
    procedure SetDeliverabilityTestReport(const Value: TDeliverabilityTestReport);
    function GetKeepDeliverabilityTestReport: Boolean;
    procedure SetKeepDeliverabilityTestReport(const Value: Boolean);
    function GetIspPlacements: TObjectList<TIspPlacement>;
    procedure SetIspPlacements(const Value: TObjectList<TIspPlacement>);
    function GetKeepIspPlacements: Boolean;
    procedure SetKeepIspPlacements(const Value: Boolean);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetOverallPlacement: TPlacementStatistics;
    procedure SetOverallPlacement(const Value: TPlacementStatistics);
    function GetKeepOverallPlacement: Boolean;
    procedure SetKeepOverallPlacement(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TGetDeliverabilityTestReportResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDeliverabilityTestReport: Boolean;
    function IsSetIspPlacements: Boolean;
    function IsSetMessage: Boolean;
    function IsSetOverallPlacement: Boolean;
    function IsSetTags: Boolean;
    property DeliverabilityTestReport: TDeliverabilityTestReport read GetDeliverabilityTestReport write SetDeliverabilityTestReport;
    property KeepDeliverabilityTestReport: Boolean read GetKeepDeliverabilityTestReport write SetKeepDeliverabilityTestReport;
    property IspPlacements: TObjectList<TIspPlacement> read GetIspPlacements write SetIspPlacements;
    property KeepIspPlacements: Boolean read GetKeepIspPlacements write SetKeepIspPlacements;
    property Message: string read GetMessage write SetMessage;
    property OverallPlacement: TPlacementStatistics read GetOverallPlacement write SetOverallPlacement;
    property KeepOverallPlacement: Boolean read GetKeepOverallPlacement write SetKeepOverallPlacement;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TGetDeliverabilityTestReportResponse }

constructor TGetDeliverabilityTestReportResponse.Create;
begin
  inherited;
  FIspPlacements := TObjectList<TIspPlacement>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TGetDeliverabilityTestReportResponse.Destroy;
begin
  Tags := nil;
  OverallPlacement := nil;
  IspPlacements := nil;
  DeliverabilityTestReport := nil;
  inherited;
end;

function TGetDeliverabilityTestReportResponse.Obj: TGetDeliverabilityTestReportResponse;
begin
  Result := Self;
end;

function TGetDeliverabilityTestReportResponse.GetDeliverabilityTestReport: TDeliverabilityTestReport;
begin
  Result := FDeliverabilityTestReport;
end;

procedure TGetDeliverabilityTestReportResponse.SetDeliverabilityTestReport(const Value: TDeliverabilityTestReport);
begin
  if FDeliverabilityTestReport <> Value then
  begin
    if not KeepDeliverabilityTestReport then
      FDeliverabilityTestReport.Free;
    FDeliverabilityTestReport := Value;
  end;
end;

function TGetDeliverabilityTestReportResponse.GetKeepDeliverabilityTestReport: Boolean;
begin
  Result := FKeepDeliverabilityTestReport;
end;

procedure TGetDeliverabilityTestReportResponse.SetKeepDeliverabilityTestReport(const Value: Boolean);
begin
  FKeepDeliverabilityTestReport := Value;
end;

function TGetDeliverabilityTestReportResponse.IsSetDeliverabilityTestReport: Boolean;
begin
  Result := FDeliverabilityTestReport <> nil;
end;

function TGetDeliverabilityTestReportResponse.GetIspPlacements: TObjectList<TIspPlacement>;
begin
  Result := FIspPlacements;
end;

procedure TGetDeliverabilityTestReportResponse.SetIspPlacements(const Value: TObjectList<TIspPlacement>);
begin
  if FIspPlacements <> Value then
  begin
    if not KeepIspPlacements then
      FIspPlacements.Free;
    FIspPlacements := Value;
  end;
end;

function TGetDeliverabilityTestReportResponse.GetKeepIspPlacements: Boolean;
begin
  Result := FKeepIspPlacements;
end;

procedure TGetDeliverabilityTestReportResponse.SetKeepIspPlacements(const Value: Boolean);
begin
  FKeepIspPlacements := Value;
end;

function TGetDeliverabilityTestReportResponse.IsSetIspPlacements: Boolean;
begin
  Result := (FIspPlacements <> nil) and (FIspPlacements.Count > 0);
end;

function TGetDeliverabilityTestReportResponse.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TGetDeliverabilityTestReportResponse.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TGetDeliverabilityTestReportResponse.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TGetDeliverabilityTestReportResponse.GetOverallPlacement: TPlacementStatistics;
begin
  Result := FOverallPlacement;
end;

procedure TGetDeliverabilityTestReportResponse.SetOverallPlacement(const Value: TPlacementStatistics);
begin
  if FOverallPlacement <> Value then
  begin
    if not KeepOverallPlacement then
      FOverallPlacement.Free;
    FOverallPlacement := Value;
  end;
end;

function TGetDeliverabilityTestReportResponse.GetKeepOverallPlacement: Boolean;
begin
  Result := FKeepOverallPlacement;
end;

procedure TGetDeliverabilityTestReportResponse.SetKeepOverallPlacement(const Value: Boolean);
begin
  FKeepOverallPlacement := Value;
end;

function TGetDeliverabilityTestReportResponse.IsSetOverallPlacement: Boolean;
begin
  Result := FOverallPlacement <> nil;
end;

function TGetDeliverabilityTestReportResponse.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TGetDeliverabilityTestReportResponse.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TGetDeliverabilityTestReportResponse.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TGetDeliverabilityTestReportResponse.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TGetDeliverabilityTestReportResponse.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
