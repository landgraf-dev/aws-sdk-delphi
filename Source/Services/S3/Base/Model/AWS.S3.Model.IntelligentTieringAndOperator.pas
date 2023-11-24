unit AWS.S3.Model.IntelligentTieringAndOperator;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.Tag;

type
  TIntelligentTieringAndOperator = class;
  
  IIntelligentTieringAndOperator = interface
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TIntelligentTieringAndOperator;
    function IsSetPrefix: Boolean;
    function IsSetTags: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TIntelligentTieringAndOperator = class
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
    function Obj: TIntelligentTieringAndOperator;
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

{ TIntelligentTieringAndOperator }

constructor TIntelligentTieringAndOperator.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TIntelligentTieringAndOperator.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TIntelligentTieringAndOperator.Obj: TIntelligentTieringAndOperator;
begin
  Result := Self;
end;

function TIntelligentTieringAndOperator.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TIntelligentTieringAndOperator.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TIntelligentTieringAndOperator.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TIntelligentTieringAndOperator.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TIntelligentTieringAndOperator.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TIntelligentTieringAndOperator.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TIntelligentTieringAndOperator.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TIntelligentTieringAndOperator.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
