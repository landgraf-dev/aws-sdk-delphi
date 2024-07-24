unit AWS.SSM.Transform.DescribePatchPropertiesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribePatchPropertiesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribePatchPropertiesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribePatchPropertiesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribePatchPropertiesRequest>, IDescribePatchPropertiesRequestMarshaller)
  strict private
    class var FInstance: IDescribePatchPropertiesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribePatchPropertiesRequest): IRequest; overload;
    class function Instance: IDescribePatchPropertiesRequestMarshaller; static;
  end;
  
implementation

{ TDescribePatchPropertiesRequestMarshaller }

function TDescribePatchPropertiesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribePatchPropertiesRequest(AInput));
end;

function TDescribePatchPropertiesRequestMarshaller.Marshall(PublicRequest: TDescribePatchPropertiesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribePatchProperties');
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
        if PublicRequest.IsSetOperatingSystem then
        begin
          Context.Writer.WriteName('OperatingSystem');
          Context.Writer.WriteString(PublicRequest.OperatingSystem.Value);
        end;
        if PublicRequest.IsSetPatchSet then
        begin
          Context.Writer.WriteName('PatchSet');
          Context.Writer.WriteString(PublicRequest.PatchSet.Value);
        end;
        if PublicRequest.IsSetProperty then
        begin
          Context.Writer.WriteName('Property');
          Context.Writer.WriteString(PublicRequest.&Property.Value);
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

class constructor TDescribePatchPropertiesRequestMarshaller.Create;
begin
  FInstance := TDescribePatchPropertiesRequestMarshaller.Create;
end;

class function TDescribePatchPropertiesRequestMarshaller.Instance: IDescribePatchPropertiesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
