unit AWS.Runtime.ExceptionEvent;

interface

uses
  System.SysUtils, System.Generics.Collections,
  AWS.Internal.ParameterDictionary,
  AWS.Internal.Request,
  AWS.Runtime.Model,
  AWS.SDKUtils;

type
  TExceptionEventArgs = class
  end;

  TExceptionEventHandler = reference to procedure(Sender: TObject; Args: TExceptionEventArgs);

  TWebServiceExceptionEventArgs = class(TExceptionEventArgs)
  private
    FRequest: TAmazonWebServiceRequest;
    FHeaders: TDictionary<string, string>;
    FServiceName: string;
    FParameters: IParameterDictionary;
    FEndpoint: IUri;
    FExceptionObj: Exception;
  public
    constructor Create(AExceptionObj: Exception; ARequest: IRequest);
    property Headers: TDictionary<string, string> read FHeaders;
    property Parameters: IParameterDictionary read FParameters;
    property ServiceName: string read FServiceName;
    property Endpoint: IUri read FEndpoint;
    property Request: TAmazonWebServiceRequest read FRequest;
    property ExceptionObj: Exception read FExceptionObj;
  end;

implementation

{ TWebServiceExceptionEventArgs }

constructor TWebServiceExceptionEventArgs.Create(AExceptionObj: Exception; ARequest: IRequest);
begin
  inherited Create;
  FExceptionObj := AExceptionObj;
  if ARequest <> nil then
  begin
    FHeaders := ARequest.Headers;
    FParameters := ARequest.Parameters;
    FServiceName := ARequest.ServiceName;
    FRequest := ARequest.OriginalRequest as TAmazonWebServiceRequest;
    FEndpoint := ARequest.Endpoint;
  end;
end;

end.
