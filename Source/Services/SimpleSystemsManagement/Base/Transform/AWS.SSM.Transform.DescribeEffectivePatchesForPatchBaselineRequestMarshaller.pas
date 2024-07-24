unit AWS.SSM.Transform.DescribeEffectivePatchesForPatchBaselineRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribeEffectivePatchesForPatchBaselineRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeEffectivePatchesForPatchBaselineRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeEffectivePatchesForPatchBaselineRequest>, IDescribeEffectivePatchesForPatchBaselineRequestMarshaller)
  strict private
    class var FInstance: IDescribeEffectivePatchesForPatchBaselineRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeEffectivePatchesForPatchBaselineRequest): IRequest; overload;
    class function Instance: IDescribeEffectivePatchesForPatchBaselineRequestMarshaller; static;
  end;
  
implementation

{ TDescribeEffectivePatchesForPatchBaselineRequestMarshaller }

function TDescribeEffectivePatchesForPatchBaselineRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeEffectivePatchesForPatchBaselineRequest(AInput));
end;

function TDescribeEffectivePatchesForPatchBaselineRequestMarshaller.Marshall(PublicRequest: TDescribeEffectivePatchesForPatchBaselineRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeEffectivePatchesForPatchBaseline');
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
        if PublicRequest.IsSetBaselineId then
        begin
          Context.Writer.WriteName('BaselineId');
          Context.Writer.WriteString(PublicRequest.BaselineId);
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

class constructor TDescribeEffectivePatchesForPatchBaselineRequestMarshaller.Create;
begin
  FInstance := TDescribeEffectivePatchesForPatchBaselineRequestMarshaller.Create;
end;

class function TDescribeEffectivePatchesForPatchBaselineRequestMarshaller.Instance: IDescribeEffectivePatchesForPatchBaselineRequestMarshaller;
begin
  Result := FInstance;
end;

end.
