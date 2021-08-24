unit AWS.SESv2.Transform.CreateDedicatedIpPoolRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateDedicatedIpPoolRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Transform.TagMarshaller;

type
  ICreateDedicatedIpPoolRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateDedicatedIpPoolRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateDedicatedIpPoolRequest>, ICreateDedicatedIpPoolRequestMarshaller)
  strict private
    class var FInstance: ICreateDedicatedIpPoolRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateDedicatedIpPoolRequest): IRequest; overload;
    class function Instance: ICreateDedicatedIpPoolRequestMarshaller; static;
  end;
  
implementation

{ TCreateDedicatedIpPoolRequestMarshaller }

function TCreateDedicatedIpPoolRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateDedicatedIpPoolRequest(AInput));
end;

function TCreateDedicatedIpPoolRequestMarshaller.Marshall(PublicRequest: TCreateDedicatedIpPoolRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/dedicated-ip-pools';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetPoolName then
        begin
          Context.Writer.WriteName('PoolName');
          Context.Writer.WriteString(PublicRequest.PoolName);
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

class constructor TCreateDedicatedIpPoolRequestMarshaller.Create;
begin
  FInstance := TCreateDedicatedIpPoolRequestMarshaller.Create;
end;

class function TCreateDedicatedIpPoolRequestMarshaller.Instance: ICreateDedicatedIpPoolRequestMarshaller;
begin
  Result := FInstance;
end;

end.
