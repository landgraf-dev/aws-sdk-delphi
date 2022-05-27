unit AWS.Transcribe.Model.UpdateCallAnalyticsCategoryResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CategoryProperties;

type
  TUpdateCallAnalyticsCategoryResponse = class;
  
  IUpdateCallAnalyticsCategoryResponse = interface(IAmazonWebServiceResponse)
    function GetCategoryProperties: TCategoryProperties;
    procedure SetCategoryProperties(const Value: TCategoryProperties);
    function GetKeepCategoryProperties: Boolean;
    procedure SetKeepCategoryProperties(const Value: Boolean);
    function Obj: TUpdateCallAnalyticsCategoryResponse;
    function IsSetCategoryProperties: Boolean;
    property CategoryProperties: TCategoryProperties read GetCategoryProperties write SetCategoryProperties;
    property KeepCategoryProperties: Boolean read GetKeepCategoryProperties write SetKeepCategoryProperties;
  end;
  
  TUpdateCallAnalyticsCategoryResponse = class(TAmazonWebServiceResponse, IUpdateCallAnalyticsCategoryResponse)
  strict private
    FCategoryProperties: TCategoryProperties;
    FKeepCategoryProperties: Boolean;
    function GetCategoryProperties: TCategoryProperties;
    procedure SetCategoryProperties(const Value: TCategoryProperties);
    function GetKeepCategoryProperties: Boolean;
    procedure SetKeepCategoryProperties(const Value: Boolean);
  strict protected
    function Obj: TUpdateCallAnalyticsCategoryResponse;
  public
    destructor Destroy; override;
    function IsSetCategoryProperties: Boolean;
    property CategoryProperties: TCategoryProperties read GetCategoryProperties write SetCategoryProperties;
    property KeepCategoryProperties: Boolean read GetKeepCategoryProperties write SetKeepCategoryProperties;
  end;
  
implementation

{ TUpdateCallAnalyticsCategoryResponse }

destructor TUpdateCallAnalyticsCategoryResponse.Destroy;
begin
  CategoryProperties := nil;
  inherited;
end;

function TUpdateCallAnalyticsCategoryResponse.Obj: TUpdateCallAnalyticsCategoryResponse;
begin
  Result := Self;
end;

function TUpdateCallAnalyticsCategoryResponse.GetCategoryProperties: TCategoryProperties;
begin
  Result := FCategoryProperties;
end;

procedure TUpdateCallAnalyticsCategoryResponse.SetCategoryProperties(const Value: TCategoryProperties);
begin
  if FCategoryProperties <> Value then
  begin
    if not KeepCategoryProperties then
      FCategoryProperties.Free;
    FCategoryProperties := Value;
  end;
end;

function TUpdateCallAnalyticsCategoryResponse.GetKeepCategoryProperties: Boolean;
begin
  Result := FKeepCategoryProperties;
end;

procedure TUpdateCallAnalyticsCategoryResponse.SetKeepCategoryProperties(const Value: Boolean);
begin
  FKeepCategoryProperties := Value;
end;

function TUpdateCallAnalyticsCategoryResponse.IsSetCategoryProperties: Boolean;
begin
  Result := FCategoryProperties <> nil;
end;

end.
