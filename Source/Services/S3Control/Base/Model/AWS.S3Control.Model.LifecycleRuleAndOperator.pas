unit AWS.S3Control.Model.LifecycleRuleAndOperator;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.S3Control.Model.S3Tag;

type
  TLifecycleRuleAndOperator = class;
  
  ILifecycleRuleAndOperator = interface
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TS3Tag>;
    procedure SetTags(const Value: TObjectList<TS3Tag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TLifecycleRuleAndOperator;
    function IsSetPrefix: Boolean;
    function IsSetTags: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tags: TObjectList<TS3Tag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TLifecycleRuleAndOperator = class
  strict private
    FPrefix: Nullable<string>;
    FTags: TObjectList<TS3Tag>;
    FKeepTags: Boolean;
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TS3Tag>;
    procedure SetTags(const Value: TObjectList<TS3Tag>);
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
    property Tags: TObjectList<TS3Tag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TLifecycleRuleAndOperator }

constructor TLifecycleRuleAndOperator.Create;
begin
  inherited;
  FTags := TObjectList<TS3Tag>.Create;
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

function TLifecycleRuleAndOperator.GetTags: TObjectList<TS3Tag>;
begin
  Result := FTags;
end;

procedure TLifecycleRuleAndOperator.SetTags(const Value: TObjectList<TS3Tag>);
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
