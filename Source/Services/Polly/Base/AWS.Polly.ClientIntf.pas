unit AWS.Polly.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.Polly.Model.DeleteLexiconResponse, 
  AWS.Polly.Model.DeleteLexiconRequest, 
  AWS.Polly.Model.DescribeVoicesResponse, 
  AWS.Polly.Model.DescribeVoicesRequest, 
  AWS.Polly.Model.GetLexiconResponse, 
  AWS.Polly.Model.GetLexiconRequest, 
  AWS.Polly.Model.GetSpeechSynthesisTaskResponse, 
  AWS.Polly.Model.GetSpeechSynthesisTaskRequest, 
  AWS.Polly.Model.ListLexiconsResponse, 
  AWS.Polly.Model.ListLexiconsRequest, 
  AWS.Polly.Model.ListSpeechSynthesisTasksResponse, 
  AWS.Polly.Model.ListSpeechSynthesisTasksRequest, 
  AWS.Polly.Model.PutLexiconResponse, 
  AWS.Polly.Model.PutLexiconRequest, 
  AWS.Polly.Model.StartSpeechSynthesisTaskResponse, 
  AWS.Polly.Model.StartSpeechSynthesisTaskRequest, 
  AWS.Polly.Model.SynthesizeSpeechResponse, 
  AWS.Polly.Model.SynthesizeSpeechRequest;

type
  IAmazonPolly = interface(IAmazonService)
    function DeleteLexicon(Request: IDeleteLexiconRequest): IDeleteLexiconResponse; overload;
    function DescribeVoices(Request: IDescribeVoicesRequest): IDescribeVoicesResponse; overload;
    function GetLexicon(Request: IGetLexiconRequest): IGetLexiconResponse; overload;
    function GetSpeechSynthesisTask(Request: IGetSpeechSynthesisTaskRequest): IGetSpeechSynthesisTaskResponse; overload;
    function ListLexicons(Request: IListLexiconsRequest): IListLexiconsResponse; overload;
    function ListSpeechSynthesisTasks(Request: IListSpeechSynthesisTasksRequest): IListSpeechSynthesisTasksResponse; overload;
    function PutLexicon(Request: IPutLexiconRequest): IPutLexiconResponse; overload;
    function StartSpeechSynthesisTask(Request: IStartSpeechSynthesisTaskRequest): IStartSpeechSynthesisTaskResponse; overload;
    function SynthesizeSpeech(Request: ISynthesizeSpeechRequest): ISynthesizeSpeechResponse; overload;
  end;
  
implementation

end.
