unit AWS.SSM.Transform.ListCommandInvocationsRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ListCommandInvocationsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.CommandFilterMarshaller;

type
  IListCommandInvocationsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListCommandInvocationsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListCommandInvocationsRequest>, IListCommandInvocationsRequestMarshaller)
  strict private
    class var FInstance: IListCommandInvocationsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListCommandInvocationsRequest): IRequest; overload;
    class function Instance: IListCommandInvocationsRequestMarshaller; static;
  end;
  
implementation

{ TListCommandInvocationsRequestMarshaller }

function TListCommandInvocationsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListCommandInvocationsRequest(AInput));
end;

function TListCommandInvocationsRequestMarshaller.Marshall(PublicRequest: TListCommandInvocationsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ListCommandInvocations');
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
        if PublicRequest.IsSetCommandId then
        begin
          Context.Writer.WriteName('CommandId');
          Context.Writer.WriteString(PublicRequest.CommandId);
        end;
        if PublicRequest.IsSetDetails then
        begin
          Context.Writer.WriteName('Details');
          Context.Writer.WriteBoolean(PublicRequest.Details);
        end;
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestFiltersListValue in PublicRequest.Filters do
          begin
            Context.Writer.WriteBeginObject;
            TCommandFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
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

class constructor TListCommandInvocationsRequestMarshaller.Create;
begin
  FInstance := TListCommandInvocationsRequestMarshaller.Create;
end;

class function TListCommandInvocationsRequestMarshaller.Instance: IListCommandInvocationsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
