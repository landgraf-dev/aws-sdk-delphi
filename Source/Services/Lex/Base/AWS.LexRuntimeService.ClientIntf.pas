unit AWS.LexRuntimeService.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.LexRuntimeService.Model.DeleteSessionResponse, 
  AWS.LexRuntimeService.Model.DeleteSessionRequest, 
  AWS.LexRuntimeService.Model.GetSessionResponse, 
  AWS.LexRuntimeService.Model.GetSessionRequest, 
  AWS.LexRuntimeService.Model.PostContentResponse, 
  AWS.LexRuntimeService.Model.PostContentRequest, 
  AWS.LexRuntimeService.Model.PostTextResponse, 
  AWS.LexRuntimeService.Model.PostTextRequest, 
  AWS.LexRuntimeService.Model.PutSessionResponse, 
  AWS.LexRuntimeService.Model.PutSessionRequest;

type
  IAmazonLex = interface(IAmazonService)
    ['{152AD843-5566-4022-9384-EDEC0BCC5422}']
    function DeleteSession(Request: IDeleteSessionRequest): IDeleteSessionResponse; overload;
    function GetSession(Request: IGetSessionRequest): IGetSessionResponse; overload;
    function PostContent(Request: IPostContentRequest): IPostContentResponse; overload;
    function PostText(Request: IPostTextRequest): IPostTextResponse; overload;
    function PutSession(Request: IPutSessionRequest): IPutSessionResponse; overload;
  end;
  
implementation

end.
