unit AWS.S3.Model.AnalyticsConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.AnalyticsFilter, 
  AWS.S3.Model.StorageClassAnalysis;

type
  TAnalyticsConfiguration = class;
  
  IAnalyticsConfiguration = interface
    function GetFilter: TAnalyticsFilter;
    procedure SetFilter(const Value: TAnalyticsFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetStorageClassAnalysis: TStorageClassAnalysis;
    procedure SetStorageClassAnalysis(const Value: TStorageClassAnalysis);
    function GetKeepStorageClassAnalysis: Boolean;
    procedure SetKeepStorageClassAnalysis(const Value: Boolean);
    function Obj: TAnalyticsConfiguration;
    function IsSetFilter: Boolean;
    function IsSetId: Boolean;
    function IsSetStorageClassAnalysis: Boolean;
    property Filter: TAnalyticsFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property Id: string read GetId write SetId;
    property StorageClassAnalysis: TStorageClassAnalysis read GetStorageClassAnalysis write SetStorageClassAnalysis;
    property KeepStorageClassAnalysis: Boolean read GetKeepStorageClassAnalysis write SetKeepStorageClassAnalysis;
  end;
  
  TAnalyticsConfiguration = class
  strict private
    FFilter: TAnalyticsFilter;
    FKeepFilter: Boolean;
    FId: Nullable<string>;
    FStorageClassAnalysis: TStorageClassAnalysis;
    FKeepStorageClassAnalysis: Boolean;
    function GetFilter: TAnalyticsFilter;
    procedure SetFilter(const Value: TAnalyticsFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetStorageClassAnalysis: TStorageClassAnalysis;
    procedure SetStorageClassAnalysis(const Value: TStorageClassAnalysis);
    function GetKeepStorageClassAnalysis: Boolean;
    procedure SetKeepStorageClassAnalysis(const Value: Boolean);
  strict protected
    function Obj: TAnalyticsConfiguration;
  public
    destructor Destroy; override;
    function IsSetFilter: Boolean;
    function IsSetId: Boolean;
    function IsSetStorageClassAnalysis: Boolean;
    property Filter: TAnalyticsFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property Id: string read GetId write SetId;
    property StorageClassAnalysis: TStorageClassAnalysis read GetStorageClassAnalysis write SetStorageClassAnalysis;
    property KeepStorageClassAnalysis: Boolean read GetKeepStorageClassAnalysis write SetKeepStorageClassAnalysis;
  end;
  
implementation

{ TAnalyticsConfiguration }

destructor TAnalyticsConfiguration.Destroy;
begin
  StorageClassAnalysis := nil;
  Filter := nil;
  inherited;
end;

function TAnalyticsConfiguration.Obj: TAnalyticsConfiguration;
begin
  Result := Self;
end;

function TAnalyticsConfiguration.GetFilter: TAnalyticsFilter;
begin
  Result := FFilter;
end;

procedure TAnalyticsConfiguration.SetFilter(const Value: TAnalyticsFilter);
begin
  if FFilter <> Value then
  begin
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TAnalyticsConfiguration.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TAnalyticsConfiguration.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TAnalyticsConfiguration.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

function TAnalyticsConfiguration.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TAnalyticsConfiguration.SetId(const Value: string);
begin
  FId := Value;
end;

function TAnalyticsConfiguration.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TAnalyticsConfiguration.GetStorageClassAnalysis: TStorageClassAnalysis;
begin
  Result := FStorageClassAnalysis;
end;

procedure TAnalyticsConfiguration.SetStorageClassAnalysis(const Value: TStorageClassAnalysis);
begin
  if FStorageClassAnalysis <> Value then
  begin
    if not KeepStorageClassAnalysis then
      FStorageClassAnalysis.Free;
    FStorageClassAnalysis := Value;
  end;
end;

function TAnalyticsConfiguration.GetKeepStorageClassAnalysis: Boolean;
begin
  Result := FKeepStorageClassAnalysis;
end;

procedure TAnalyticsConfiguration.SetKeepStorageClassAnalysis(const Value: Boolean);
begin
  FKeepStorageClassAnalysis := Value;
end;

function TAnalyticsConfiguration.IsSetStorageClassAnalysis: Boolean;
begin
  Result := FStorageClassAnalysis <> nil;
end;

end.
