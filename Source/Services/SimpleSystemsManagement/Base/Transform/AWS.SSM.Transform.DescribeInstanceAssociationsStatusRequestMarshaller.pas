unit AWS.SSM.Transform.DescribeInstanceAssociationsStatusRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeInstanceAssociationsStatusRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeInstanceAssociationsStatusRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeInstanceAssociationsStatusRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeInstanceAssociationsStatusRequest>, IDescribeInstanceAssociationsStatusRequestMarshaller)
  strict private
    class var FInstance: IDescribeInstanceAssociationsStatusRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeInstanceAssociationsStatusRequest): IRequest; overload;
    class function Instance: IDescribeInstanceAssociationsStatusRequestMarshaller; static;
  end;
  
implementation

{ TDescribeInstanceAssociationsStatusRequestMarshaller }

function TDescribeInstanceAssociationsStatusRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeInstanceAssociationsStatusRequest(AInput));
end;

function TDescribeInstanceAssociationsStatusRequestMarshaller.Marshall(PublicRequest: TDescribeInstanceAssociationsStatusRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeInstanceAssociationsStatus');
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
        if PublicRequest.IsSetInstanceId then
        begin
          Context.Writer.WriteName('InstanceId');
          Context.Writer.WriteString(PublicRequest.InstanceId);
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

class constructor TDescribeInstanceAssociationsStatusRequestMarshaller.Create;
begin
  FInstance := TDescribeInstanceAssociationsStatusRequestMarshaller.Create;
end;

class function TDescribeInstanceAssociationsStatusRequestMarshaller.Instance: IDescribeInstanceAssociationsStatusRequestMarshaller;
begin
  Result := FInstance;
end;

end.
