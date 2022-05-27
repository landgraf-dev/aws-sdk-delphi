unit AWS.Transcribe.Model.CategoryProperties;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.Rule;

type
  TCategoryProperties = class;
  
  ICategoryProperties = interface
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
    function GetCreateTime: TDateTime;
    procedure SetCreateTime(const Value: TDateTime);
    function GetLastUpdateTime: TDateTime;
    procedure SetLastUpdateTime(const Value: TDateTime);
    function GetRules: TObjectList<TRule>;
    procedure SetRules(const Value: TObjectList<TRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TCategoryProperties;
    function IsSetCategoryName: Boolean;
    function IsSetCreateTime: Boolean;
    function IsSetLastUpdateTime: Boolean;
    function IsSetRules: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
    property CreateTime: TDateTime read GetCreateTime write SetCreateTime;
    property LastUpdateTime: TDateTime read GetLastUpdateTime write SetLastUpdateTime;
    property Rules: TObjectList<TRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TCategoryProperties = class
  strict private
    FCategoryName: Nullable<string>;
    FCreateTime: Nullable<TDateTime>;
    FLastUpdateTime: Nullable<TDateTime>;
    FRules: TObjectList<TRule>;
    FKeepRules: Boolean;
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
    function GetCreateTime: TDateTime;
    procedure SetCreateTime(const Value: TDateTime);
    function GetLastUpdateTime: TDateTime;
    procedure SetLastUpdateTime(const Value: TDateTime);
    function GetRules: TObjectList<TRule>;
    procedure SetRules(const Value: TObjectList<TRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TCategoryProperties;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCategoryName: Boolean;
    function IsSetCreateTime: Boolean;
    function IsSetLastUpdateTime: Boolean;
    function IsSetRules: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
    property CreateTime: TDateTime read GetCreateTime write SetCreateTime;
    property LastUpdateTime: TDateTime read GetLastUpdateTime write SetLastUpdateTime;
    property Rules: TObjectList<TRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TCategoryProperties }

constructor TCategoryProperties.Create;
begin
  inherited;
  FRules := TObjectList<TRule>.Create;
end;

destructor TCategoryProperties.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TCategoryProperties.Obj: TCategoryProperties;
begin
  Result := Self;
end;

function TCategoryProperties.GetCategoryName: string;
begin
  Result := FCategoryName.ValueOrDefault;
end;

procedure TCategoryProperties.SetCategoryName(const Value: string);
begin
  FCategoryName := Value;
end;

function TCategoryProperties.IsSetCategoryName: Boolean;
begin
  Result := FCategoryName.HasValue;
end;

function TCategoryProperties.GetCreateTime: TDateTime;
begin
  Result := FCreateTime.ValueOrDefault;
end;

procedure TCategoryProperties.SetCreateTime(const Value: TDateTime);
begin
  FCreateTime := Value;
end;

function TCategoryProperties.IsSetCreateTime: Boolean;
begin
  Result := FCreateTime.HasValue;
end;

function TCategoryProperties.GetLastUpdateTime: TDateTime;
begin
  Result := FLastUpdateTime.ValueOrDefault;
end;

procedure TCategoryProperties.SetLastUpdateTime(const Value: TDateTime);
begin
  FLastUpdateTime := Value;
end;

function TCategoryProperties.IsSetLastUpdateTime: Boolean;
begin
  Result := FLastUpdateTime.HasValue;
end;

function TCategoryProperties.GetRules: TObjectList<TRule>;
begin
  Result := FRules;
end;

procedure TCategoryProperties.SetRules(const Value: TObjectList<TRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TCategoryProperties.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TCategoryProperties.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TCategoryProperties.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
