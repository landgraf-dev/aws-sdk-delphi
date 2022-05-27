unit AWS.Transcribe.Model.DeleteCallAnalyticsCategoryRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TDeleteCallAnalyticsCategoryRequest = class;
  
  IDeleteCallAnalyticsCategoryRequest = interface
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
    function Obj: TDeleteCallAnalyticsCategoryRequest;
    function IsSetCategoryName: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
  end;
  
  TDeleteCallAnalyticsCategoryRequest = class(TAmazonTranscribeServiceRequest, IDeleteCallAnalyticsCategoryRequest)
  strict private
    FCategoryName: Nullable<string>;
    function GetCategoryName: string;
    procedure SetCategoryName(const Value: string);
  strict protected
    function Obj: TDeleteCallAnalyticsCategoryRequest;
  public
    function IsSetCategoryName: Boolean;
    property CategoryName: string read GetCategoryName write SetCategoryName;
  end;
  
implementation

{ TDeleteCallAnalyticsCategoryRequest }

function TDeleteCallAnalyticsCategoryRequest.Obj: TDeleteCallAnalyticsCategoryRequest;
begin
  Result := Self;
end;

function TDeleteCallAnalyticsCategoryRequest.GetCategoryName: string;
begin
  Result := FCategoryName.ValueOrDefault;
end;

procedure TDeleteCallAnalyticsCategoryRequest.SetCategoryName(const Value: string);
begin
  FCategoryName := Value;
end;

function TDeleteCallAnalyticsCategoryRequest.IsSetCategoryName: Boolean;
begin
  Result := FCategoryName.HasValue;
end;

end.
