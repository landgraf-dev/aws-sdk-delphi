unit AWS.SESv2.Model.PlacementStatistics;

interface

uses
  Bcl.Types.Nullable;

type
  TPlacementStatistics = class;
  
  IPlacementStatistics = interface
    function GetDkimPercentage: Double;
    procedure SetDkimPercentage(const Value: Double);
    function GetInboxPercentage: Double;
    procedure SetInboxPercentage(const Value: Double);
    function GetMissingPercentage: Double;
    procedure SetMissingPercentage(const Value: Double);
    function GetSpamPercentage: Double;
    procedure SetSpamPercentage(const Value: Double);
    function GetSpfPercentage: Double;
    procedure SetSpfPercentage(const Value: Double);
    function Obj: TPlacementStatistics;
    function IsSetDkimPercentage: Boolean;
    function IsSetInboxPercentage: Boolean;
    function IsSetMissingPercentage: Boolean;
    function IsSetSpamPercentage: Boolean;
    function IsSetSpfPercentage: Boolean;
    property DkimPercentage: Double read GetDkimPercentage write SetDkimPercentage;
    property InboxPercentage: Double read GetInboxPercentage write SetInboxPercentage;
    property MissingPercentage: Double read GetMissingPercentage write SetMissingPercentage;
    property SpamPercentage: Double read GetSpamPercentage write SetSpamPercentage;
    property SpfPercentage: Double read GetSpfPercentage write SetSpfPercentage;
  end;
  
  TPlacementStatistics = class
  strict private
    FDkimPercentage: Nullable<Double>;
    FInboxPercentage: Nullable<Double>;
    FMissingPercentage: Nullable<Double>;
    FSpamPercentage: Nullable<Double>;
    FSpfPercentage: Nullable<Double>;
    function GetDkimPercentage: Double;
    procedure SetDkimPercentage(const Value: Double);
    function GetInboxPercentage: Double;
    procedure SetInboxPercentage(const Value: Double);
    function GetMissingPercentage: Double;
    procedure SetMissingPercentage(const Value: Double);
    function GetSpamPercentage: Double;
    procedure SetSpamPercentage(const Value: Double);
    function GetSpfPercentage: Double;
    procedure SetSpfPercentage(const Value: Double);
  strict protected
    function Obj: TPlacementStatistics;
  public
    function IsSetDkimPercentage: Boolean;
    function IsSetInboxPercentage: Boolean;
    function IsSetMissingPercentage: Boolean;
    function IsSetSpamPercentage: Boolean;
    function IsSetSpfPercentage: Boolean;
    property DkimPercentage: Double read GetDkimPercentage write SetDkimPercentage;
    property InboxPercentage: Double read GetInboxPercentage write SetInboxPercentage;
    property MissingPercentage: Double read GetMissingPercentage write SetMissingPercentage;
    property SpamPercentage: Double read GetSpamPercentage write SetSpamPercentage;
    property SpfPercentage: Double read GetSpfPercentage write SetSpfPercentage;
  end;
  
implementation

{ TPlacementStatistics }

function TPlacementStatistics.Obj: TPlacementStatistics;
begin
  Result := Self;
end;

function TPlacementStatistics.GetDkimPercentage: Double;
begin
  Result := FDkimPercentage.ValueOrDefault;
end;

procedure TPlacementStatistics.SetDkimPercentage(const Value: Double);
begin
  FDkimPercentage := Value;
end;

function TPlacementStatistics.IsSetDkimPercentage: Boolean;
begin
  Result := FDkimPercentage.HasValue;
end;

function TPlacementStatistics.GetInboxPercentage: Double;
begin
  Result := FInboxPercentage.ValueOrDefault;
end;

procedure TPlacementStatistics.SetInboxPercentage(const Value: Double);
begin
  FInboxPercentage := Value;
end;

function TPlacementStatistics.IsSetInboxPercentage: Boolean;
begin
  Result := FInboxPercentage.HasValue;
end;

function TPlacementStatistics.GetMissingPercentage: Double;
begin
  Result := FMissingPercentage.ValueOrDefault;
end;

procedure TPlacementStatistics.SetMissingPercentage(const Value: Double);
begin
  FMissingPercentage := Value;
end;

function TPlacementStatistics.IsSetMissingPercentage: Boolean;
begin
  Result := FMissingPercentage.HasValue;
end;

function TPlacementStatistics.GetSpamPercentage: Double;
begin
  Result := FSpamPercentage.ValueOrDefault;
end;

procedure TPlacementStatistics.SetSpamPercentage(const Value: Double);
begin
  FSpamPercentage := Value;
end;

function TPlacementStatistics.IsSetSpamPercentage: Boolean;
begin
  Result := FSpamPercentage.HasValue;
end;

function TPlacementStatistics.GetSpfPercentage: Double;
begin
  Result := FSpfPercentage.ValueOrDefault;
end;

procedure TPlacementStatistics.SetSpfPercentage(const Value: Double);
begin
  FSpfPercentage := Value;
end;

function TPlacementStatistics.IsSetSpfPercentage: Boolean;
begin
  Result := FSpfPercentage.HasValue;
end;

end.
