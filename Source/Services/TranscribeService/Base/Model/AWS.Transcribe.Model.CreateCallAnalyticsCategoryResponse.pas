unit AWS.Transcribe.Model.CreateCallAnalyticsCategoryResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CategoryProperties;

type
  TCreateCallAnalyticsCategoryResponse = class;
  
  ICreateCallAnalyticsCategoryResponse = interface(IAmazonWebServiceResponse)
    function GetCategoryProperties: TCategoryProperties;
    procedure SetCategoryProperties(const Value: TCategoryProperties);
    function GetKeepCategoryProperties: Boolean;
    procedure SetKeepCategoryProperties(const Value: Boolean);
    function Obj: TCreateCallAnalyticsCategoryResponse;
    function IsSetCategoryProperties: Boolean;
    property CategoryProperties: TCategoryProperties read GetCategoryProperties write SetCategoryProperties;
    property KeepCategoryProperties: Boolean read GetKeepCategoryProperties write SetKeepCategoryProperties;
  end;
  
  TCreateCallAnalyticsCategoryResponse = class(TAmazonWebServiceResponse, ICreateCallAnalyticsCategoryResponse)
  strict private
    FCategoryProperties: TCategoryProperties;
    FKeepCategoryProperties: Boolean;
    function GetCategoryProperties: TCategoryProperties;
    procedure SetCategoryProperties(const Value: TCategoryProperties);
    function GetKeepCategoryProperties: Boolean;
    procedure SetKeepCategoryProperties(const Value: Boolean);
  strict protected
    function Obj: TCreateCallAnalyticsCategoryResponse;
  public
    destructor Destroy; override;
    function IsSetCategoryProperties: Boolean;
    property CategoryProperties: TCategoryProperties read GetCategoryProperties write SetCategoryProperties;
    property KeepCategoryProperties: Boolean read GetKeepCategoryProperties write SetKeepCategoryProperties;
  end;
  
implementation

{ TCreateCallAnalyticsCategoryResponse }

destructor TCreateCallAnalyticsCategoryResponse.Destroy;
begin
  CategoryProperties := nil;
  inherited;
end;

function TCreateCallAnalyticsCategoryResponse.Obj: TCreateCallAnalyticsCategoryResponse;
begin
  Result := Self;
end;

function TCreateCallAnalyticsCategoryResponse.GetCategoryProperties: TCategoryProperties;
begin
  Result := FCategoryProperties;
end;

procedure TCreateCallAnalyticsCategoryResponse.SetCategoryProperties(const Value: TCategoryProperties);
begin
  if FCategoryProperties <> Value then
  begin
    if not KeepCategoryProperties then
      FCategoryProperties.Free;
    FCategoryProperties := Value;
  end;
end;

function TCreateCallAnalyticsCategoryResponse.GetKeepCategoryProperties: Boolean;
begin
  Result := FKeepCategoryProperties;
end;

procedure TCreateCallAnalyticsCategoryResponse.SetKeepCategoryProperties(const Value: Boolean);
begin
  FKeepCategoryProperties := Value;
end;

function TCreateCallAnalyticsCategoryResponse.IsSetCategoryProperties: Boolean;
begin
  Result := FCategoryProperties <> nil;
end;

end.
