unit AWS.S3.Model.AnalyticsAndOperator;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.Tag;

type
  TAnalyticsAndOperator = class;
  
  IAnalyticsAndOperator = interface
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TAnalyticsAndOperator;
    function IsSetPrefix: Boolean;
    function IsSetTags: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TAnalyticsAndOperator = class
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
    function Obj: TAnalyticsAndOperator;
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

{ TAnalyticsAndOperator }

constructor TAnalyticsAndOperator.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TAnalyticsAndOperator.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TAnalyticsAndOperator.Obj: TAnalyticsAndOperator;
begin
  Result := Self;
end;

function TAnalyticsAndOperator.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TAnalyticsAndOperator.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TAnalyticsAndOperator.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TAnalyticsAndOperator.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TAnalyticsAndOperator.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TAnalyticsAndOperator.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TAnalyticsAndOperator.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TAnalyticsAndOperator.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
