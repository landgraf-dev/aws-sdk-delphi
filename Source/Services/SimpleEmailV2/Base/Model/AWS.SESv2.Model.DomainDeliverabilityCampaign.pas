unit AWS.SESv2.Model.DomainDeliverabilityCampaign;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections;

type
  TDomainDeliverabilityCampaign = class;
  
  IDomainDeliverabilityCampaign = interface
    function GetCampaignId: string;
    procedure SetCampaignId(const Value: string);
    function GetDeleteRate: Double;
    procedure SetDeleteRate(const Value: Double);
    function GetEsps: TList<string>;
    procedure SetEsps(const Value: TList<string>);
    function GetKeepEsps: Boolean;
    procedure SetKeepEsps(const Value: Boolean);
    function GetFirstSeenDateTime: TDateTime;
    procedure SetFirstSeenDateTime(const Value: TDateTime);
    function GetFromAddress: string;
    procedure SetFromAddress(const Value: string);
    function GetImageUrl: string;
    procedure SetImageUrl(const Value: string);
    function GetInboxCount: Int64;
    procedure SetInboxCount(const Value: Int64);
    function GetLastSeenDateTime: TDateTime;
    procedure SetLastSeenDateTime(const Value: TDateTime);
    function GetProjectedVolume: Int64;
    procedure SetProjectedVolume(const Value: Int64);
    function GetReadDeleteRate: Double;
    procedure SetReadDeleteRate(const Value: Double);
    function GetReadRate: Double;
    procedure SetReadRate(const Value: Double);
    function GetSendingIps: TList<string>;
    procedure SetSendingIps(const Value: TList<string>);
    function GetKeepSendingIps: Boolean;
    procedure SetKeepSendingIps(const Value: Boolean);
    function GetSpamCount: Int64;
    procedure SetSpamCount(const Value: Int64);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
    function Obj: TDomainDeliverabilityCampaign;
    function IsSetCampaignId: Boolean;
    function IsSetDeleteRate: Boolean;
    function IsSetEsps: Boolean;
    function IsSetFirstSeenDateTime: Boolean;
    function IsSetFromAddress: Boolean;
    function IsSetImageUrl: Boolean;
    function IsSetInboxCount: Boolean;
    function IsSetLastSeenDateTime: Boolean;
    function IsSetProjectedVolume: Boolean;
    function IsSetReadDeleteRate: Boolean;
    function IsSetReadRate: Boolean;
    function IsSetSendingIps: Boolean;
    function IsSetSpamCount: Boolean;
    function IsSetSubject: Boolean;
    property CampaignId: string read GetCampaignId write SetCampaignId;
    property DeleteRate: Double read GetDeleteRate write SetDeleteRate;
    property Esps: TList<string> read GetEsps write SetEsps;
    property KeepEsps: Boolean read GetKeepEsps write SetKeepEsps;
    property FirstSeenDateTime: TDateTime read GetFirstSeenDateTime write SetFirstSeenDateTime;
    property FromAddress: string read GetFromAddress write SetFromAddress;
    property ImageUrl: string read GetImageUrl write SetImageUrl;
    property InboxCount: Int64 read GetInboxCount write SetInboxCount;
    property LastSeenDateTime: TDateTime read GetLastSeenDateTime write SetLastSeenDateTime;
    property ProjectedVolume: Int64 read GetProjectedVolume write SetProjectedVolume;
    property ReadDeleteRate: Double read GetReadDeleteRate write SetReadDeleteRate;
    property ReadRate: Double read GetReadRate write SetReadRate;
    property SendingIps: TList<string> read GetSendingIps write SetSendingIps;
    property KeepSendingIps: Boolean read GetKeepSendingIps write SetKeepSendingIps;
    property SpamCount: Int64 read GetSpamCount write SetSpamCount;
    property Subject: string read GetSubject write SetSubject;
  end;
  
  TDomainDeliverabilityCampaign = class
  strict private
    FCampaignId: Nullable<string>;
    FDeleteRate: Nullable<Double>;
    FEsps: TList<string>;
    FKeepEsps: Boolean;
    FFirstSeenDateTime: Nullable<TDateTime>;
    FFromAddress: Nullable<string>;
    FImageUrl: Nullable<string>;
    FInboxCount: Nullable<Int64>;
    FLastSeenDateTime: Nullable<TDateTime>;
    FProjectedVolume: Nullable<Int64>;
    FReadDeleteRate: Nullable<Double>;
    FReadRate: Nullable<Double>;
    FSendingIps: TList<string>;
    FKeepSendingIps: Boolean;
    FSpamCount: Nullable<Int64>;
    FSubject: Nullable<string>;
    function GetCampaignId: string;
    procedure SetCampaignId(const Value: string);
    function GetDeleteRate: Double;
    procedure SetDeleteRate(const Value: Double);
    function GetEsps: TList<string>;
    procedure SetEsps(const Value: TList<string>);
    function GetKeepEsps: Boolean;
    procedure SetKeepEsps(const Value: Boolean);
    function GetFirstSeenDateTime: TDateTime;
    procedure SetFirstSeenDateTime(const Value: TDateTime);
    function GetFromAddress: string;
    procedure SetFromAddress(const Value: string);
    function GetImageUrl: string;
    procedure SetImageUrl(const Value: string);
    function GetInboxCount: Int64;
    procedure SetInboxCount(const Value: Int64);
    function GetLastSeenDateTime: TDateTime;
    procedure SetLastSeenDateTime(const Value: TDateTime);
    function GetProjectedVolume: Int64;
    procedure SetProjectedVolume(const Value: Int64);
    function GetReadDeleteRate: Double;
    procedure SetReadDeleteRate(const Value: Double);
    function GetReadRate: Double;
    procedure SetReadRate(const Value: Double);
    function GetSendingIps: TList<string>;
    procedure SetSendingIps(const Value: TList<string>);
    function GetKeepSendingIps: Boolean;
    procedure SetKeepSendingIps(const Value: Boolean);
    function GetSpamCount: Int64;
    procedure SetSpamCount(const Value: Int64);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
  strict protected
    function Obj: TDomainDeliverabilityCampaign;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCampaignId: Boolean;
    function IsSetDeleteRate: Boolean;
    function IsSetEsps: Boolean;
    function IsSetFirstSeenDateTime: Boolean;
    function IsSetFromAddress: Boolean;
    function IsSetImageUrl: Boolean;
    function IsSetInboxCount: Boolean;
    function IsSetLastSeenDateTime: Boolean;
    function IsSetProjectedVolume: Boolean;
    function IsSetReadDeleteRate: Boolean;
    function IsSetReadRate: Boolean;
    function IsSetSendingIps: Boolean;
    function IsSetSpamCount: Boolean;
    function IsSetSubject: Boolean;
    property CampaignId: string read GetCampaignId write SetCampaignId;
    property DeleteRate: Double read GetDeleteRate write SetDeleteRate;
    property Esps: TList<string> read GetEsps write SetEsps;
    property KeepEsps: Boolean read GetKeepEsps write SetKeepEsps;
    property FirstSeenDateTime: TDateTime read GetFirstSeenDateTime write SetFirstSeenDateTime;
    property FromAddress: string read GetFromAddress write SetFromAddress;
    property ImageUrl: string read GetImageUrl write SetImageUrl;
    property InboxCount: Int64 read GetInboxCount write SetInboxCount;
    property LastSeenDateTime: TDateTime read GetLastSeenDateTime write SetLastSeenDateTime;
    property ProjectedVolume: Int64 read GetProjectedVolume write SetProjectedVolume;
    property ReadDeleteRate: Double read GetReadDeleteRate write SetReadDeleteRate;
    property ReadRate: Double read GetReadRate write SetReadRate;
    property SendingIps: TList<string> read GetSendingIps write SetSendingIps;
    property KeepSendingIps: Boolean read GetKeepSendingIps write SetKeepSendingIps;
    property SpamCount: Int64 read GetSpamCount write SetSpamCount;
    property Subject: string read GetSubject write SetSubject;
  end;
  
