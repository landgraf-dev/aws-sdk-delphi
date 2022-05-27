unit AWS.Transcribe.Model.GetCallAnalyticsCategoryResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CategoryProperties;

type
  TGetCallAnalyticsCategoryResponse = class;
  
  IGetCallAnalyticsCategoryResponse = interface(IAmazonWebServiceResponse)
    function GetCategoryProperties: TCategoryProperties;
    procedure SetCategoryProperties(const Value: TCategoryProperties);
    function GetKeepCategoryProperties: Boolean;
    procedure SetKeepCategoryProperties(const Value: Boolean);
    function Obj: TGetCallAnalyticsCategoryResponse;
    function IsSetCategoryProperties: Boolean;
    property CategoryProperties: TCategoryProperties read GetCategoryProperties write SetCategoryProperties;
    property KeepCategoryProperties: Boolean read GetKeepCategoryProperties write SetKeepCategoryProperties;
  end;
  
  TGetCallAnalyticsCategoryResponse = class(TAmazonWebServiceResponse, IGetCallAnalyticsCategoryResponse)
  strict private
    FCategoryProperties: TCategoryProperties;
    FKeepCategoryProperties: Boolean;
    function GetCategoryProperties: TCategoryProperties;
    procedure SetCategoryProperties(const Value: TCategoryProperties);
    function GetKeepCategoryProperties: Boolean;
    procedure SetKeepCategoryProperties(const Value: Boolean);
  strict protected
    function Obj: TGetCallAnalyticsCategoryResponse;
  public
    destructor Destroy; override;
    function IsSetCategoryProperties: Boolean;
    property CategoryProperties: TCategoryProperties read GetCategoryProperties write SetCategoryProperties;
    property KeepCategoryProperties: Boolean read GetKeepCategoryProperties write SetKeepCategoryProperties;
  end;
  
implementation

{ TGetCallAnalyticsCategoryResponse }

destructor TGetCallAnalyticsCategoryResponse.Destroy;
begin
  CategoryProperties := nil;
  inherited;
end;

function TGetCallAnalyticsCategoryResponse.Obj: TGetCallAnalyticsCategoryResponse;
begin
  Result := Self;
end;

function TGetCallAnalyticsCategoryResponse.GetCategoryProperties: TCategoryProperties;
begin
  Result := FCategoryProperties;
end;

procedure TGetCallAnalyticsCategoryResponse.SetCategoryProperties(const Value: TCategoryProperties);
begin
  if FCategoryProperties <> Value then
  begin
    if not KeepCategoryProperties then
      FCategoryProperties.Free;
    FCategoryProperties := Value;
  end;
end;

function TGetCallAnalyticsCategoryResponse.GetKeepCategoryProperties: Boolean;
begin
  Result := FKeepCategoryProperties;
end;

procedure TGetCallAnalyticsCategoryResponse.SetKeepCategoryProperties(const Value: Boolean);
begin
  FKeepCategoryProperties := Value;
end;

function TGetCallAnalyticsCategoryResponse.IsSetCategoryProperties: Boolean;
begin
  Result := FCategoryProperties <> nil;
end;

end.
