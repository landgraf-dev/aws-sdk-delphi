unit AWS.S3.Model.MetricsAndOperator;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.Tag;

type
  TMetricsAndOperator = class;
  
  IMetricsAndOperator = interface
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TMetricsAndOperator;
    function IsSetPrefix: Boolean;
    function IsSetTags: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TMetricsAndOperator = class
  strict private
    FPrefix: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TMetricsAndOperator;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPrefix: Boolean;
    function IsSetTags: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TMetricsAndOperator }

constructor TMetricsAndOperator.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TMetricsAndOperator.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TMetricsAndOperator.Obj: TMetricsAndOperator;
begin
  Result := Self;
end;

function TMetricsAndOperator.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TMetricsAndOperator.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TMetricsAndOperator.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TMetricsAndOperator.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TMetricsAndOperator.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TMetricsAndOperator.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TMetricsAndOperator.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TMetricsAndOperator.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
