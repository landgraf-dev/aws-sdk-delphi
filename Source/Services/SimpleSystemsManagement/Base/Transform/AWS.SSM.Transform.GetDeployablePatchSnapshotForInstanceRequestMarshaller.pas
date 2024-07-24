unit AWS.SSM.Transform.GetDeployablePatchSnapshotForInstanceRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.BaselineOverrideMarshaller;

type
  IGetDeployablePatchSnapshotForInstanceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDeployablePatchSnapshotForInstanceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDeployablePatchSnapshotForInstanceRequest>, IGetDeployablePatchSnapshotForInstanceRequestMarshaller)
  strict private
    class var FInstance: IGetDeployablePatchSnapshotForInstanceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDeployablePatchSnapshotForInstanceRequest): IRequest; overload;
    class function Instance: IGetDeployablePatchSnapshotForInstanceRequestMarshaller; static;
  end;
  
implementation

{ TGetDeployablePatchSnapshotForInstanceRequestMarshaller }

function TGetDeployablePatchSnapshotForInstanceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDeployablePatchSnapshotForInstanceRequest(AInput));
end;

function TGetDeployablePatchSnapshotForInstanceRequestMarshaller.Marshall(PublicRequest: TGetDeployablePatchSnapshotForInstanceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetDeployablePatchSnapshotForInstance');
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
        if PublicRequest.IsSetBaselineOverride then
        begin
          Context.Writer.WriteName('BaselineOverride');
          Context.Writer.WriteBeginObject;
          TBaselineOverrideMarshaller.Instance.Marshall(PublicRequest.BaselineOverride, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetInstanceId then
        begin
          Context.Writer.WriteName('InstanceId');
          Context.Writer.WriteString(PublicRequest.InstanceId);
        end;
        if PublicRequest.IsSetSnapshotId then
        begin
          Context.Writer.WriteName('SnapshotId');
          Context.Writer.WriteString(PublicRequest.SnapshotId);
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

class constructor TGetDeployablePatchSnapshotForInstanceRequestMarshaller.Create;
begin
  FInstance := TGetDeployablePatchSnapshotForInstanceRequestMarshaller.Create;
end;

class function TGetDeployablePatchSnapshotForInstanceRequestMarshaller.Instance: IGetDeployablePatchSnapshotForInstanceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
