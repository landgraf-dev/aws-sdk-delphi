unit AWS.SSM.Transform.DescribeInstancePatchStatesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeInstancePatchStatesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeInstancePatchStatesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeInstancePatchStatesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeInstancePatchStatesRequest>, IDescribeInstancePatchStatesRequestMarshaller)
  strict private
    class var FInstance: IDescribeInstancePatchStatesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeInstancePatchStatesRequest): IRequest; overload;
    class function Instance: IDescribeInstancePatchStatesRequestMarshaller; static;
  end;
  
implementation

{ TDescribeInstancePatchStatesRequestMarshaller }

function TDescribeInstancePatchStatesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeInstancePatchStatesRequest(AInput));
end;

function TDescribeInstancePatchStatesRequestMarshaller.Marshall(PublicRequest: TDescribeInstancePatchStatesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeInstancePatchStates');
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
        if PublicRequest.IsSetInstanceIds then
        begin
          Context.Writer.WriteName('InstanceIds');
          Context.Writer.WriteBeginArray;
          for var PublicRequestInstanceIdsListValue in PublicRequest.InstanceIds do
            Context.Writer.WriteString(PublicRequestInstanceIdsListValue);
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

class constructor TDescribeInstancePatchStatesRequestMarshaller.Create;
begin
  FInstance := TDescribeInstancePatchStatesRequestMarshaller.Create;
end;

class function TDescribeInstancePatchStatesRequestMarshaller.Instance: IDescribeInstancePatchStatesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
