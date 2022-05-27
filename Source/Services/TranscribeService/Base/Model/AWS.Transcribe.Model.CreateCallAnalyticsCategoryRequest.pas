unit AWS.Transcribe.Model.CreateCallAnalyticsCategoryRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Model.Rule;

type
  TCreateCallAnalyticsCategoryRequest = class;
  
  ICreateCallAnalyticsCategoryRequest = interface
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
    function GetRules: TObjectList<TRule>;
    procedure SetRules(const Value: TObjectList<TRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TCreateCallAnalyticsCategoryRequest;
    function IsSetCategoryName: Boolean;
    function IsSetRules: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
    property Rules: TObjectList<TRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TCreateCallAnalyticsCategoryRequest = class(TAmazonTranscribeServiceRequest, ICreateCallAnalyticsCategoryRequest)
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
    function Obj: TCreateCallAnalyticsCategoryRequest;
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

{ TCreateCallAnalyticsCategoryRequest }

constructor TCreateCallAnalyticsCategoryRequest.Create;
begin
  inherited;
  FRules := TObjectList<TRule>.Create;
end;

destructor TCreateCallAnalyticsCategoryRequest.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TCreateCallAnalyticsCategoryRequest.Obj: TCreateCallAnalyticsCategoryRequest;
begin
  Result := Self;
end;

function TCreateCallAnalyticsCategoryRequest.GetCategoryName: string;
begin
  Result := FCategoryName.ValueOrDefault;
end;

procedure TCreateCallAnalyticsCategoryRequest.SetCategoryName(const Value: string);
begin
  FCategoryName := Value;
end;

function TCreateCallAnalyticsCategoryRequest.IsSetCategoryName: Boolean;
begin
  Result := FCategoryName.HasValue;
end;

function TCreateCallAnalyticsCategoryRequest.GetRules: TObjectList<TRule>;
begin
  Result := FRules;
end;

procedure TCreateCallAnalyticsCategoryRequest.SetRules(const Value: TObjectList<TRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TCreateCallAnalyticsCategoryRequest.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TCreateCallAnalyticsCategoryRequest.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TCreateCallAnalyticsCategoryRequest.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
