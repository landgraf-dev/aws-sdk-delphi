unit AWS.SSM.Transform.CreatePatchBaselineRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CreatePatchBaselineRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SSM.Transform.PatchRuleGroupMarshaller, 
  AWS.SSM.Transform.PatchFilterGroupMarshaller, 
  AWS.SSM.Transform.PatchSourceMarshaller, 
  AWS.SSM.Transform.TagMarshaller;

type
  ICreatePatchBaselineRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreatePatchBaselineRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreatePatchBaselineRequest>, ICreatePatchBaselineRequestMarshaller)
  strict private
    class var FInstance: ICreatePatchBaselineRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreatePatchBaselineRequest): IRequest; overload;
    class function Instance: ICreatePatchBaselineRequestMarshaller; static;
  end;
  
implementation

{ TCreatePatchBaselineRequestMarshaller }

function TCreatePatchBaselineRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreatePatchBaselineRequest(AInput));
end;

function TCreatePatchBaselineRequestMarshaller.Marshall(PublicRequest: TCreatePatchBaselineRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.CreatePatchBaseline');
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
        if PublicRequest.IsSetApprovalRules then
        begin
          Context.Writer.WriteName('ApprovalRules');
          Context.Writer.WriteBeginObject;
          TPatchRuleGroupMarshaller.Instance.Marshall(PublicRequest.ApprovalRules, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetApprovedPatches then
        begin
          Context.Writer.WriteName('ApprovedPatches');
          Context.Writer.WriteBeginArray;
          for var PublicRequestApprovedPatchesListValue in PublicRequest.ApprovedPatches do
            Context.Writer.WriteString(PublicRequestApprovedPatchesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetApprovedPatchesComplianceLevel then
        begin
          Context.Writer.WriteName('ApprovedPatchesComplianceLevel');
          Context.Writer.WriteString(PublicRequest.ApprovedPatchesComplianceLevel.Value);
        end;
        if PublicRequest.IsSetApprovedPatchesEnableNonSecurity then
        begin
          Context.Writer.WriteName('ApprovedPatchesEnableNonSecurity');
          Context.Writer.WriteBoolean(PublicRequest.ApprovedPatchesEnableNonSecurity);
        end;
        if PublicRequest.IsSetClientToken then
        begin
          Context.Writer.WriteName('ClientToken');
          Context.Writer.WriteString(PublicRequest.ClientToken);
        end
        else
          if not PublicRequest.IsSetClientToken then
          begin
            Context.Writer.WriteName('ClientToken');
            Context.Writer.WriteString(Copy(TGuid.NewGuid.ToString, 2, 36));
          end;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetGlobalFilters then
        begin
          Context.Writer.WriteName('GlobalFilters');
          Context.Writer.WriteBeginObject;
          TPatchFilterGroupMarshaller.Instance.Marshall(PublicRequest.GlobalFilters, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
        end;
        if PublicRequest.IsSetOperatingSystem then
        begin
          Context.Writer.WriteName('OperatingSystem');
          Context.Writer.WriteString(PublicRequest.OperatingSystem.Value);
        end;
        if PublicRequest.IsSetRejectedPatches then
        begin
          Context.Writer.WriteName('RejectedPatches');
          Context.Writer.WriteBeginArray;
          for var PublicRequestRejectedPatchesListValue in PublicRequest.RejectedPatches do
            Context.Writer.WriteString(PublicRequestRejectedPatchesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetRejectedPatchesAction then
        begin
          Context.Writer.WriteName('RejectedPatchesAction');
          Context.Writer.WriteString(PublicRequest.RejectedPatchesAction.Value);
        end;
        if PublicRequest.IsSetSources then
        begin
          Context.Writer.WriteName('Sources');
          Context.Writer.WriteBeginArray;
          for var PublicRequestSourcesListValue in PublicRequest.Sources do
          begin
            Context.Writer.WriteBeginObject;
            TPatchSourceMarshaller.Instance.Marshall(PublicRequestSourcesListValue, Context);
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

class constructor TCreatePatchBaselineRequestMarshaller.Create;
begin
  FInstance := TCreatePatchBaselineRequestMarshaller.Create;
end;

class function TCreatePatchBaselineRequestMarshaller.Instance: ICreatePatchBaselineRequestMarshaller;
begin
  Result := FInstance;
end;

end.
