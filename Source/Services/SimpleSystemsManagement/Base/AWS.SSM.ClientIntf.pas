unit AWS.SSM.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.SSM.Model.AddTagsToResourceResponse, 
  AWS.SSM.Model.AddTagsToResourceRequest, 
  AWS.SSM.Model.AssociateOpsItemRelatedItemResponse, 
  AWS.SSM.Model.AssociateOpsItemRelatedItemRequest, 
  AWS.SSM.Model.CancelCommandResponse, 
  AWS.SSM.Model.CancelCommandRequest, 
  System.Generics.Collections, 
  AWS.SSM.Model.CancelMaintenanceWindowExecutionResponse, 
  AWS.SSM.Model.CancelMaintenanceWindowExecutionRequest, 
  AWS.SSM.Model.CreateActivationResponse, 
  AWS.SSM.Model.CreateActivationRequest, 
  AWS.SSM.Model.CreateAssociationResponse, 
  AWS.SSM.Model.CreateAssociationRequest, 
  AWS.SSM.Model.CreateAssociationBatchResponse, 
  AWS.SSM.Model.CreateAssociationBatchRequest, 
  AWS.SSM.Model.CreateDocumentResponse, 
  AWS.SSM.Model.CreateDocumentRequest, 
  AWS.SSM.Model.CreateMaintenanceWindowResponse, 
  AWS.SSM.Model.CreateMaintenanceWindowRequest, 
  AWS.SSM.Model.CreateOpsItemResponse, 
  AWS.SSM.Model.CreateOpsItemRequest, 
  AWS.SSM.Model.CreateOpsMetadataResponse, 
  AWS.SSM.Model.CreateOpsMetadataRequest, 
  AWS.SSM.Model.CreatePatchBaselineResponse, 
  AWS.SSM.Model.CreatePatchBaselineRequest, 
  AWS.SSM.Model.CreateResourceDataSyncResponse, 
  AWS.SSM.Model.CreateResourceDataSyncRequest, 
  AWS.SSM.Model.DeleteActivationResponse, 
  AWS.SSM.Model.DeleteActivationRequest, 
  AWS.SSM.Model.DeleteAssociationResponse, 
  AWS.SSM.Model.DeleteAssociationRequest, 
  AWS.SSM.Model.DeleteDocumentResponse, 
  AWS.SSM.Model.DeleteDocumentRequest, 
  AWS.SSM.Model.DeleteInventoryResponse, 
  AWS.SSM.Model.DeleteInventoryRequest, 
  AWS.SSM.Model.DeleteMaintenanceWindowResponse, 
  AWS.SSM.Model.DeleteMaintenanceWindowRequest, 
  AWS.SSM.Model.DeleteOpsMetadataResponse, 
  AWS.SSM.Model.DeleteOpsMetadataRequest, 
  AWS.SSM.Model.DeleteParameterResponse, 
  AWS.SSM.Model.DeleteParameterRequest, 
  AWS.SSM.Model.DeleteParametersResponse, 
  AWS.SSM.Model.DeleteParametersRequest, 
  AWS.SSM.Model.DeletePatchBaselineResponse, 
  AWS.SSM.Model.DeletePatchBaselineRequest, 
  AWS.SSM.Model.DeleteResourceDataSyncResponse, 
  AWS.SSM.Model.DeleteResourceDataSyncRequest, 
  AWS.SSM.Model.DeregisterManagedInstanceResponse, 
  AWS.SSM.Model.DeregisterManagedInstanceRequest, 
  AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowResponse, 
  AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowRequest, 
  AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowResponse, 
  AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowRequest, 
  AWS.SSM.Model.DescribeActivationsResponse, 
  AWS.SSM.Model.DescribeActivationsRequest, 
  AWS.SSM.Model.DescribeAssociationResponse, 
  AWS.SSM.Model.DescribeAssociationRequest, 
  AWS.SSM.Model.DescribeAssociationExecutionTargetsResponse, 
  AWS.SSM.Model.DescribeAssociationExecutionTargetsRequest, 
  AWS.SSM.Model.DescribeAssociationExecutionsResponse, 
  AWS.SSM.Model.DescribeAssociationExecutionsRequest, 
  AWS.SSM.Model.DescribeAutomationExecutionsResponse, 
  AWS.SSM.Model.DescribeAutomationExecutionsRequest, 
  AWS.SSM.Model.DescribeAutomationStepExecutionsResponse, 
  AWS.SSM.Model.DescribeAutomationStepExecutionsRequest, 
  AWS.SSM.Model.DescribeAvailablePatchesResponse, 
  AWS.SSM.Model.DescribeAvailablePatchesRequest, 
  AWS.SSM.Model.DescribeDocumentResponse, 
  AWS.SSM.Model.DescribeDocumentRequest, 
  AWS.SSM.Model.DescribeDocumentPermissionResponse, 
  AWS.SSM.Model.DescribeDocumentPermissionRequest, 
  AWS.SSM.Model.DescribeEffectiveInstanceAssociationsResponse, 
  AWS.SSM.Model.DescribeEffectiveInstanceAssociationsRequest, 
  AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineResponse, 
  AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineRequest, 
  AWS.SSM.Model.DescribeInstanceAssociationsStatusResponse, 
  AWS.SSM.Model.DescribeInstanceAssociationsStatusRequest, 
  AWS.SSM.Model.DescribeInstanceInformationResponse, 
  AWS.SSM.Model.DescribeInstanceInformationRequest, 
  AWS.SSM.Model.DescribeInstancePatchStatesResponse, 
  AWS.SSM.Model.DescribeInstancePatchStatesRequest, 
  AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupResponse, 
  AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupRequest, 
  AWS.SSM.Model.DescribeInstancePatchesResponse, 
  AWS.SSM.Model.DescribeInstancePatchesRequest, 
  AWS.SSM.Model.DescribeInventoryDeletionsResponse, 
  AWS.SSM.Model.DescribeInventoryDeletionsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowScheduleResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowScheduleRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowTargetsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowTargetsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowTasksResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowTasksRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowsForTargetResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowsForTargetRequest, 
  AWS.SSM.Model.DescribeOpsItemsResponse, 
  AWS.SSM.Model.DescribeOpsItemsRequest, 
  AWS.SSM.Model.DescribeParametersResponse, 
  AWS.SSM.Model.DescribeParametersRequest, 
  AWS.SSM.Model.DescribePatchBaselinesResponse, 
  AWS.SSM.Model.DescribePatchBaselinesRequest, 
  AWS.SSM.Model.DescribePatchGroupStateResponse, 
  AWS.SSM.Model.DescribePatchGroupStateRequest, 
  AWS.SSM.Model.DescribePatchGroupsResponse, 
  AWS.SSM.Model.DescribePatchGroupsRequest, 
  AWS.SSM.Model.DescribePatchPropertiesResponse, 
  AWS.SSM.Model.DescribePatchPropertiesRequest, 
  AWS.SSM.Model.DescribeSessionsResponse, 
  AWS.SSM.Model.DescribeSessionsRequest, 
  AWS.SSM.Model.DisassociateOpsItemRelatedItemResponse, 
  AWS.SSM.Model.DisassociateOpsItemRelatedItemRequest, 
  AWS.SSM.Model.GetAutomationExecutionResponse, 
  AWS.SSM.Model.GetAutomationExecutionRequest, 
  AWS.SSM.Model.GetCalendarStateResponse, 
  AWS.SSM.Model.GetCalendarStateRequest, 
  AWS.SSM.Model.GetCommandInvocationResponse, 
  AWS.SSM.Model.GetCommandInvocationRequest, 
  AWS.SSM.Model.GetConnectionStatusResponse, 
  AWS.SSM.Model.GetConnectionStatusRequest, 
  AWS.SSM.Model.GetDefaultPatchBaselineResponse, 
  AWS.SSM.Model.GetDefaultPatchBaselineRequest, 
  AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceResponse, 
  AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceRequest, 
  AWS.SSM.Model.GetDocumentResponse, 
  AWS.SSM.Model.GetDocumentRequest, 
  AWS.SSM.Model.GetInventoryResponse, 
  AWS.SSM.Model.GetInventoryRequest, 
  AWS.SSM.Model.GetInventorySchemaResponse, 
  AWS.SSM.Model.GetInventorySchemaRequest, 
  AWS.SSM.Model.GetMaintenanceWindowResponse, 
  AWS.SSM.Model.GetMaintenanceWindowRequest, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionRequest, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskRequest, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationRequest, 
  AWS.SSM.Model.GetMaintenanceWindowTaskResponse, 
  AWS.SSM.Model.GetMaintenanceWindowTaskRequest, 
  AWS.SSM.Model.GetOpsItemResponse, 
  AWS.SSM.Model.GetOpsItemRequest, 
  AWS.SSM.Model.GetOpsMetadataResponse, 
  AWS.SSM.Model.GetOpsMetadataRequest, 
  AWS.SSM.Model.GetOpsSummaryResponse, 
  AWS.SSM.Model.GetOpsSummaryRequest, 
  AWS.SSM.Model.GetParameterResponse, 
  AWS.SSM.Model.GetParameterRequest, 
  AWS.SSM.Model.GetParameterHistoryResponse, 
  AWS.SSM.Model.GetParameterHistoryRequest, 
  AWS.SSM.Model.GetParametersResponse, 
  AWS.SSM.Model.GetParametersRequest, 
  AWS.SSM.Model.GetParametersByPathResponse, 
  AWS.SSM.Model.GetParametersByPathRequest, 
  AWS.SSM.Model.GetPatchBaselineResponse, 
  AWS.SSM.Model.GetPatchBaselineRequest, 
  AWS.SSM.Model.GetPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.GetPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Model.GetServiceSettingResponse, 
  AWS.SSM.Model.GetServiceSettingRequest, 
  AWS.SSM.Model.LabelParameterVersionResponse, 
  AWS.SSM.Model.LabelParameterVersionRequest, 
  AWS.SSM.Model.ListAssociationVersionsResponse, 
  AWS.SSM.Model.ListAssociationVersionsRequest, 
  AWS.SSM.Model.ListAssociationsResponse, 
  AWS.SSM.Model.ListAssociationsRequest, 
  AWS.SSM.Model.ListCommandInvocationsResponse, 
  AWS.SSM.Model.ListCommandInvocationsRequest, 
  AWS.SSM.Model.ListCommandsResponse, 
  AWS.SSM.Model.ListCommandsRequest, 
  AWS.SSM.Model.ListComplianceItemsResponse, 
  AWS.SSM.Model.ListComplianceItemsRequest, 
  AWS.SSM.Model.ListComplianceSummariesResponse, 
  AWS.SSM.Model.ListComplianceSummariesRequest, 
  AWS.SSM.Model.ListDocumentMetadataHistoryResponse, 
  AWS.SSM.Model.ListDocumentMetadataHistoryRequest, 
  AWS.SSM.Model.ListDocumentVersionsResponse, 
  AWS.SSM.Model.ListDocumentVersionsRequest, 
  AWS.SSM.Model.ListDocumentsResponse, 
  AWS.SSM.Model.ListDocumentsRequest, 
  AWS.SSM.Model.ListInventoryEntriesResponse, 
  AWS.SSM.Model.ListInventoryEntriesRequest, 
  AWS.SSM.Model.ListOpsItemEventsResponse, 
  AWS.SSM.Model.ListOpsItemEventsRequest, 
  AWS.SSM.Model.ListOpsItemRelatedItemsResponse, 
  AWS.SSM.Model.ListOpsItemRelatedItemsRequest, 
  AWS.SSM.Model.ListOpsMetadataResponse, 
  AWS.SSM.Model.ListOpsMetadataRequest, 
  AWS.SSM.Model.ListResourceComplianceSummariesResponse, 
  AWS.SSM.Model.ListResourceComplianceSummariesRequest, 
  AWS.SSM.Model.ListResourceDataSyncResponse, 
  AWS.SSM.Model.ListResourceDataSyncRequest, 
  AWS.SSM.Model.ListTagsForResourceResponse, 
  AWS.SSM.Model.ListTagsForResourceRequest, 
  AWS.SSM.Model.ModifyDocumentPermissionResponse, 
  AWS.SSM.Model.ModifyDocumentPermissionRequest, 
  AWS.SSM.Model.PutComplianceItemsResponse, 
  AWS.SSM.Model.PutComplianceItemsRequest, 
  AWS.SSM.Model.PutInventoryResponse, 
  AWS.SSM.Model.PutInventoryRequest, 
  AWS.SSM.Model.PutParameterResponse, 
  AWS.SSM.Model.PutParameterRequest, 
  AWS.SSM.Model.RegisterDefaultPatchBaselineResponse, 
  AWS.SSM.Model.RegisterDefaultPatchBaselineRequest, 
  AWS.SSM.Model.RegisterPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.RegisterPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Model.RegisterTargetWithMaintenanceWindowResponse, 
  AWS.SSM.Model.RegisterTargetWithMaintenanceWindowRequest, 
  AWS.SSM.Model.RegisterTaskWithMaintenanceWindowResponse, 
  AWS.SSM.Model.RegisterTaskWithMaintenanceWindowRequest, 
  AWS.SSM.Model.RemoveTagsFromResourceResponse, 
  AWS.SSM.Model.RemoveTagsFromResourceRequest, 
  AWS.SSM.Model.ResetServiceSettingResponse, 
  AWS.SSM.Model.ResetServiceSettingRequest, 
  AWS.SSM.Model.ResumeSessionResponse, 
  AWS.SSM.Model.ResumeSessionRequest, 
  AWS.SSM.Model.SendAutomationSignalResponse, 
  AWS.SSM.Model.SendAutomationSignalRequest, 
  AWS.SSM.Model.SendCommandResponse, 
  AWS.SSM.Model.SendCommandRequest, 
  AWS.SSM.Model.StartAssociationsOnceResponse, 
  AWS.SSM.Model.StartAssociationsOnceRequest, 
  AWS.SSM.Model.StartAutomationExecutionResponse, 
  AWS.SSM.Model.StartAutomationExecutionRequest, 
  AWS.SSM.Model.StartChangeRequestExecutionResponse, 
  AWS.SSM.Model.StartChangeRequestExecutionRequest, 
  AWS.SSM.Model.StartSessionResponse, 
  AWS.SSM.Model.StartSessionRequest, 
  AWS.SSM.Model.StopAutomationExecutionResponse, 
  AWS.SSM.Model.StopAutomationExecutionRequest, 
  AWS.SSM.Model.TerminateSessionResponse, 
  AWS.SSM.Model.TerminateSessionRequest, 
  AWS.SSM.Model.UnlabelParameterVersionResponse, 
  AWS.SSM.Model.UnlabelParameterVersionRequest, 
  AWS.SSM.Model.UpdateAssociationResponse, 
  AWS.SSM.Model.UpdateAssociationRequest, 
  AWS.SSM.Model.UpdateAssociationStatusResponse, 
  AWS.SSM.Model.UpdateAssociationStatusRequest, 
  AWS.SSM.Model.UpdateDocumentResponse, 
  AWS.SSM.Model.UpdateDocumentRequest, 
  AWS.SSM.Model.UpdateDocumentDefaultVersionResponse, 
  AWS.SSM.Model.UpdateDocumentDefaultVersionRequest, 
  AWS.SSM.Model.UpdateDocumentMetadataResponse, 
  AWS.SSM.Model.UpdateDocumentMetadataRequest, 
  AWS.SSM.Model.UpdateMaintenanceWindowResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowRequest, 
  AWS.SSM.Model.UpdateMaintenanceWindowTargetResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowTargetRequest, 
  AWS.SSM.Model.UpdateMaintenanceWindowTaskResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowTaskRequest, 
  AWS.SSM.Model.UpdateManagedInstanceRoleResponse, 
  AWS.SSM.Model.UpdateManagedInstanceRoleRequest, 
  AWS.SSM.Model.UpdateOpsItemResponse, 
  AWS.SSM.Model.UpdateOpsItemRequest, 
  AWS.SSM.Model.UpdateOpsMetadataResponse, 
  AWS.SSM.Model.UpdateOpsMetadataRequest, 
  AWS.SSM.Model.UpdatePatchBaselineResponse, 
  AWS.SSM.Model.UpdatePatchBaselineRequest, 
  AWS.SSM.Model.UpdateResourceDataSyncResponse, 
  AWS.SSM.Model.UpdateResourceDataSyncRequest, 
  AWS.SSM.Model.UpdateServiceSettingResponse, 
  AWS.SSM.Model.UpdateServiceSettingRequest;

