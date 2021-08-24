unit AWS.SESv2.Model.DomainIspPlacement;

interface

uses
  Bcl.Types.Nullable;

type
  TDomainIspPlacement = class;
  
  IDomainIspPlacement = interface
    function GetInboxPercentage: Double;
    procedure SetInboxPercentage(const Value: Double);
    function GetInboxRawCount: Int64;
    procedure SetInboxRawCount(const Value: Int64);
    function GetIspName: string;
    procedure SetIspName(const Value: string);
    function GetSpamPercentage: Double;
    procedure SetSpamPercentage(const Value: Double);
    function GetSpamRawCount: Int64;
    procedure SetSpamRawCount(const Value: Int64);
    function Obj: TDomainIspPlacement;
    function IsSetInboxPercentage: Boolean;
    function IsSetInboxRawCount: Boolean;
    function IsSetIspName: Boolean;
    function IsSetSpamPercentage: Boolean;
    function IsSetSpamRawCount: Boolean;
    property InboxPercentage: Double read GetInboxPercentage write SetInboxPercentage;
    property InboxRawCount: Int64 read GetInboxRawCount write SetInboxRawCount;
    property IspName: string read GetIspName write SetIspName;
    property SpamPercentage: Double read GetSpamPercentage write SetSpamPercentage;
    property SpamRawCount: Int64 read GetSpamRawCount write SetSpamRawCount;
  end;
  
  TDomainIspPlacement = class
  strict private
    FInboxPercentage: Nullable<Double>;
    FInboxRawCount: Nullable<Int64>;
    FIspName: Nullable<string>;
    FSpamPercentage: Nullable<Double>;
    FSpamRawCount: Nullable<Int64>;
    function GetInboxPercentage: Double;
    procedure SetInboxPercentage(const Value: Double);
    function GetInboxRawCount: Int64;
    procedure SetInboxRawCount(const Value: Int64);
    function GetIspName: string;
    procedure SetIspName(const Value: string);
    function GetSpamPercentage: Double;
    procedure SetSpamPercentage(const Value: Double);
    function GetSpamRawCount: Int64;
    procedure SetSpamRawCount(const Value: Int64);
  strict protected
    function Obj: TDomainIspPlacement;
  public
    function IsSetInboxPercentage: Boolean;
    function IsSetInboxRawCount: Boolean;
    function IsSetIspName: Boolean;
    function IsSetSpamPercentage: Boolean;
    function IsSetSpamRawCount: Boolean;
    property InboxPercentage: Double read GetInboxPercentage write SetInboxPercentage;
    property InboxRawCount: Int64 read GetInboxRawCount write SetInboxRawCount;
    property IspName: string read GetIspName write SetIspName;
    property SpamPercentage: Double read GetSpamPercentage write SetSpamPercentage;
    property SpamRawCount: Int64 read GetSpamRawCount write SetSpamRawCount;
  end;
  
implementation

{ TDomainIspPlacement }

function TDomainIspPlacement.Obj: TDomainIspPlacement;
begin
  Result := Self;
end;

function TDomainIspPlacement.GetInboxPercentage: Double;
begin
  Result := FInboxPercentage.ValueOrDefault;
end;

procedure TDomainIspPlacement.SetInboxPercentage(const Value: Double);
begin
  FInboxPercentage := Value;
end;

function TDomainIspPlacement.IsSetInboxPercentage: Boolean;
begin
  Result := FInboxPercentage.HasValue;
end;

function TDomainIspPlacement.GetInboxRawCount: Int64;
begin
  Result := FInboxRawCount.ValueOrDefault;
end;

procedure TDomainIspPlacement.SetInboxRawCount(const Value: Int64);
begin
  FInboxRawCount := Value;
end;

function TDomainIspPlacement.IsSetInboxRawCount: Boolean;
begin
  Result := FInboxRawCount.HasValue;
end;

function TDomainIspPlacement.GetIspName: string;
begin
  Result := FIspName.ValueOrDefault;
end;

procedure TDomainIspPlacement.SetIspName(const Value: string);
begin
  FIspName := Value;
end;

function TDomainIspPlacement.IsSetIspName: Boolean;
begin
  Result := FIspName.HasValue;
end;

function TDomainIspPlacement.GetSpamPercentage: Double;
begin
  Result := FSpamPercentage.ValueOrDefault;
end;

procedure TDomainIspPlacement.SetSpamPercentage(const Value: Double);
begin
  FSpamPercentage := Value;
end;

function TDomainIspPlacement.IsSetSpamPercentage: Boolean;
begin
  Result := FSpamPercentage.HasValue;
end;

function TDomainIspPlacement.GetSpamRawCount: Int64;
begin
  Result := FSpamRawCount.ValueOrDefault;
end;

procedure TDomainIspPlacement.SetSpamRawCount(const Value: Int64);
begin
  FSpamRawCount := Value;
end;

function TDomainIspPlacement.IsSetSpamRawCount: Boolean;
begin
  Result := FSpamRawCount.HasValue;
end;

end.