implementation

{ TDomainDeliverabilityCampaign }

constructor TDomainDeliverabilityCampaign.Create;
begin
  inherited;
  FEsps := TList<string>.Create;
  FSendingIps := TList<string>.Create;
end;

destructor TDomainDeliverabilityCampaign.Destroy;
begin
  SendingIps := nil;
  Esps := nil;
  inherited;
end;

function TDomainDeliverabilityCampaign.Obj: TDomainDeliverabilityCampaign;
begin
  Result := Self;
end;

function TDomainDeliverabilityCampaign.GetCampaignId: string;
begin
  Result := FCampaignId.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetCampaignId(const Value: string);
begin
  FCampaignId := Value;
end;

function TDomainDeliverabilityCampaign.IsSetCampaignId: Boolean;
begin
  Result := FCampaignId.HasValue;
end;

function TDomainDeliverabilityCampaign.GetDeleteRate: Double;
begin
  Result := FDeleteRate.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetDeleteRate(const Value: Double);
begin
  FDeleteRate := Value;
end;

function TDomainDeliverabilityCampaign.IsSetDeleteRate: Boolean;
begin
  Result := FDeleteRate.HasValue;
end;

function TDomainDeliverabilityCampaign.GetEsps: TList<string>;
begin
  Result := FEsps;
end;

procedure TDomainDeliverabilityCampaign.SetEsps(const Value: TList<string>);
begin
  if FEsps <> Value then
  begin
    if not KeepEsps then
      FEsps.Free;
    FEsps := Value;
  end;
end;

function TDomainDeliverabilityCampaign.GetKeepEsps: Boolean;
begin
  Result := FKeepEsps;
