unit AWS.S3.Model.IntelligentTieringFilter;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.IntelligentTieringAndOperator, 
  AWS.S3.Model.Tag;

type
  TIntelligentTieringFilter = class;
  
  IIntelligentTieringFilter = interface
    function GetAnd: TIntelligentTieringAndOperator;
    procedure SetAnd(const Value: TIntelligentTieringAndOperator);
    function GetKeepAnd: Boolean;
    procedure SetKeepAnd(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTag: TTag;
    procedure SetTag(const Value: TTag);
    function GetKeepTag: Boolean;
    procedure SetKeepTag(const Value: Boolean);
    function Obj: TIntelligentTieringFilter;
    function IsSetAnd: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetTag: Boolean;
    property &And: TIntelligentTieringAndOperator read GetAnd write SetAnd;
    property KeepAnd: Boolean read GetKeepAnd write SetKeepAnd;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tag: TTag read GetTag write SetTag;
    property KeepTag: Boolean read GetKeepTag write SetKeepTag;
  end;
  
  TIntelligentTieringFilter = class
  strict private
    FAnd: TIntelligentTieringAndOperator;
    FKeepAnd: Boolean;
    FPrefix: Nullable<string>;
    FTag: TTag;
    FKeepTag: Boolean;
    function GetAnd: TIntelligentTieringAndOperator;
    procedure SetAnd(const Value: TIntelligentTieringAndOperator);
    function GetKeepAnd: Boolean;
    procedure SetKeepAnd(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTag: TTag;
    procedure SetTag(const Value: TTag);
    function GetKeepTag: Boolean;
    procedure SetKeepTag(const Value: Boolean);
  strict protected
    function Obj: TIntelligentTieringFilter;
  public
    destructor Destroy; override;
    function IsSetAnd: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetTag: Boolean;
    property &And: TIntelligentTieringAndOperator read GetAnd write SetAnd;
    property KeepAnd: Boolean read GetKeepAnd write SetKeepAnd;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tag: TTag read GetTag write SetTag;
    property KeepTag: Boolean read GetKeepTag write SetKeepTag;
  end;
  
implementation

{ TIntelligentTieringFilter }

destructor TIntelligentTieringFilter.Destroy;
begin
  Tag := nil;
  &And := nil;
  inherited;
end;

function TIntelligentTieringFilter.Obj: TIntelligentTieringFilter;
begin
  Result := Self;
end;

function TIntelligentTieringFilter.GetAnd: TIntelligentTieringAndOperator;
begin
  Result := FAnd;
end;

procedure TIntelligentTieringFilter.SetAnd(const Value: TIntelligentTieringAndOperator);
begin
  if FAnd <> Value then
  begin
    if not KeepAnd then
      FAnd.Free;
    FAnd := Value;
  end;
end;

function TIntelligentTieringFilter.GetKeepAnd: Boolean;
begin
  Result := FKeepAnd;
end;

procedure TIntelligentTieringFilter.SetKeepAnd(const Value: Boolean);
begin
  FKeepAnd := Value;
end;

function TIntelligentTieringFilter.IsSetAnd: Boolean;
begin
  Result := FAnd <> nil;
end;

function TIntelligentTieringFilter.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TIntelligentTieringFilter.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TIntelligentTieringFilter.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TIntelligentTieringFilter.GetTag: TTag;
begin
  Result := FTag;
end;

procedure TIntelligentTieringFilter.SetTag(const Value: TTag);
begin
  if FTag <> Value then
  begin
    if not KeepTag then
      FTag.Free;
    FTag := Value;
  end;
end;

function TIntelligentTieringFilter.GetKeepTag: Boolean;
begin
  Result := FKeepTag;
end;

procedure TIntelligentTieringFilter.SetKeepTag(const Value: Boolean);
begin
  FKeepTag := Value;
end;

function TIntelligentTieringFilter.IsSetTag: Boolean;
begin
  Result := FTag <> nil;
end;

end.