type
  IAmazonSimpleSystemsManagement = interface(IAmazonService)
    ['{225771FE-17E5-44C9-9E37-E65B58FE3B75}']
    function AddTagsToResource(Request: IAddTagsToResourceRequest): IAddTagsToResourceResponse; overload;
    function AssociateOpsItemRelatedItem(Request: IAssociateOpsItemRelatedItemRequest): IAssociateOpsItemRelatedItemResponse; overload;
    function CancelCommand(const ACommandId: string): ICancelCommandResponse; overload;
    function CancelCommand(const ACommandId: string; const AInstanceIds: TList<string>): ICancelCommandResponse; overload;
    function CancelCommand(Request: ICancelCommandRequest): ICancelCommandResponse; overload;
    function CancelMaintenanceWindowExecution(Request: ICancelMaintenanceWindowExecutionRequest): ICancelMaintenanceWindowExecutionResponse; overload;
    function CreateActivation(Request: ICreateActivationRequest): ICreateActivationResponse; overload;
    function CreateAssociation(const AInstanceId: string; const AName: string): ICreateAssociationResponse; overload;
    function CreateAssociation(Request: ICreateAssociationRequest): ICreateAssociationResponse; overload;
    function CreateAssociationBatch(Request: ICreateAssociationBatchRequest): ICreateAssociationBatchResponse; overload;
    function CreateDocument(const AContent: string; const AName: string): ICreateDocumentResponse; overload;
    function CreateDocument(Request: ICreateDocumentRequest): ICreateDocumentResponse; overload;
    function CreateMaintenanceWindow(Request: ICreateMaintenanceWindowRequest): ICreateMaintenanceWindowResponse; overload;
    function CreateOpsItem(Request: ICreateOpsItemRequest): ICreateOpsItemResponse; overload;
    function CreateOpsMetadata(Request: ICreateOpsMetadataRequest): ICreateOpsMetadataResponse; overload;
    function CreatePatchBaseline(Request: ICreatePatchBaselineRequest): ICreatePatchBaselineResponse; overload;
    function CreateResourceDataSync(Request: ICreateResourceDataSyncRequest): ICreateResourceDataSyncResponse; overload;
    function DeleteActivation(Request: IDeleteActivationRequest): IDeleteActivationResponse; overload;
    function DeleteAssociation(const AInstanceId: string; const AName: string): IDeleteAssociationResponse; overload;
    function DeleteAssociation(Request: IDeleteAssociationRequest): IDeleteAssociationResponse; overload;
    function DeleteDocument(const AName: string): IDeleteDocumentResponse; overload;
    function DeleteDocument(Request: IDeleteDocumentRequest): IDeleteDocumentResponse; overload;
    function DeleteInventory(Request: IDeleteInventoryRequest): IDeleteInventoryResponse; overload;
    function DeleteMaintenanceWindow(Request: IDeleteMaintenanceWindowRequest): IDeleteMaintenanceWindowResponse; overload;
    function DeleteOpsMetadata(Request: IDeleteOpsMetadataRequest): IDeleteOpsMetadataResponse; overload;
    function DeleteParameter(Request: IDeleteParameterRequest): IDeleteParameterResponse; overload;
    function DeleteParameters(Request: IDeleteParametersRequest): IDeleteParametersResponse; overload;
    function DeletePatchBaseline(Request: IDeletePatchBaselineRequest): IDeletePatchBaselineResponse; overload;
    function DeleteResourceDataSync(Request: IDeleteResourceDataSyncRequest): IDeleteResourceDataSyncResponse; overload;
    function DeregisterManagedInstance(Request: IDeregisterManagedInstanceRequest): IDeregisterManagedInstanceResponse; overload;
    function DeregisterPatchBaselineForPatchGroup(Request: IDeregisterPatchBaselineForPatchGroupRequest): IDeregisterPatchBaselineForPatchGroupResponse; overload;
    function DeregisterTargetFromMaintenanceWindow(Request: IDeregisterTargetFromMaintenanceWindowRequest): IDeregisterTargetFromMaintenanceWindowResponse; overload;
    function DeregisterTaskFromMaintenanceWindow(Request: IDeregisterTaskFromMaintenanceWindowRequest): IDeregisterTaskFromMaintenanceWindowResponse; overload;
    function DescribeActivations(Request: IDescribeActivationsRequest): IDescribeActivationsResponse; overload;
    function DescribeAssociation(const AInstanceId: string; const AName: string): IDescribeAssociationResponse; overload;
    function DescribeAssociation(Request: IDescribeAssociationRequest): IDescribeAssociationResponse; overload;
    function DescribeAssociationExecutionTargets(Request: IDescribeAssociationExecutionTargetsRequest): IDescribeAssociationExecutionTargetsResponse; overload;
    function DescribeAssociationExecutions(Request: IDescribeAssociationExecutionsRequest): IDescribeAssociationExecutionsResponse; overload;
    function DescribeAutomationExecutions(Request: IDescribeAutomationExecutionsRequest): IDescribeAutomationExecutionsResponse; overload;
    function DescribeAutomationStepExecutions(Request: IDescribeAutomationStepExecutionsRequest): IDescribeAutomationStepExecutionsResponse; overload;
    function DescribeAvailablePatches(Request: IDescribeAvailablePatchesRequest): IDescribeAvailablePatchesResponse; overload;
    function DescribeDocument(const AName: string): IDescribeDocumentResponse; overload;
    function DescribeDocument(Request: IDescribeDocumentRequest): IDescribeDocumentResponse; overload;
    function DescribeDocumentPermission(Request: IDescribeDocumentPermissionRequest): IDescribeDocumentPermissionResponse; overload;
    function DescribeEffectiveInstanceAssociations(Request: IDescribeEffectiveInstanceAssociationsRequest): IDescribeEffectiveInstanceAssociationsResponse; overload;
    function DescribeEffectivePatchesForPatchBaseline(Request: IDescribeEffectivePatchesForPatchBaselineRequest): IDescribeEffectivePatchesForPatchBaselineResponse; overload;
    function DescribeInstanceAssociationsStatus(Request: IDescribeInstanceAssociationsStatusRequest): IDescribeInstanceAssociationsStatusResponse; overload;
    function DescribeInstanceInformation: IDescribeInstanceInformationResponse; overload;
    function DescribeInstanceInformation(Request: IDescribeInstanceInformationRequest): IDescribeInstanceInformationResponse; overload;
    function DescribeInstancePatchStates(Request: IDescribeInstancePatchStatesRequest): IDescribeInstancePatchStatesResponse; overload;
    function DescribeInstancePatchStatesForPatchGroup(Request: IDescribeInstancePatchStatesForPatchGroupRequest): IDescribeInstancePatchStatesForPatchGroupResponse; overload;
    function DescribeInstancePatches(Request: IDescribeInstancePatchesRequest): IDescribeInstancePatchesResponse; overload;
    function DescribeInventoryDeletions(Request: IDescribeInventoryDeletionsRequest): IDescribeInventoryDeletionsResponse; overload;
    function DescribeMaintenanceWindowExecutionTaskInvocations(Request: IDescribeMaintenanceWindowExecutionTaskInvocationsRequest): IDescribeMaintenanceWindowExecutionTaskInvocationsResponse; overload;
    function DescribeMaintenanceWindowExecutionTasks(Request: IDescribeMaintenanceWindowExecutionTasksRequest): IDescribeMaintenanceWindowExecutionTasksResponse; overload;
    function DescribeMaintenanceWindowExecutions(Request: IDescribeMaintenanceWindowExecutionsRequest): IDescribeMaintenanceWindowExecutionsResponse; overload;
    function DescribeMaintenanceWindowSchedule(Request: IDescribeMaintenanceWindowScheduleRequest): IDescribeMaintenanceWindowScheduleResponse; overload;
    function DescribeMaintenanceWindowTargets(Request: IDescribeMaintenanceWindowTargetsRequest): IDescribeMaintenanceWindowTargetsResponse; overload;
    function DescribeMaintenanceWindowTasks(Request: IDescribeMaintenanceWindowTasksRequest): IDescribeMaintenanceWindowTasksResponse; overload;
    function DescribeMaintenanceWindows(Request: IDescribeMaintenanceWindowsRequest): IDescribeMaintenanceWindowsResponse; overload;
    function DescribeMaintenanceWindowsForTarget(Request: IDescribeMaintenanceWindowsForTargetRequest): IDescribeMaintenanceWindowsForTargetResponse; overload;
    function DescribeOpsItems(Request: IDescribeOpsItemsRequest): IDescribeOpsItemsResponse; overload;
    function DescribeParameters(Request: IDescribeParametersRequest): IDescribeParametersResponse; overload;
    function DescribePatchBaselines(Request: IDescribePatchBaselinesRequest): IDescribePatchBaselinesResponse; overload;
    function DescribePatchGroupState(Request: IDescribePatchGroupStateRequest): IDescribePatchGroupStateResponse; overload;
    function DescribePatchGroups(Request: IDescribePatchGroupsRequest): IDescribePatchGroupsResponse; overload;
    function DescribePatchProperties(Request: IDescribePatchPropertiesRequest): IDescribePatchPropertiesResponse; overload;
    function DescribeSessions(Request: IDescribeSessionsRequest): IDescribeSessionsResponse; overload;
    function DisassociateOpsItemRelatedItem(Request: IDisassociateOpsItemRelatedItemRequest): IDisassociateOpsItemRelatedItemResponse; overload;
    function GetAutomationExecution(Request: IGetAutomationExecutionRequest): IGetAutomationExecutionResponse; overload;
    function GetCalendarState(Request: IGetCalendarStateRequest): IGetCalendarStateResponse; overload;
    function GetCommandInvocation(Request: IGetCommandInvocationRequest): IGetCommandInvocationResponse; overload;
    function GetConnectionStatus(Request: IGetConnectionStatusRequest): IGetConnectionStatusResponse; overload;
    function GetDefaultPatchBaseline(Request: IGetDefaultPatchBaselineRequest): IGetDefaultPatchBaselineResponse; overload;
    function GetDeployablePatchSnapshotForInstance(Request: IGetDeployablePatchSnapshotForInstanceRequest): IGetDeployablePatchSnapshotForInstanceResponse; overload;
    function GetDocument(const AName: string): IGetDocumentResponse; overload;
    function GetDocument(Request: IGetDocumentRequest): IGetDocumentResponse; overload;
    function GetInventory(Request: IGetInventoryRequest): IGetInventoryResponse; overload;
    function GetInventorySchema(Request: IGetInventorySchemaRequest): IGetInventorySchemaResponse; overload;
    function GetMaintenanceWindow(Request: IGetMaintenanceWindowRequest): IGetMaintenanceWindowResponse; overload;
    function GetMaintenanceWindowExecution(Request: IGetMaintenanceWindowExecutionRequest): IGetMaintenanceWindowExecutionResponse; overload;
    function GetMaintenanceWindowExecutionTask(Request: IGetMaintenanceWindowExecutionTaskRequest): IGetMaintenanceWindowExecutionTaskResponse; overload;
    function GetMaintenanceWindowExecutionTaskInvocation(Request: IGetMaintenanceWindowExecutionTaskInvocationRequest): IGetMaintenanceWindowExecutionTaskInvocationResponse; overload;
    function GetMaintenanceWindowTask(Request: IGetMaintenanceWindowTaskRequest): IGetMaintenanceWindowTaskResponse; overload;
    function GetOpsItem(Request: IGetOpsItemRequest): IGetOpsItemResponse; overload;
    function GetOpsMetadata(Request: IGetOpsMetadataRequest): IGetOpsMetadataResponse; overload;
    function GetOpsSummary(Request: IGetOpsSummaryRequest): IGetOpsSummaryResponse; overload;
    function GetParameter(Request: IGetParameterRequest): IGetParameterResponse; overload;
    function GetParameterHistory(Request: IGetParameterHistoryRequest): IGetParameterHistoryResponse; overload;
    function GetParameters(Request: IGetParametersRequest): IGetParametersResponse; overload;
    function GetParametersByPath(Request: IGetParametersByPathRequest): IGetParametersByPathResponse; overload;
    function GetPatchBaseline(Request: IGetPatchBaselineRequest): IGetPatchBaselineResponse; overload;
    function GetPatchBaselineForPatchGroup(Request: IGetPatchBaselineForPatchGroupRequest): IGetPatchBaselineForPatchGroupResponse; overload;
    function GetServiceSetting(Request: IGetServiceSettingRequest): IGetServiceSettingResponse; overload;
    function LabelParameterVersion(Request: ILabelParameterVersionRequest): ILabelParameterVersionResponse; overload;
    function ListAssociationVersions(Request: IListAssociationVersionsRequest): IListAssociationVersionsResponse; overload;
    function ListAssociations(Request: IListAssociationsRequest): IListAssociationsResponse; overload;
    function ListCommandInvocations: IListCommandInvocationsResponse; overload;
    function ListCommandInvocations(const ACommandId: string): IListCommandInvocationsResponse; overload;
    function ListCommandInvocations(Request: IListCommandInvocationsRequest): IListCommandInvocationsResponse; overload;
    function ListCommands: IListCommandsResponse; overload;
    function ListCommands(const ACommandId: string): IListCommandsResponse; overload;
    function ListCommands(Request: IListCommandsRequest): IListCommandsResponse; overload;
    function ListComplianceItems(Request: IListComplianceItemsRequest): IListComplianceItemsResponse; overload;
    function ListComplianceSummaries(Request: IListComplianceSummariesRequest): IListComplianceSummariesResponse; overload;
    function ListDocumentMetadataHistory(Request: IListDocumentMetadataHistoryRequest): IListDocumentMetadataHistoryResponse; overload;
    function ListDocumentVersions(Request: IListDocumentVersionsRequest): IListDocumentVersionsResponse; overload;
    function ListDocuments: IListDocumentsResponse; overload;
    function ListDocuments(Request: IListDocumentsRequest): IListDocumentsResponse; overload;
    function ListInventoryEntries(Request: IListInventoryEntriesRequest): IListInventoryEntriesResponse; overload;
    function ListOpsItemEvents(Request: IListOpsItemEventsRequest): IListOpsItemEventsResponse; overload;
    function ListOpsItemRelatedItems(Request: IListOpsItemRelatedItemsRequest): IListOpsItemRelatedItemsResponse; overload;
    function ListOpsMetadata(Request: IListOpsMetadataRequest): IListOpsMetadataResponse; overload;
    function ListResourceComplianceSummaries(Request: IListResourceComplianceSummariesRequest): IListResourceComplianceSummariesResponse; overload;
    function ListResourceDataSync(Request: IListResourceDataSyncRequest): IListResourceDataSyncResponse; overload;
    function ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse; overload;
    function ModifyDocumentPermission(Request: IModifyDocumentPermissionRequest): IModifyDocumentPermissionResponse; overload;
    function PutComplianceItems(Request: IPutComplianceItemsRequest): IPutComplianceItemsResponse; overload;
    function PutInventory(Request: IPutInventoryRequest): IPutInventoryResponse; overload;
    function PutParameter(Request: IPutParameterRequest): IPutParameterResponse; overload;
    function RegisterDefaultPatchBaseline(Request: IRegisterDefaultPatchBaselineRequest): IRegisterDefaultPatchBaselineResponse; overload;
    function RegisterPatchBaselineForPatchGroup(Request: IRegisterPatchBaselineForPatchGroupRequest): IRegisterPatchBaselineForPatchGroupResponse; overload;
    function RegisterTargetWithMaintenanceWindow(Request: IRegisterTargetWithMaintenanceWindowRequest): IRegisterTargetWithMaintenanceWindowResponse; overload;
    function RegisterTaskWithMaintenanceWindow(Request: IRegisterTaskWithMaintenanceWindowRequest): IRegisterTaskWithMaintenanceWindowResponse; overload;
    function RemoveTagsFromResource(Request: IRemoveTagsFromResourceRequest): IRemoveTagsFromResourceResponse; overload;
    function ResetServiceSetting(Request: IResetServiceSettingRequest): IResetServiceSettingResponse; overload;
    function ResumeSession(Request: IResumeSessionRequest): IResumeSessionResponse; overload;
    function SendAutomationSignal(Request: ISendAutomationSignalRequest): ISendAutomationSignalResponse; overload;
    function SendCommand(const ADocumentName: string; const AInstanceIds: TList<string>): ISendCommandResponse; overload;
    function SendCommand(Request: ISendCommandRequest): ISendCommandResponse; overload;
    function StartAssociationsOnce(Request: IStartAssociationsOnceRequest): IStartAssociationsOnceResponse; overload;
    function StartAutomationExecution(Request: IStartAutomationExecutionRequest): IStartAutomationExecutionResponse; overload;
    function StartChangeRequestExecution(Request: IStartChangeRequestExecutionRequest): IStartChangeRequestExecutionResponse; overload;
    function StartSession(Request: IStartSessionRequest): IStartSessionResponse; overload;
    function StopAutomationExecution(Request: IStopAutomationExecutionRequest): IStopAutomationExecutionResponse; overload;
    function TerminateSession(Request: ITerminateSessionRequest): ITerminateSessionResponse; overload;
    function UnlabelParameterVersion(Request: IUnlabelParameterVersionRequest): IUnlabelParameterVersionResponse; overload;
    function UpdateAssociation(Request: IUpdateAssociationRequest): IUpdateAssociationResponse; overload;
    function UpdateAssociationStatus(Request: IUpdateAssociationStatusRequest): IUpdateAssociationStatusResponse; overload;
    function UpdateDocument(Request: IUpdateDocumentRequest): IUpdateDocumentResponse; overload;
    function UpdateDocumentDefaultVersion(Request: IUpdateDocumentDefaultVersionRequest): IUpdateDocumentDefaultVersionResponse; overload;
    function UpdateDocumentMetadata(Request: IUpdateDocumentMetadataRequest): IUpdateDocumentMetadataResponse; overload;
    function UpdateMaintenanceWindow(Request: IUpdateMaintenanceWindowRequest): IUpdateMaintenanceWindowResponse; overload;
    function UpdateMaintenanceWindowTarget(Request: IUpdateMaintenanceWindowTargetRequest): IUpdateMaintenanceWindowTargetResponse; overload;
    function UpdateMaintenanceWindowTask(Request: IUpdateMaintenanceWindowTaskRequest): IUpdateMaintenanceWindowTaskResponse; overload;
    function UpdateManagedInstanceRole(Request: IUpdateManagedInstanceRoleRequest): IUpdateManagedInstanceRoleResponse; overload;
    function UpdateOpsItem(Request: IUpdateOpsItemRequest): IUpdateOpsItemResponse; overload;
    function UpdateOpsMetadata(Request: IUpdateOpsMetadataRequest): IUpdateOpsMetadataResponse; overload;
    function UpdatePatchBaseline(Request: IUpdatePatchBaselineRequest): IUpdatePatchBaselineResponse; overload;
    function UpdateResourceDataSync(Request: IUpdateResourceDataSyncRequest): IUpdateResourceDataSyncResponse; overload;
    function UpdateServiceSetting(Request: IUpdateServiceSettingRequest): IUpdateServiceSettingResponse; overload;
  end;
  
implementation

end.
