unit AWS.Textract.Model.StartDocumentAnalysisResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartDocumentAnalysisResponse = class;
  
  IStartDocumentAnalysisResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartDocumentAnalysisResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartDocumentAnalysisResponse = class(TAmazonWebServiceResponse, IStartDocumentAnalysisResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartDocumentAnalysisResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartDocumentAnalysisResponse }

function TStartDocumentAnalysisResponse.Obj: TStartDocumentAnalysisResponse;
begin
  Result := Self;
end;

function TStartDocumentAnalysisResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartDocumentAnalysisResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartDocumentAnalysisResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
