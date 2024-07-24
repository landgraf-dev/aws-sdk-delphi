unit AWS.SSM.Transform.CreateActivationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  System.DateUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CreateActivationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.RegistrationMetadataItemMarshaller, 
  AWS.SSM.Transform.TagMarshaller;

type
  ICreateActivationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateActivationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateActivationRequest>, ICreateActivationRequestMarshaller)
  strict private
    class var FInstance: ICreateActivationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateActivationRequest): IRequest; overload;
    class function Instance: ICreateActivationRequestMarshaller; static;
  end;
  
implementation

{ TCreateActivationRequestMarshaller }

function TCreateActivationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateActivationRequest(AInput));
end;

function TCreateActivationRequestMarshaller.Marshall(PublicRequest: TCreateActivationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CreateActivation');
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
        if PublicRequest.IsSetDefaultInstanceName then
        begin
          Context.Writer.WriteName('DefaultInstanceName');
          Context.Writer.WriteString(PublicRequest.DefaultInstanceName);
        end;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetExpirationDate then
        begin
          Context.Writer.WriteName('ExpirationDate');
          Context.Writer.WriteInteger(DateTimeToUnix(PublicRequest.ExpirationDate, False));
        end;
        if PublicRequest.IsSetIamRole then
        begin
          Context.Writer.WriteName('IamRole');
          Context.Writer.WriteString(PublicRequest.IamRole);
        end;
        if PublicRequest.IsSetRegistrationLimit then
        begin
          Context.Writer.WriteName('RegistrationLimit');
          Context.Writer.WriteInteger(PublicRequest.RegistrationLimit);
        end;
        if PublicRequest.IsSetRegistrationMetadata then
        begin
          Context.Writer.WriteName('RegistrationMetadata');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRegistrationMetadataListValue in PublicRequest.RegistrationMetadata do
          begin
            Context.Writer.WriteBeginObject;
            TRegistrationMetadataItemMarshaller.Instance.Marshall(PublicRequestRegistrationMetadataListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TCreateActivationRequestMarshaller.Create;
begin
  FInstance := TCreateActivationRequestMarshaller.Create;
end;

class function TCreateActivationRequestMarshaller.Instance: ICreateActivationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
