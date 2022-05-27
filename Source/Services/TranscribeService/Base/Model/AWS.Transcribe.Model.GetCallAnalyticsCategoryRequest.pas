unit AWS.Transcribe.Model.GetCallAnalyticsCategoryRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TGetCallAnalyticsCategoryRequest = class;
  
  IGetCallAnalyticsCategoryRequest = interface
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
    function Obj: TGetCallAnalyticsCategoryRequest;
    function IsSetCategoryName: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
  end;
  
  TGetCallAnalyticsCategoryRequest = class(TAmazonTranscribeServiceRequest, IGetCallAnalyticsCategoryRequest)
  strict private
    FCategoryName: Nullable<string>;
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
  strict protected
    function Obj: TGetCallAnalyticsCategoryRequest;
  public
    function IsSetCategoryName: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
  end;
  
implementation

{ TGetCallAnalyticsCategoryRequest }

function TGetCallAnalyticsCategoryRequest.Obj: TGetCallAnalyticsCategoryRequest;
begin
  Result := Self;
end;

function TGetCallAnalyticsCategoryRequest.GetCategoryName: string;
begin
  Result := FCategoryName.ValueOrDefault;
end;

procedure TGetCallAnalyticsCategoryRequest.SetCategoryName(const Value: string);
begin
  FCategoryName := Value;
end;

function TGetCallAnalyticsCategoryRequest.IsSetCategoryName: Boolean;
begin
  Result := FCategoryName.HasValue;
end;

end.
