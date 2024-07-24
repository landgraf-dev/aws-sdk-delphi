unit AWS.SSM.Transform.ListDocumentsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListDocumentsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.DocumentFilterMarshaller, 
  AWS.SSM.Transform.DocumentKeyValuesFilterMarshaller;

type
  IListDocumentsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDocumentsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDocumentsRequest>, IListDocumentsRequestMarshaller)
  strict private
    class var FInstance: IListDocumentsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDocumentsRequest): IRequest; overload;
    class function Instance: IListDocumentsRequestMarshaller; static;
  end;
  
implementation

{ TListDocumentsRequestMarshaller }

function TListDocumentsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDocumentsRequest(AInput));
end;

function TListDocumentsRequestMarshaller.Marshall(PublicRequest: TListDocumentsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListDocuments');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2014-11-06');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetDocumentFilterList then
        begin
          Context.Writer.WriteName('DocumentFilterList');
          Context.Writer.WriteBeginArray;
          for var PublicRequestDocumentFilterListListValue in PublicRequest.DocumentFilterList do
          begin
            Context.Writer.WriteBeginObject;
            TDocumentFilterMarshaller.Instance.Marshall(PublicRequestDocumentFilterListListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestFiltersListValue in PublicRequest.Filters do
          begin
            Context.Writer.WriteBeginObject;
            TDocumentKeyValuesFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TListDocumentsRequestMarshaller.Create;
begin
  FInstance := TListDocumentsRequestMarshaller.Create;
end;

class function TListDocumentsRequestMarshaller.Instance: IListDocumentsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
