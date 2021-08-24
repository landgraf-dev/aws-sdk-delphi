unit AWS.SESv2.Model.VolumeStatistics;

interface

uses
  Bcl.Types.Nullable;

type
  TVolumeStatistics = class;
  
  IVolumeStatistics = interface
    function GetInboxRawCount: Int64;
    procedure SetInboxRawCount(const Value: Int64);
    function GetProjectedInbox: Int64;
    procedure SetProjectedInbox(const Value: Int64);
    function GetProjectedSpam: Int64;
    procedure SetProjectedSpam(const Value: Int64);
    function GetSpamRawCount: Int64;
    procedure SetSpamRawCount(const Value: Int64);
    function Obj: TVolumeStatistics;
    function IsSetInboxRawCount: Boolean;
    function IsSetProjectedInbox: Boolean;
    function IsSetProjectedSpam: Boolean;
    function IsSetSpamRawCount: Boolean;
    property InboxRawCount: Int64 read GetInboxRawCount write SetInboxRawCount;
    property ProjectedInbox: Int64 read GetProjectedInbox write SetProjectedInbox;
    property ProjectedSpam: Int64 read GetProjectedSpam write SetProjectedSpam;
    property SpamRawCount: Int64 read GetSpamRawCount write SetSpamRawCount;
  end;
  
  TVolumeStatistics = class
  strict private
    FInboxRawCount: Nullable<Int64>;
    FProjectedInbox: Nullable<Int64>;
    FProjectedSpam: Nullable<Int64>;
    FSpamRawCount: Nullable<Int64>;
    function GetInboxRawCount: Int64;
    procedure SetInboxRawCount(const Value: Int64);
    function GetProjectedInbox: Int64;
    procedure SetProjectedInbox(const Value: Int64);
    function GetProjectedSpam: Int64;
    procedure SetProjectedSpam(const Value: Int64);
    function GetSpamRawCount: Int64;
    procedure SetSpamRawCount(const Value: Int64);
  strict protected
    function Obj: TVolumeStatistics;
  public
    function IsSetInboxRawCount: Boolean;
    function IsSetProjectedInbox: Boolean;
    function IsSetProjectedSpam: Boolean;
    function IsSetSpamRawCount: Boolean;
    property InboxRawCount: Int64 read GetInboxRawCount write SetInboxRawCount;
    property ProjectedInbox: Int64 read GetProjectedInbox write SetProjectedInbox;
    property ProjectedSpam: Int64 read GetProjectedSpam write SetProjectedSpam;
    property SpamRawCount: Int64 read GetSpamRawCount write SetSpamRawCount;
  end;
  
implementation

{ TVolumeStatistics }

function TVolumeStatistics.Obj: TVolumeStatistics;
begin
  Result := Self;
end;

function TVolumeStatistics.GetInboxRawCount: Int64;
begin
  Result := FInboxRawCount.ValueOrDefault;
end;

procedure TVolumeStatistics.SetInboxRawCount(const Value: Int64);
begin
  FInboxRawCount := Value;
end;

function TVolumeStatistics.IsSetInboxRawCount: Boolean;
begin
  Result := FInboxRawCount.HasValue;
end;

function TVolumeStatistics.GetProjectedInbox: Int64;
begin
  Result := FProjectedInbox.ValueOrDefault;
end;

procedure TVolumeStatistics.SetProjectedInbox(const Value: Int64);
begin
  FProjectedInbox := Value;
end;

function TVolumeStatistics.IsSetProjectedInbox: Boolean;
begin
  Result := FProjectedInbox.HasValue;
end;

function TVolumeStatistics.GetProjectedSpam: Int64;
begin
  Result := FProjectedSpam.ValueOrDefault;
end;

procedure TVolumeStatistics.SetProjectedSpam(const Value: Int64);
begin
  FProjectedSpam := Value;
end;

function TVolumeStatistics.IsSetProjectedSpam: Boolean;
begin
  Result := FProjectedSpam.HasValue;
end;

function TVolumeStatistics.GetSpamRawCount: Int64;
begin
  Result := FSpamRawCount.ValueOrDefault;
end;

procedure TVolumeStatistics.SetSpamRawCount(const Value: Int64);
begin
  FSpamRawCount := Value;
end;

function TVolumeStatistics.IsSetSpamRawCount: Boolean;
begin
  Result := FSpamRawCount.HasValue;
end;

end.
