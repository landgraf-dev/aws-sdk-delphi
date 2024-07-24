unit AWS.SSM.Transform.PutParameterRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.PutParameterRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.TagMarshaller;

type
  IPutParameterRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutParameterRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutParameterRequest>, IPutParameterRequestMarshaller)
  strict private
    class var FInstance: IPutParameterRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutParameterRequest): IRequest; overload;
    class function Instance: IPutParameterRequestMarshaller; static;
  end;
  
implementation

{ TPutParameterRequestMarshaller }

function TPutParameterRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutParameterRequest(AInput));
end;

function TPutParameterRequestMarshaller.Marshall(PublicRequest: TPutParameterRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.PutParameter');
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
        if PublicRequest.IsSetAllowedPattern then
        begin
          Context.Writer.WriteName('AllowedPattern');
          Context.Writer.WriteString(PublicRequest.AllowedPattern);
        end;
        if PublicRequest.IsSetDataType then
        begin
          Context.Writer.WriteName('DataType');
          Context.Writer.WriteString(PublicRequest.DataType);
        end;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetKeyId then
        begin
          Context.Writer.WriteName('KeyId');
          Context.Writer.WriteString(PublicRequest.KeyId);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetOverwrite then
        begin
          Context.Writer.WriteName('Overwrite');
          Context.Writer.WriteBoolean(PublicRequest.Overwrite);
        end;
        if PublicRequest.IsSetPolicies then
        begin
          Context.Writer.WriteName('Policies');
          Context.Writer.WriteString(PublicRequest.Policies);
        end;
        if PublicRequest.IsSetTags then
        begin
          Context.Writer.WriteName('Tags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagsListValue in PublicRequest.Tags do
          begin
            Context.Writer.WriteBeginObject;
            TTagMarshaller.Instance.Marshall(PublicRequestTagsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetTier then
        begin
          Context.Writer.WriteName('Tier');
          Context.Writer.WriteString(PublicRequest.Tier.Value);
        end;
        if PublicRequest.IsSetType then
        begin
          Context.Writer.WriteName('Type');
          Context.Writer.WriteString(PublicRequest.&Type.Value);
        end;
        if PublicRequest.IsSetValue then
        begin
          Context.Writer.WriteName('Value');
          Context.Writer.WriteString(PublicRequest.Value);
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

class constructor TPutParameterRequestMarshaller.Create;
begin
  FInstance := TPutParameterRequestMarshaller.Create;
end;

class function TPutParameterRequestMarshaller.Instance: IPutParameterRequestMarshaller;
begin
  Result := FInstance;
end;

end.
