unit AWS.Transcribe.Model.UpdateCallAnalyticsCategoryRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Model.Rule;

type
  TUpdateCallAnalyticsCategoryRequest = class;
  
  IUpdateCallAnalyticsCategoryRequest = interface
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
    function GetRules: TObjectList<TRule>;
    procedure SetRules(const Value: TObjectList<TRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TUpdateCallAnalyticsCategoryRequest;
    function IsSetCategoryName: Boolean;
    function IsSetRules: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
    property Rules: TObjectList<TRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TUpdateCallAnalyticsCategoryRequest = class(TAmazonTranscribeServiceRequest, IUpdateCallAnalyticsCategoryRequest)
  strict private
    FCategoryName: Nullable<string>;
    FRules: TObjectList<TRule>;
    FKeepRules: Boolean;
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
    function GetRules: TObjectList<TRule>;
    procedure SetRules(const Value: TObjectList<TRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TUpdateCallAnalyticsCategoryRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCategoryName: Boolean;
    function IsSetRules: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
    property Rules: TObjectList<TRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TUpdateCallAnalyticsCategoryRequest }

constructor TUpdateCallAnalyticsCategoryRequest.Create;
begin
  inherited;
  FRules := TObjectList<TRule>.Create;
end;

destructor TUpdateCallAnalyticsCategoryRequest.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TUpdateCallAnalyticsCategoryRequest.Obj: TUpdateCallAnalyticsCategoryRequest;
begin
  Result := Self;
end;

function TUpdateCallAnalyticsCategoryRequest.GetCategoryName: string;
begin
  Result := FCategoryName.ValueOrDefault;
end;

procedure TUpdateCallAnalyticsCategoryRequest.SetCategoryName(const Value: string);
begin
  FCategoryName := Value;
end;

function TUpdateCallAnalyticsCategoryRequest.IsSetCategoryName: Boolean;
begin
  Result := FCategoryName.HasValue;
end;

function TUpdateCallAnalyticsCategoryRequest.GetRules: TObjectList<TRule>;
begin
  Result := FRules;
end;

procedure TUpdateCallAnalyticsCategoryRequest.SetRules(const Value: TObjectList<TRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TUpdateCallAnalyticsCategoryRequest.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TUpdateCallAnalyticsCategoryRequest.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TUpdateCallAnalyticsCategoryRequest.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
