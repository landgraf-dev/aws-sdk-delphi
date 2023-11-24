unit AWS.S3.Model.MetricsFilter;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.MetricsAndOperator, 
  AWS.S3.Model.Tag;

type
  TMetricsFilter = class;
  
  IMetricsFilter = interface
    function GetAnd: TMetricsAndOperator;
    procedure SetAnd(const Value: TMetricsAndOperator);
    function GetKeepAnd: Boolean;
    procedure SetKeepAnd(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTag: TTag;
    procedure SetTag(const Value: TTag);
    function GetKeepTag: Boolean;
    procedure SetKeepTag(const Value: Boolean);
    function Obj: TMetricsFilter;
    function IsSetAnd: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetTag: Boolean;
    property &And: TMetricsAndOperator read GetAnd write SetAnd;
    property KeepAnd: Boolean read GetKeepAnd write SetKeepAnd;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tag: TTag read GetTag write SetTag;
    property KeepTag: Boolean read GetKeepTag write SetKeepTag;
  end;
  
  TMetricsFilter = class
  strict private
    FAnd: TMetricsAndOperator;
    FKeepAnd: Boolean;
    FPrefix: Nullable<string>;
    FTag: TTag;
    FKeepTag: Boolean;
    function GetAnd: TMetricsAndOperator;
    procedure SetAnd(const Value: TMetricsAndOperator);
    function GetKeepAnd: Boolean;
    procedure SetKeepAnd(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTag: TTag;
    procedure SetTag(const Value: TTag);
    function GetKeepTag: Boolean;
    procedure SetKeepTag(const Value: Boolean);
  strict protected
    function Obj: TMetricsFilter;
  public
    destructor Destroy; override;
    function IsSetAnd: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetTag: Boolean;
    property &And: TMetricsAndOperator read GetAnd write SetAnd;
    property KeepAnd: Boolean read GetKeepAnd write SetKeepAnd;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tag: TTag read GetTag write SetTag;
    property KeepTag: Boolean read GetKeepTag write SetKeepTag;
  end;
  
implementation

{ TMetricsFilter }

destructor TMetricsFilter.Destroy;
begin
  Tag := nil;
  &And := nil;
  inherited;
end;

function TMetricsFilter.Obj: TMetricsFilter;
begin
  Result := Self;
end;

function TMetricsFilter.GetAnd: TMetricsAndOperator;
begin
  Result := FAnd;
end;

procedure TMetricsFilter.SetAnd(const Value: TMetricsAndOperator);
begin
  if FAnd <> Value then
  begin
    if not KeepAnd then
      FAnd.Free;
    FAnd := Value;
  end;
end;

function TMetricsFilter.GetKeepAnd: Boolean;
begin
  Result := FKeepAnd;
end;

procedure TMetricsFilter.SetKeepAnd(const Value: Boolean);
begin
  FKeepAnd := Value;
end;

function TMetricsFilter.IsSetAnd: Boolean;
begin
  Result := FAnd <> nil;
end;

function TMetricsFilter.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TMetricsFilter.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TMetricsFilter.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TMetricsFilter.GetTag: TTag;
begin
  Result := FTag;
end;

procedure TMetricsFilter.SetTag(const Value: TTag);
begin
  if FTag <> Value then
  begin
    if not KeepTag then
      FTag.Free;
    FTag := Value;
  end;
end;

function TMetricsFilter.GetKeepTag: Boolean;
begin
  Result := FKeepTag;
end;

procedure TMetricsFilter.SetKeepTag(const Value: Boolean);
begin
  FKeepTag := Value;
end;

function TMetricsFilter.IsSetTag: Boolean;
begin
  Result := FTag <> nil;
end;

end.
