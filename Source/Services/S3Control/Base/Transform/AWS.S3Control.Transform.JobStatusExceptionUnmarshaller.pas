unit AWS.S3Control.Transform.JobStatusExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.JobStatusException, 
  AWS.Internal.ErrorResponse;

type
  IJobStatusExceptionUnmarshaller = IErrorResponseUnmarshaller<EJobStatusException, TXmlUnmarshallerContext>;
  
  TJobStatusExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EJobStatusException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobStatusExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EJobStatusException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EJobStatusException; overload;
    class function Instance: IJobStatusExceptionUnmarshaller; static;
  end;
  
implementation

{ TJobStatusExceptionUnmarshaller }

function TJobStatusExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EJobStatusException;
begin
  raise ENotImplemented.Create('TJobStatusExceptionUnmarshaller.Unmarshall');
end;

function TJobStatusExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EJobStatusException;
var
  Response: EJobStatusException;
begin
  Response := EJobStatusException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TJobStatusExceptionUnmarshaller.Create;
begin
  FInstance := TJobStatusExceptionUnmarshaller.Create;
end;

class function TJobStatusExceptionUnmarshaller.Instance: IJobStatusExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