end;

procedure TDomainDeliverabilityCampaign.SetKeepEsps(const Value: Boolean);
begin
  FKeepEsps := Value;
end;

function TDomainDeliverabilityCampaign.IsSetEsps: Boolean;
begin
  Result := (FEsps <> nil) and (FEsps.Count > 0);
end;

function TDomainDeliverabilityCampaign.GetFirstSeenDateTime: TDateTime;
begin
  Result := FFirstSeenDateTime.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetFirstSeenDateTime(const Value: TDateTime);
begin
  FFirstSeenDateTime := Value;
end;

function TDomainDeliverabilityCampaign.IsSetFirstSeenDateTime: Boolean;
begin
  Result := FFirstSeenDateTime.HasValue;
end;

function TDomainDeliverabilityCampaign.GetFromAddress: string;
begin
  Result := FFromAddress.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetFromAddress(const Value: string);
begin
  FFromAddress := Value;
end;

function TDomainDeliverabilityCampaign.IsSetFromAddress: Boolean;
begin
  Result := FFromAddress.HasValue;
end;

function TDomainDeliverabilityCampaign.GetImageUrl: string;
begin
  Result := FImageUrl.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetImageUrl(const Value: string);
begin
  FImageUrl := Value;
end;

function TDomainDeliverabilityCampaign.IsSetImageUrl: Boolean;
begin
  Result := FImageUrl.HasValue;
end;

function TDomainDeliverabilityCampaign.GetInboxCount: Int64;
begin
  Result := FInboxCount.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetInboxCount(const Value: Int64);
begin
  FInboxCount := Value;
end;

function TDomainDeliverabilityCampaign.IsSetInboxCount: Boolean;
begin
  Result := FInboxCount.HasValue;
end;

function TDomainDeliverabilityCampaign.GetLastSeenDateTime: TDateTime;
begin
  Result := FLastSeenDateTime.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetLastSeenDateTime(const Value: TDateTime);
begin
  FLastSeenDateTime := Value;
end;

function TDomainDeliverabilityCampaign.IsSetLastSeenDateTime: Boolean;
begin
  Result := FLastSeenDateTime.HasValue;
end;

function TDomainDeliverabilityCampaign.GetProjectedVolume: Int64;
begin
  Result := FProjectedVolume.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetProjectedVolume(const Value: Int64);
begin
  FProjectedVolume := Value;
end;

function TDomainDeliverabilityCampaign.IsSetProjectedVolume: Boolean;
begin
  Result := FProjectedVolume.HasValue;
end;

function TDomainDeliverabilityCampaign.GetReadDeleteRate: Double;
begin
  Result := FReadDeleteRate.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetReadDeleteRate(const Value: Double);
begin
  FReadDeleteRate := Value;
end;

function TDomainDeliverabilityCampaign.IsSetReadDeleteRate: Boolean;
begin
  Result := FReadDeleteRate.HasValue;
end;

function TDomainDeliverabilityCampaign.GetReadRate: Double;
begin
  Result := FReadRate.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetReadRate(const Value: Double);
begin
  FReadRate := Value;
end;

function TDomainDeliverabilityCampaign.IsSetReadRate: Boolean;
begin
  Result := FReadRate.HasValue;
end;

function TDomainDeliverabilityCampaign.GetSendingIps: TList<string>;
begin
  Result := FSendingIps;
end;

procedure TDomainDeliverabilityCampaign.SetSendingIps(const Value: TList<string>);
begin
  if FSendingIps <> Value then
  begin
    if not KeepSendingIps then
      FSendingIps.Free;
    FSendingIps := Value;
  end;
end;

function TDomainDeliverabilityCampaign.GetKeepSendingIps: Boolean;
begin
  Result := FKeepSendingIps;
end;

procedure TDomainDeliverabilityCampaign.SetKeepSendingIps(const Value: Boolean);
begin
  FKeepSendingIps := Value;
end;

function TDomainDeliverabilityCampaign.IsSetSendingIps: Boolean;
begin
  Result := (FSendingIps <> nil) and (FSendingIps.Count > 0);
end;

function TDomainDeliverabilityCampaign.GetSpamCount: Int64;
begin
  Result := FSpamCount.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetSpamCount(const Value: Int64);
begin
  FSpamCount := Value;
end;

function TDomainDeliverabilityCampaign.IsSetSpamCount: Boolean;
begin
  Result := FSpamCount.HasValue;
end;

function TDomainDeliverabilityCampaign.GetSubject: string;
begin
  Result := FSubject.ValueOrDefault;
end;

procedure TDomainDeliverabilityCampaign.SetSubject(const Value: string);
begin
  FSubject := Value;
end;

function TDomainDeliverabilityCampaign.IsSetSubject: Boolean;
begin
  Result := FSubject.HasValue;
end;

end.
