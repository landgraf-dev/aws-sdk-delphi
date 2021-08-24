unit AWS.SESv2.Model.ListContactsFilter;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Enums, 
  AWS.SESv2.Model.TopicFilter;

type
  TListContactsFilter = class;
  
  IListContactsFilter = interface
    function GetFilteredStatus: TSubscriptionStatus;
    procedure SetFilteredStatus(const Value: TSubscriptionStatus);
    function GetTopicFilter: TTopicFilter;
    procedure SetTopicFilter(const Value: TTopicFilter);
    function GetKeepTopicFilter: Boolean;
    procedure SetKeepTopicFilter(const Value: Boolean);
    function Obj: TListContactsFilter;
    function IsSetFilteredStatus: Boolean;
    function IsSetTopicFilter: Boolean;
    property FilteredStatus: TSubscriptionStatus read GetFilteredStatus write SetFilteredStatus;
    property TopicFilter: TTopicFilter read GetTopicFilter write SetTopicFilter;
    property KeepTopicFilter: Boolean read GetKeepTopicFilter write SetKeepTopicFilter;
  end;
  
  TListContactsFilter = class
  strict private
    FFilteredStatus: Nullable<TSubscriptionStatus>;
    FTopicFilter: TTopicFilter;
    FKeepTopicFilter: Boolean;
    function GetFilteredStatus: TSubscriptionStatus;
    procedure SetFilteredStatus(const Value: TSubscriptionStatus);
    function GetTopicFilter: TTopicFilter;
    procedure SetTopicFilter(const Value: TTopicFilter);
    function GetKeepTopicFilter: Boolean;
    procedure SetKeepTopicFilter(const Value: Boolean);
  strict protected
    function Obj: TListContactsFilter;
  public
    destructor Destroy; override;
    function IsSetFilteredStatus: Boolean;
    function IsSetTopicFilter: Boolean;
    property FilteredStatus: TSubscriptionStatus read GetFilteredStatus write SetFilteredStatus;
    property TopicFilter: TTopicFilter read GetTopicFilter write SetTopicFilter;
    property KeepTopicFilter: Boolean read GetKeepTopicFilter write SetKeepTopicFilter;
  end;
  
implementation

{ TListContactsFilter }

destructor TListContactsFilter.Destroy;
begin
  TopicFilter := nil;
  inherited;
end;

function TListContactsFilter.Obj: TListContactsFilter;
begin
  Result := Self;
end;

function TListContactsFilter.GetFilteredStatus: TSubscriptionStatus;
begin
  Result := FFilteredStatus.ValueOrDefault;
end;

procedure TListContactsFilter.SetFilteredStatus(const Value: TSubscriptionStatus);
begin
  FFilteredStatus := Value;
end;

function TListContactsFilter.IsSetFilteredStatus: Boolean;
begin
  Result := FFilteredStatus.HasValue;
end;

function TListContactsFilter.GetTopicFilter: TTopicFilter;
begin
  Result := FTopicFilter;
end;

procedure TListContactsFilter.SetTopicFilter(const Value: TTopicFilter);
begin
  if FTopicFilter <> Value then
  begin
    if not KeepTopicFilter then
      FTopicFilter.Free;
    FTopicFilter := Value;
  end;
end;

function TListContactsFilter.GetKeepTopicFilter: Boolean;
begin
  Result := FKeepTopicFilter;
end;

procedure TListContactsFilter.SetKeepTopicFilter(const Value: Boolean);
begin
  FKeepTopicFilter := Value;
end;

function TListContactsFilter.IsSetTopicFilter: Boolean;
begin
  Result := FTopicFilter <> nil;
end;

end.
