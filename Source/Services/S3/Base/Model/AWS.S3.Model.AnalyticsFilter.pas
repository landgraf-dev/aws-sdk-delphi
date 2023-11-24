unit AWS.S3.Model.AnalyticsFilter;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.AnalyticsAndOperator, 
  AWS.S3.Model.Tag;

type
  TAnalyticsFilter = class;
  
  IAnalyticsFilter = interface
    function GetAnd: TAnalyticsAndOperator;
    procedure SetAnd(const Value: TAnalyticsAndOperator);
    function GetKeepAnd: Boolean;
    procedure SetKeepAnd(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTag: TTag;
    procedure SetTag(const Value: TTag);
    function GetKeepTag: Boolean;
    procedure SetKeepTag(const Value: Boolean);
    function Obj: TAnalyticsFilter;
    function IsSetAnd: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetTag: Boolean;
    property &And: TAnalyticsAndOperator read GetAnd write SetAnd;
    property KeepAnd: Boolean read GetKeepAnd write SetKeepAnd;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tag: TTag read GetTag write SetTag;
    property KeepTag: Boolean read GetKeepTag write SetKeepTag;
  end;
  
  TAnalyticsFilter = class
  strict private
    FAnd: TAnalyticsAndOperator;
    FKeepAnd: Boolean;
    FPrefix: Nullable<string>;
    FTag: TTag;
    FKeepTag: Boolean;
    function GetAnd: TAnalyticsAndOperator;
    procedure SetAnd(const Value: TAnalyticsAndOperator);
    function GetKeepAnd: Boolean;
    procedure SetKeepAnd(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTag: TTag;
    procedure SetTag(const Value: TTag);
    function GetKeepTag: Boolean;
    procedure SetKeepTag(const Value: Boolean);
  strict protected
    function Obj: TAnalyticsFilter;
  public
    destructor Destroy; override;
    function IsSetAnd: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetTag: Boolean;
    property &And: TAnalyticsAndOperator read GetAnd write SetAnd;
    property KeepAnd: Boolean read GetKeepAnd write SetKeepAnd;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tag: TTag read GetTag write SetTag;
    property KeepTag: Boolean read GetKeepTag write SetKeepTag;
  end;
  
implementation

{ TAnalyticsFilter }

destructor TAnalyticsFilter.Destroy;
begin
  Tag := nil;
  &And := nil;
  inherited;
end;

function TAnalyticsFilter.Obj: TAnalyticsFilter;
begin
  Result := Self;
end;

function TAnalyticsFilter.GetAnd: TAnalyticsAndOperator;
begin
  Result := FAnd;
end;

procedure TAnalyticsFilter.SetAnd(const Value: TAnalyticsAndOperator);
begin
  if FAnd <> Value then
  begin
    if not KeepAnd then
      FAnd.Free;
    FAnd := Value;
  end;
end;

function TAnalyticsFilter.GetKeepAnd: Boolean;
begin
  Result := FKeepAnd;
end;

procedure TAnalyticsFilter.SetKeepAnd(const Value: Boolean);
begin
  FKeepAnd := Value;
end;

function TAnalyticsFilter.IsSetAnd: Boolean;
begin
  Result := FAnd <> nil;
end;

function TAnalyticsFilter.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TAnalyticsFilter.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TAnalyticsFilter.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TAnalyticsFilter.GetTag: TTag;
begin
  Result := FTag;
end;

procedure TAnalyticsFilter.SetTag(const Value: TTag);
begin
  if FTag <> Value then
  begin
    if not KeepTag then
      FTag.Free;
    FTag := Value;
  end;
end;

function TAnalyticsFilter.GetKeepTag: Boolean;
begin
  Result := FKeepTag;
end;

procedure TAnalyticsFilter.SetKeepTag(const Value: Boolean);
begin
  FKeepTag := Value;
end;

function TAnalyticsFilter.IsSetTag: Boolean;
begin
  Result := FTag <> nil;
end;

end.
