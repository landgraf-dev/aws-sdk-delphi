unit AWS.SSM.Transform.DescribeAssociationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeAssociationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeAssociationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeAssociationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeAssociationRequest>, IDescribeAssociationRequestMarshaller)
  strict private
    class var FInstance: IDescribeAssociationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeAssociationRequest): IRequest; overload;
    class function Instance: IDescribeAssociationRequestMarshaller; static;
  end;
  
implementation

{ TDescribeAssociationRequestMarshaller }

function TDescribeAssociationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeAssociationRequest(AInput));
end;

function TDescribeAssociationRequestMarshaller.Marshall(PublicRequest: TDescribeAssociationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeAssociation');
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
        if PublicRequest.IsSetAssociationId then
        begin
          Context.Writer.WriteName('AssociationId');
          Context.Writer.WriteString(PublicRequest.AssociationId);
        end;
        if PublicRequest.IsSetAssociationVersion then
        begin
          Context.Writer.WriteName('AssociationVersion');
          Context.Writer.WriteString(PublicRequest.AssociationVersion);
        end;
        if PublicRequest.IsSetInstanceId then
        begin
          Context.Writer.WriteName('InstanceId');
          Context.Writer.WriteString(PublicRequest.InstanceId);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
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

class constructor TDescribeAssociationRequestMarshaller.Create;
begin
  FInstance := TDescribeAssociationRequestMarshaller.Create;
end;

class function TDescribeAssociationRequestMarshaller.Instance: IDescribeAssociationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
