unit AWS.Textract.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.Textract.Model.AnalyzeDocumentResponse, 
  AWS.Textract.Model.AnalyzeDocumentRequest, 
  AWS.Textract.Model.DetectDocumentTextResponse, 
  AWS.Textract.Model.DetectDocumentTextRequest, 
  AWS.Textract.Model.GetDocumentAnalysisResponse, 
  AWS.Textract.Model.GetDocumentAnalysisRequest, 
  AWS.Textract.Model.GetDocumentTextDetectionResponse, 
  AWS.Textract.Model.GetDocumentTextDetectionRequest, 
  AWS.Textract.Model.StartDocumentAnalysisResponse, 
  AWS.Textract.Model.StartDocumentAnalysisRequest, 
  AWS.Textract.Model.StartDocumentTextDetectionResponse, 
  AWS.Textract.Model.StartDocumentTextDetectionRequest;

type
  IAmazonTextract = interface(IAmazonService)
    function AnalyzeDocument(Request: IAnalyzeDocumentRequest): IAnalyzeDocumentResponse; overload;
    function DetectDocumentText(Request: IDetectDocumentTextRequest): IDetectDocumentTextResponse; overload;
    function GetDocumentAnalysis(Request: IGetDocumentAnalysisRequest): IGetDocumentAnalysisResponse; overload;
    function GetDocumentTextDetection(Request: IGetDocumentTextDetectionRequest): IGetDocumentTextDetectionResponse; overload;
    function StartDocumentAnalysis(Request: IStartDocumentAnalysisRequest): IStartDocumentAnalysisResponse; overload;
    function StartDocumentTextDetection(Request: IStartDocumentTextDetectionRequest): IStartDocumentTextDetectionResponse; overload;
  end;
  
implementation

end.
