unit AWS.SSM.Transform.GetParametersByPathRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetParametersByPathRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.ParameterStringFilterMarshaller;

type
  IGetParametersByPathRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetParametersByPathRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetParametersByPathRequest>, IGetParametersByPathRequestMarshaller)
  strict private
    class var FInstance: IGetParametersByPathRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetParametersByPathRequest): IRequest; overload;
    class function Instance: IGetParametersByPathRequestMarshaller; static;
  end;
  
implementation

{ TGetParametersByPathRequestMarshaller }

function TGetParametersByPathRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetParametersByPathRequest(AInput));
end;

function TGetParametersByPathRequestMarshaller.Marshall(PublicRequest: TGetParametersByPathRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetParametersByPath');
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
        if PublicRequest.IsSetParameterFilters then
        begin
          Context.Writer.WriteName('ParameterFilters');
          Context.Writer.WriteBeginArray;
          for var PublicRequestParameterFiltersListValue in PublicRequest.ParameterFilters do
          begin
            Context.Writer.WriteBeginObject;
            TParameterStringFilterMarshaller.Instance.Marshall(PublicRequestParameterFiltersListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetPath then
        begin
          Context.Writer.WriteName('Path');
          Context.Writer.WriteString(PublicRequest.Path);
        end;
        if PublicRequest.IsSetRecursive then
        begin
          Context.Writer.WriteName('Recursive');
          Context.Writer.WriteBoolean(PublicRequest.Recursive);
        end;
        if PublicRequest.IsSetWithDecryption then
        begin
          Context.Writer.WriteName('WithDecryption');
          Context.Writer.WriteBoolean(PublicRequest.WithDecryption);
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

class constructor TGetParametersByPathRequestMarshaller.Create;
begin
  FInstance := TGetParametersByPathRequestMarshaller.Create;
end;

class function TGetParametersByPathRequestMarshaller.Instance: IGetParametersByPathRequestMarshaller;
begin
  Result := FInstance;
end;

end.
