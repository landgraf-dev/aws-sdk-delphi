unit AWS.Rekognition.Transform.ListFacesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.ListFacesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IListFacesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListFacesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListFacesRequest>, IListFacesRequestMarshaller)
  strict private
    class var FInstance: IListFacesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListFacesRequest): IRequest; overload;
    class function Instance: IListFacesRequestMarshaller; static;
  end;
  
implementation

{ TListFacesRequestMarshaller }

function TListFacesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListFacesRequest(AInput));
end;

function TListFacesRequestMarshaller.Marshall(PublicRequest: TListFacesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Rekognition');
  Request.Headers.Add('X-Amz-Target', 'RekognitionService.ListFaces');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2016-06-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetCollectionId then
        begin
          Context.Writer.WriteName('CollectionId');
          Context.Writer.WriteString(PublicRequest.CollectionId);
        end;
        if PublicRequest.IsSetMaxResults then
        begin
          Context.Writer.WriteName('MaxResults');
          Context.Writer.WriteInteger(PublicRequest.MaxResults);
        end;
        if PublicRequest.IsSetNextToken then
        begin
          Context.Writer.WriteName('NextToken');
          Context.Writer.WriteString(PublicRequest.NextToken);
        end;
        Writer.WriteEndObject;
        Writer.Flush;
        var Snippet: string := Stream.DataString;
        Request.Content := TEncoding.UTF8.GetBytes(Snippet);
      finally
        Context.Free;
      end;
    finally
      Writer.Free;
    end;
  finally
    Stream.Free;
  end;
  Result := Request;
end;

class constructor TListFacesRequestMarshaller.Create;
begin
  FInstance := TListFacesRequestMarshaller.Create;
end;

class function TListFacesRequestMarshaller.Instance: IListFacesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
