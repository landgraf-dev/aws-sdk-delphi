unit AWS.Textract.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.Textract.Model.AnalyzeDocumentResponse, 
  AWS.Textract.Model.AnalyzeDocumentRequest, 
  AWS.Textract.Model.AnalyzeExpenseResponse, 
  AWS.Textract.Model.AnalyzeExpenseRequest, 
  AWS.Textract.Model.AnalyzeIDResponse, 
  AWS.Textract.Model.AnalyzeIDRequest, 
  AWS.Textract.Model.DetectDocumentTextResponse, 
  AWS.Textract.Model.DetectDocumentTextRequest, 
  AWS.Textract.Model.GetDocumentAnalysisResponse, 
  AWS.Textract.Model.GetDocumentAnalysisRequest, 
  AWS.Textract.Model.GetDocumentTextDetectionResponse, 
  AWS.Textract.Model.GetDocumentTextDetectionRequest, 
  AWS.Textract.Model.GetExpenseAnalysisResponse, 
  AWS.Textract.Model.GetExpenseAnalysisRequest, 
  AWS.Textract.Model.StartDocumentAnalysisResponse, 
  AWS.Textract.Model.StartDocumentAnalysisRequest, 
  AWS.Textract.Model.StartDocumentTextDetectionResponse, 
  AWS.Textract.Model.StartDocumentTextDetectionRequest, 
  AWS.Textract.Model.StartExpenseAnalysisResponse, 
  AWS.Textract.Model.StartExpenseAnalysisRequest;

type
  IAmazonTextract = interface(IAmazonService)
    function AnalyzeDocument(Request: IAnalyzeDocumentRequest): IAnalyzeDocumentResponse; overload;
    function AnalyzeExpense(Request: IAnalyzeExpenseRequest): IAnalyzeExpenseResponse; overload;
    function AnalyzeID(Request: IAnalyzeIDRequest): IAnalyzeIDResponse; overload;
    function DetectDocumentText(Request: IDetectDocumentTextRequest): IDetectDocumentTextResponse; overload;
    function GetDocumentAnalysis(Request: IGetDocumentAnalysisRequest): IGetDocumentAnalysisResponse; overload;
    function GetDocumentTextDetection(Request: IGetDocumentTextDetectionRequest): IGetDocumentTextDetectionResponse; overload;
    function GetExpenseAnalysis(Request: IGetExpenseAnalysisRequest): IGetExpenseAnalysisResponse; overload;
    function StartDocumentAnalysis(Request: IStartDocumentAnalysisRequest): IStartDocumentAnalysisResponse; overload;
    function StartDocumentTextDetection(Request: IStartDocumentTextDetectionRequest): IStartDocumentTextDetectionResponse; overload;
    function StartExpenseAnalysis(Request: IStartExpenseAnalysisRequest): IStartExpenseAnalysisResponse; overload;
  end;
  
implementation

end.
