unit AWS.SSM.Transform.ListAssociationsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListAssociationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.AssociationFilterMarshaller;

type
  IListAssociationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListAssociationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListAssociationsRequest>, IListAssociationsRequestMarshaller)
  strict private
    class var FInstance: IListAssociationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListAssociationsRequest): IRequest; overload;
    class function Instance: IListAssociationsRequestMarshaller; static;
  end;
  
implementation

{ TListAssociationsRequestMarshaller }

function TListAssociationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListAssociationsRequest(AInput));
end;

function TListAssociationsRequestMarshaller.Marshall(PublicRequest: TListAssociationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListAssociations');
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
        if PublicRequest.IsSetAssociationFilterList then
        begin
          Context.Writer.WriteName('AssociationFilterList');
          Context.Writer.WriteBeginArray;
          for var PublicRequestAssociationFilterListListValue in PublicRequest.AssociationFilterList do
          begin
            Context.Writer.WriteBeginObject;
            TAssociationFilterMarshaller.Instance.Marshall(PublicRequestAssociationFilterListListValue, Context);
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

class constructor TListAssociationsRequestMarshaller.Create;
begin
  FInstance := TListAssociationsRequestMarshaller.Create;
end;

class function TListAssociationsRequestMarshaller.Instance: IListAssociationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
