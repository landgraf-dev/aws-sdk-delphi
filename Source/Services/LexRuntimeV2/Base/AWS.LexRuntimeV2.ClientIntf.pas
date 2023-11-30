unit AWS.LexRuntimeV2.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.LexRuntimeV2.Model.DeleteSessionResponse, 
  AWS.LexRuntimeV2.Model.DeleteSessionRequest, 
  AWS.LexRuntimeV2.Model.GetSessionResponse, 
  AWS.LexRuntimeV2.Model.GetSessionRequest, 
  AWS.LexRuntimeV2.Model.PutSessionResponse, 
  AWS.LexRuntimeV2.Model.PutSessionRequest, 
  AWS.LexRuntimeV2.Model.RecognizeTextResponse, 
  AWS.LexRuntimeV2.Model.RecognizeTextRequest, 
  AWS.LexRuntimeV2.Model.RecognizeUtteranceResponse, 
  AWS.LexRuntimeV2.Model.RecognizeUtteranceRequest;

type
  IAmazonLexRuntimeV2 = interface(IAmazonService)
    ['{91E1ADB3-0CE8-4ACB-A4F3-515682ACF1B8}']
    function DeleteSession(Request: IDeleteSessionRequest): IDeleteSessionResponse; overload;
    function GetSession(Request: IGetSessionRequest): IGetSessionResponse; overload;
    function PutSession(Request: IPutSessionRequest): IPutSessionResponse; overload;
    function RecognizeText(Request: IRecognizeTextRequest): IRecognizeTextResponse; overload;
    function RecognizeUtterance(Request: IRecognizeUtteranceRequest): IRecognizeUtteranceResponse; overload;
  end;
  
implementation

end.
