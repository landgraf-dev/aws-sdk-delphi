unit AWS.S3.Model.MetricsConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.MetricsFilter;

type
  TMetricsConfiguration = class;
  
  IMetricsConfiguration = interface
    function GetFilter: TMetricsFilter;
    procedure SetFilter(const Value: TMetricsFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TMetricsConfiguration;
    function IsSetFilter: Boolean;
    function IsSetId: Boolean;
    property Filter: TMetricsFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property Id: string read GetId write SetId;
  end;
  
  TMetricsConfiguration = class
  strict private
    FFilter: TMetricsFilter;
    FKeepFilter: Boolean;
    FId: Nullable<string>;
    function GetFilter: TMetricsFilter;
    procedure SetFilter(const Value: TMetricsFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TMetricsConfiguration;
  public
    destructor Destroy; override;
    function IsSetFilter: Boolean;
    function IsSetId: Boolean;
    property Filter: TMetricsFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TMetricsConfiguration }

destructor TMetricsConfiguration.Destroy;
begin
  Filter := nil;
  inherited;
end;

function TMetricsConfiguration.Obj: TMetricsConfiguration;
begin
  Result := Self;
end;

function TMetricsConfiguration.GetFilter: TMetricsFilter;
begin
  Result := FFilter;
end;

procedure TMetricsConfiguration.SetFilter(const Value: TMetricsFilter);
begin
  if FFilter <> Value then
  begin
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TMetricsConfiguration.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TMetricsConfiguration.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TMetricsConfiguration.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

function TMetricsConfiguration.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TMetricsConfiguration.SetId(const Value: string);
begin
  FId := Value;
end;

function TMetricsConfiguration.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
