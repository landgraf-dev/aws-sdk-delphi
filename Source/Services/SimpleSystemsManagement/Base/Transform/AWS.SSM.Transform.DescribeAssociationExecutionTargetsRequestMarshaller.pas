unit AWS.SSM.Transform.DescribeAssociationExecutionTargetsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeAssociationExecutionTargetsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.AssociationExecutionTargetsFilterMarshaller;

type
  IDescribeAssociationExecutionTargetsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeAssociationExecutionTargetsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeAssociationExecutionTargetsRequest>, IDescribeAssociationExecutionTargetsRequestMarshaller)
  strict private
    class var FInstance: IDescribeAssociationExecutionTargetsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeAssociationExecutionTargetsRequest): IRequest; overload;
    class function Instance: IDescribeAssociationExecutionTargetsRequestMarshaller; static;
  end;
  
implementation

{ TDescribeAssociationExecutionTargetsRequestMarshaller }

function TDescribeAssociationExecutionTargetsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeAssociationExecutionTargetsRequest(AInput));
end;

function TDescribeAssociationExecutionTargetsRequestMarshaller.Marshall(PublicRequest: TDescribeAssociationExecutionTargetsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeAssociationExecutionTargets');
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
        if PublicRequest.IsSetExecutionId then
        begin
          Context.Writer.WriteName('ExecutionId');
          Context.Writer.WriteString(PublicRequest.ExecutionId);
        end;
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestFiltersListValue in PublicRequest.Filters do
          begin
            Context.Writer.WriteBeginObject;
            TAssociationExecutionTargetsFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
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

class constructor TDescribeAssociationExecutionTargetsRequestMarshaller.Create;
begin
  FInstance := TDescribeAssociationExecutionTargetsRequestMarshaller.Create;
end;

class function TDescribeAssociationExecutionTargetsRequestMarshaller.Instance: IDescribeAssociationExecutionTargetsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
