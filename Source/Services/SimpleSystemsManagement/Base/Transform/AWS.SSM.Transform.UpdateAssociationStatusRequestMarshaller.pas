unit AWS.SSM.Transform.UpdateAssociationStatusRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateAssociationStatusRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.AssociationStatusMarshaller;

type
  IUpdateAssociationStatusRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateAssociationStatusRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateAssociationStatusRequest>, IUpdateAssociationStatusRequestMarshaller)
  strict private
    class var FInstance: IUpdateAssociationStatusRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateAssociationStatusRequest): IRequest; overload;
    class function Instance: IUpdateAssociationStatusRequestMarshaller; static;
  end;
  
implementation

{ TUpdateAssociationStatusRequestMarshaller }

function TUpdateAssociationStatusRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateAssociationStatusRequest(AInput));
end;

function TUpdateAssociationStatusRequestMarshaller.Marshall(PublicRequest: TUpdateAssociationStatusRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateAssociationStatus');
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
        if PublicRequest.IsSetAssociationStatus then
        begin
          Context.Writer.WriteName('AssociationStatus');
          Context.Writer.WriteBeginObject;
          TAssociationStatusMarshaller.Instance.Marshall(PublicRequest.AssociationStatus, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetInstanceId then
        begin
          Context.Writer.WriteName('InstanceId');
          Context.Writer.WriteString(PublicRequest.InstanceId);
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
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

class constructor TUpdateAssociationStatusRequestMarshaller.Create;
begin
  FInstance := TUpdateAssociationStatusRequestMarshaller.Create;
end;

class function TUpdateAssociationStatusRequestMarshaller.Instance: IUpdateAssociationStatusRequestMarshaller;
begin
  Result := FInstance;
end;

end.
