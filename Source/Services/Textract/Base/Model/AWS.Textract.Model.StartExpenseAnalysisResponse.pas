unit AWS.Textract.Model.StartExpenseAnalysisResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TStartExpenseAnalysisResponse = class;
  
  IStartExpenseAnalysisResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartExpenseAnalysisResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartExpenseAnalysisResponse = class(TAmazonWebServiceResponse, IStartExpenseAnalysisResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartExpenseAnalysisResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartExpenseAnalysisResponse }

function TStartExpenseAnalysisResponse.Obj: TStartExpenseAnalysisResponse;
begin
  Result := Self;
end;

function TStartExpenseAnalysisResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartExpenseAnalysisResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartExpenseAnalysisResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
