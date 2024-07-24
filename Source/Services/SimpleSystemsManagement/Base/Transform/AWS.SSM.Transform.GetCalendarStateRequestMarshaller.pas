unit AWS.SSM.Transform.GetCalendarStateRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetCalendarStateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetCalendarStateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetCalendarStateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetCalendarStateRequest>, IGetCalendarStateRequestMarshaller)
  strict private
    class var FInstance: IGetCalendarStateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetCalendarStateRequest): IRequest; overload;
    class function Instance: IGetCalendarStateRequestMarshaller; static;
  end;
  
implementation

{ TGetCalendarStateRequestMarshaller }

function TGetCalendarStateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetCalendarStateRequest(AInput));
end;

function TGetCalendarStateRequestMarshaller.Marshall(PublicRequest: TGetCalendarStateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetCalendarState');
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
        if PublicRequest.IsSetAtTime then
        begin
          Context.Writer.WriteName('AtTime');
          Context.Writer.WriteString(PublicRequest.AtTime);
        end;
        if PublicRequest.IsSetCalendarNames then
        begin
          Context.Writer.WriteName('CalendarNames');
          Context.Writer.WriteBeginArray;
          for var PublicRequestCalendarNamesListValue in PublicRequest.CalendarNames do
            Context.Writer.WriteString(PublicRequestCalendarNamesListValue);
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

class constructor TGetCalendarStateRequestMarshaller.Create;
begin
  FInstance := TGetCalendarStateRequestMarshaller.Create;
end;

class function TGetCalendarStateRequestMarshaller.Instance: IGetCalendarStateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
