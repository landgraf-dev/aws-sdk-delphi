unit AWS.SSM.Transform.DescribeInstanceInformationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribeInstanceInformationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.InstanceInformationStringFilterMarshaller, 
  AWS.SSM.Transform.InstanceInformationFilterMarshaller;

type
  IDescribeInstanceInformationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribeInstanceInformationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribeInstanceInformationRequest>, IDescribeInstanceInformationRequestMarshaller)
  strict private
    class var FInstance: IDescribeInstanceInformationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribeInstanceInformationRequest): IRequest; overload;
    class function Instance: IDescribeInstanceInformationRequestMarshaller; static;
  end;
  
implementation

{ TDescribeInstanceInformationRequestMarshaller }

function TDescribeInstanceInformationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribeInstanceInformationRequest(AInput));
end;

function TDescribeInstanceInformationRequestMarshaller.Marshall(PublicRequest: TDescribeInstanceInformationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribeInstanceInformation');
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
        if PublicRequest.IsSetFilters then
        begin
          Context.Writer.WriteName('Filters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestFiltersListValue in PublicRequest.Filters do
          begin
            Context.Writer.WriteBeginObject;
            TInstanceInformationStringFilterMarshaller.Instance.Marshall(PublicRequestFiltersListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetInstanceInformationFilterList then
        begin
          Context.Writer.WriteName('InstanceInformationFilterList');
          Context.Writer.WriteBeginArray;
          for var PublicRequestInstanceInformationFilterListListValue in PublicRequest.InstanceInformationFilterList do
          begin
            Context.Writer.WriteBeginObject;
            TInstanceInformationFilterMarshaller.Instance.Marshall(PublicRequestInstanceInformationFilterListListValue, Context);
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

class constructor TDescribeInstanceInformationRequestMarshaller.Create;
begin
  FInstance := TDescribeInstanceInformationRequestMarshaller.Create;
end;

class function TDescribeInstanceInformationRequestMarshaller.Instance: IDescribeInstanceInformationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
