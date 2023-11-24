unit AWS.S3.Model.LifecycleRuleAndOperator;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.Tag;

type
  TLifecycleRuleAndOperator = class;
  
  ILifecycleRuleAndOperator = interface
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TLifecycleRuleAndOperator;
    function IsSetPrefix: Boolean;
    function IsSetTags: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TLifecycleRuleAndOperator = class
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
    function Obj: TLifecycleRuleAndOperator;
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

{ TLifecycleRuleAndOperator }

constructor TLifecycleRuleAndOperator.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TLifecycleRuleAndOperator.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TLifecycleRuleAndOperator.Obj: TLifecycleRuleAndOperator;
begin
  Result := Self;
end;

function TLifecycleRuleAndOperator.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TLifecycleRuleAndOperator.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TLifecycleRuleAndOperator.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TLifecycleRuleAndOperator.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TLifecycleRuleAndOperator.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TLifecycleRuleAndOperator.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TLifecycleRuleAndOperator.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TLifecycleRuleAndOperator.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
