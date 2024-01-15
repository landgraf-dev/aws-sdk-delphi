unit AWS.S3.Transform.S3UnmarshallerContext;

interface

uses
  AWS.Transform.UnmarshallerContext,
  AWS.S3.Transform.S3ErrorResponseUnmarshaller,
  AWS.S3.Exception;

type
  TS3UnmarshallerContext = class(TXmlUnmarshallerContext)
  private
    FCheckedForErrorResponse: Boolean;
  public
    function Read: Boolean; override;
  end;

implementation

{ TS3UnmarshalerContext }

function TS3UnmarshallerContext.Read: Boolean;
begin
  Result := inherited Read;
  if (ResponseData.StatusCode = 200) and not FCheckedForErrorResponse then
  begin
    // Check for top level XML element "Error".
    // Few S3 operations like CopyObject, CopyPart and CompleteMultipartUpload
    // can return an HTTP 200 response with an error element.
    if IsStartElement then
    begin
      if TestExpression('Error', 1) then
      begin
        var unmarshaller := TS3ErrorResponseUnmarshaller.Create;
        try
          var errorResponse := unmarshaller.Unmarshall(Self);

          var s3Exception := EAmazonS3Exception.Create(errorResponse.Message, nil, errorResponse.ErrorType, errorResponse.Code,
              errorResponse.RequestId, ResponseData.StatusCode, errorResponse.Id2, errorResponse.AmzCfId);
          s3Exception.Region := errorResponse.Region;

          raise s3Exception;
        finally
          unmarshaller.Free;
        end;
      end;
      FCheckedForErrorResponse := True;
    end;
  end;
end;

end.
