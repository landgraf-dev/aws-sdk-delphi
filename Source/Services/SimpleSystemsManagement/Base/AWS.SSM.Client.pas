unit AWS.SSM.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.SSM.ClientIntf, 
  AWS.SSM.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.SSM.Metadata, 
  AWS.Auth.Signer, 
  AWS.SSM.Model.AddTagsToResourceResponse, 
  AWS.SSM.Model.AddTagsToResourceRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.SSM.Transform.AddTagsToResourceRequestMarshaller, 
  AWS.SSM.Transform.AddTagsToResourceResponseUnmarshaller, 
  AWS.SSM.Model.AssociateOpsItemRelatedItemResponse, 
  AWS.SSM.Model.AssociateOpsItemRelatedItemRequest, 
  AWS.SSM.Transform.AssociateOpsItemRelatedItemRequestMarshaller, 
  AWS.SSM.Transform.AssociateOpsItemRelatedItemResponseUnmarshaller, 
  AWS.SSM.Model.CancelCommandResponse, 
  AWS.SSM.Model.CancelCommandRequest, 
  System.Generics.Collections, 
  AWS.SSM.Transform.CancelCommandRequestMarshaller, 
  AWS.SSM.Transform.CancelCommandResponseUnmarshaller, 
  AWS.SSM.Model.CancelMaintenanceWindowExecutionResponse, 
  AWS.SSM.Model.CancelMaintenanceWindowExecutionRequest, 
  AWS.SSM.Transform.CancelMaintenanceWindowExecutionRequestMarshaller, 
  AWS.SSM.Transform.CancelMaintenanceWindowExecutionResponseUnmarshaller, 
  AWS.SSM.Model.CreateActivationResponse, 
  AWS.SSM.Model.CreateActivationRequest, 
  AWS.SSM.Transform.CreateActivationRequestMarshaller, 
  AWS.SSM.Transform.CreateActivationResponseUnmarshaller, 
  AWS.SSM.Model.CreateAssociationResponse, 
  AWS.SSM.Model.CreateAssociationRequest, 
  AWS.SSM.Transform.CreateAssociationRequestMarshaller, 
  AWS.SSM.Transform.CreateAssociationResponseUnmarshaller, 
  AWS.SSM.Model.CreateAssociationBatchResponse, 
  AWS.SSM.Model.CreateAssociationBatchRequest, 
  AWS.SSM.Transform.CreateAssociationBatchRequestMarshaller, 
  AWS.SSM.Transform.CreateAssociationBatchResponseUnmarshaller, 
  AWS.SSM.Model.CreateDocumentResponse, 
  AWS.SSM.Model.CreateDocumentRequest, 
  AWS.SSM.Transform.CreateDocumentRequestMarshaller, 
  AWS.SSM.Transform.CreateDocumentResponseUnmarshaller, 
  AWS.SSM.Model.CreateMaintenanceWindowResponse, 
  AWS.SSM.Model.CreateMaintenanceWindowRequest, 
  AWS.SSM.Transform.CreateMaintenanceWindowRequestMarshaller, 
  AWS.SSM.Transform.CreateMaintenanceWindowResponseUnmarshaller, 
  AWS.SSM.Model.CreateOpsItemResponse, 
  AWS.SSM.Model.CreateOpsItemRequest, 
  AWS.SSM.Transform.CreateOpsItemRequestMarshaller, 
  AWS.SSM.Transform.CreateOpsItemResponseUnmarshaller, 
  AWS.SSM.Model.CreateOpsMetadataResponse, 
  AWS.SSM.Model.CreateOpsMetadataRequest, 
  AWS.SSM.Transform.CreateOpsMetadataRequestMarshaller, 
  AWS.SSM.Transform.CreateOpsMetadataResponseUnmarshaller, 
  AWS.SSM.Model.CreatePatchBaselineResponse, 
  AWS.SSM.Model.CreatePatchBaselineRequest, 
  AWS.SSM.Transform.CreatePatchBaselineRequestMarshaller, 
  AWS.SSM.Transform.CreatePatchBaselineResponseUnmarshaller, 
  AWS.SSM.Model.CreateResourceDataSyncResponse, 
  AWS.SSM.Model.CreateResourceDataSyncRequest, 
  AWS.SSM.Transform.CreateResourceDataSyncRequestMarshaller, 
  AWS.SSM.Transform.CreateResourceDataSyncResponseUnmarshaller, 
  AWS.SSM.Model.DeleteActivationResponse, 
  AWS.SSM.Model.DeleteActivationRequest, 
  AWS.SSM.Transform.DeleteActivationRequestMarshaller, 
  AWS.SSM.Transform.DeleteActivationResponseUnmarshaller, 
  AWS.SSM.Model.DeleteAssociationResponse, 
  AWS.SSM.Model.DeleteAssociationRequest, 
  AWS.SSM.Transform.DeleteAssociationRequestMarshaller, 
  AWS.SSM.Transform.DeleteAssociationResponseUnmarshaller, 
  AWS.SSM.Model.DeleteDocumentResponse, 
  AWS.SSM.Model.DeleteDocumentRequest, 
  AWS.SSM.Transform.DeleteDocumentRequestMarshaller, 
  AWS.SSM.Transform.DeleteDocumentResponseUnmarshaller, 
  AWS.SSM.Model.DeleteInventoryResponse, 
  AWS.SSM.Model.DeleteInventoryRequest, 
  AWS.SSM.Transform.DeleteInventoryRequestMarshaller, 
  AWS.SSM.Transform.DeleteInventoryResponseUnmarshaller, 
  AWS.SSM.Model.DeleteMaintenanceWindowResponse, 
  AWS.SSM.Model.DeleteMaintenanceWindowRequest, 
  AWS.SSM.Transform.DeleteMaintenanceWindowRequestMarshaller, 
  AWS.SSM.Transform.DeleteMaintenanceWindowResponseUnmarshaller, 
  AWS.SSM.Model.DeleteOpsMetadataResponse, 
  AWS.SSM.Model.DeleteOpsMetadataRequest, 
  AWS.SSM.Transform.DeleteOpsMetadataRequestMarshaller, 
  AWS.SSM.Transform.DeleteOpsMetadataResponseUnmarshaller, 
  AWS.SSM.Model.DeleteParameterResponse, 
  AWS.SSM.Model.DeleteParameterRequest, 
  AWS.SSM.Transform.DeleteParameterRequestMarshaller, 
  AWS.SSM.Transform.DeleteParameterResponseUnmarshaller, 
  AWS.SSM.Model.DeleteParametersResponse, 
  AWS.SSM.Model.DeleteParametersRequest, 
  AWS.SSM.Transform.DeleteParametersRequestMarshaller, 
  AWS.SSM.Transform.DeleteParametersResponseUnmarshaller, 
  AWS.SSM.Model.DeletePatchBaselineResponse, 
  AWS.SSM.Model.DeletePatchBaselineRequest, 
  AWS.SSM.Transform.DeletePatchBaselineRequestMarshaller, 
  AWS.SSM.Transform.DeletePatchBaselineResponseUnmarshaller, 
  AWS.SSM.Model.DeleteResourceDataSyncResponse, 
  AWS.SSM.Model.DeleteResourceDataSyncRequest, 
  AWS.SSM.Transform.DeleteResourceDataSyncRequestMarshaller, 
  AWS.SSM.Transform.DeleteResourceDataSyncResponseUnmarshaller, 
  AWS.SSM.Model.DeregisterManagedInstanceResponse, 
  AWS.SSM.Model.DeregisterManagedInstanceRequest, 
  AWS.SSM.Transform.DeregisterManagedInstanceRequestMarshaller, 
  AWS.SSM.Transform.DeregisterManagedInstanceResponseUnmarshaller, 
  AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Transform.DeregisterPatchBaselineForPatchGroupRequestMarshaller, 
  AWS.SSM.Transform.DeregisterPatchBaselineForPatchGroupResponseUnmarshaller, 
  AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowResponse, 
  AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowRequest, 
  AWS.SSM.Transform.DeregisterTargetFromMaintenanceWindowRequestMarshaller, 
  AWS.SSM.Transform.DeregisterTargetFromMaintenanceWindowResponseUnmarshaller, 
  AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowResponse, 
  AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowRequest, 
  AWS.SSM.Transform.DeregisterTaskFromMaintenanceWindowRequestMarshaller, 
  AWS.SSM.Transform.DeregisterTaskFromMaintenanceWindowResponseUnmarshaller, 
  AWS.SSM.Model.DescribeActivationsResponse, 
  AWS.SSM.Model.DescribeActivationsRequest, 
  AWS.SSM.Transform.DescribeActivationsRequestMarshaller, 
  AWS.SSM.Transform.DescribeActivationsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeAssociationResponse, 
  AWS.SSM.Model.DescribeAssociationRequest, 
  AWS.SSM.Transform.DescribeAssociationRequestMarshaller, 
  AWS.SSM.Transform.DescribeAssociationResponseUnmarshaller, 
  AWS.SSM.Model.DescribeAssociationExecutionTargetsResponse, 
  AWS.SSM.Model.DescribeAssociationExecutionTargetsRequest, 
  AWS.SSM.Transform.DescribeAssociationExecutionTargetsRequestMarshaller, 
  AWS.SSM.Transform.DescribeAssociationExecutionTargetsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeAssociationExecutionsResponse, 
  AWS.SSM.Model.DescribeAssociationExecutionsRequest, 
  AWS.SSM.Transform.DescribeAssociationExecutionsRequestMarshaller, 
  AWS.SSM.Transform.DescribeAssociationExecutionsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeAutomationExecutionsResponse, 
  AWS.SSM.Model.DescribeAutomationExecutionsRequest, 
  AWS.SSM.Transform.DescribeAutomationExecutionsRequestMarshaller, 
  AWS.SSM.Transform.DescribeAutomationExecutionsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeAutomationStepExecutionsResponse, 
  AWS.SSM.Model.DescribeAutomationStepExecutionsRequest, 
  AWS.SSM.Transform.DescribeAutomationStepExecutionsRequestMarshaller, 
  AWS.SSM.Transform.DescribeAutomationStepExecutionsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeAvailablePatchesResponse, 
  AWS.SSM.Model.DescribeAvailablePatchesRequest, 
  AWS.SSM.Transform.DescribeAvailablePatchesRequestMarshaller, 
  AWS.SSM.Transform.DescribeAvailablePatchesResponseUnmarshaller, 
  AWS.SSM.Model.DescribeDocumentResponse, 
  AWS.SSM.Model.DescribeDocumentRequest, 
  AWS.SSM.Transform.DescribeDocumentRequestMarshaller, 
  AWS.SSM.Transform.DescribeDocumentResponseUnmarshaller, 
  AWS.SSM.Model.DescribeDocumentPermissionResponse, 
  AWS.SSM.Model.DescribeDocumentPermissionRequest, 
  AWS.SSM.Transform.DescribeDocumentPermissionRequestMarshaller, 
  AWS.SSM.Transform.DescribeDocumentPermissionResponseUnmarshaller, 
  AWS.SSM.Model.DescribeEffectiveInstanceAssociationsResponse, 
  AWS.SSM.Model.DescribeEffectiveInstanceAssociationsRequest, 
  AWS.SSM.Transform.DescribeEffectiveInstanceAssociationsRequestMarshaller, 
  AWS.SSM.Transform.DescribeEffectiveInstanceAssociationsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineResponse, 
  AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineRequest, 
  AWS.SSM.Transform.DescribeEffectivePatchesForPatchBaselineRequestMarshaller, 
  AWS.SSM.Transform.DescribeEffectivePatchesForPatchBaselineResponseUnmarshaller, 
  AWS.SSM.Model.DescribeInstanceAssociationsStatusResponse, 
  AWS.SSM.Model.DescribeInstanceAssociationsStatusRequest, 
  AWS.SSM.Transform.DescribeInstanceAssociationsStatusRequestMarshaller, 
  AWS.SSM.Transform.DescribeInstanceAssociationsStatusResponseUnmarshaller, 
  AWS.SSM.Model.DescribeInstanceInformationResponse, 
  AWS.SSM.Model.DescribeInstanceInformationRequest, 
  AWS.SSM.Transform.DescribeInstanceInformationRequestMarshaller, 
  AWS.SSM.Transform.DescribeInstanceInformationResponseUnmarshaller, 
  AWS.SSM.Model.DescribeInstancePatchStatesResponse, 
  AWS.SSM.Model.DescribeInstancePatchStatesRequest, 
  AWS.SSM.Transform.DescribeInstancePatchStatesRequestMarshaller, 
  AWS.SSM.Transform.DescribeInstancePatchStatesResponseUnmarshaller, 
  AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupResponse, 
  AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupRequest, 
  AWS.SSM.Transform.DescribeInstancePatchStatesForPatchGroupRequestMarshaller, 
  AWS.SSM.Transform.DescribeInstancePatchStatesForPatchGroupResponseUnmarshaller, 
  AWS.SSM.Model.DescribeInstancePatchesResponse, 
  AWS.SSM.Model.DescribeInstancePatchesRequest, 
  AWS.SSM.Transform.DescribeInstancePatchesRequestMarshaller, 
  AWS.SSM.Transform.DescribeInstancePatchesResponseUnmarshaller, 
  AWS.SSM.Model.DescribeInventoryDeletionsResponse, 
  AWS.SSM.Model.DescribeInventoryDeletionsRequest, 
  AWS.SSM.Transform.DescribeInventoryDeletionsRequestMarshaller, 
  AWS.SSM.Transform.DescribeInventoryDeletionsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsRequest, 
  AWS.SSM.Transform.DescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller, 
  AWS.SSM.Transform.DescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksRequest, 
  AWS.SSM.Transform.DescribeMaintenanceWindowExecutionTasksRequestMarshaller, 
  AWS.SSM.Transform.DescribeMaintenanceWindowExecutionTasksResponseUnmarshaller, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionsRequest, 
  AWS.SSM.Transform.DescribeMaintenanceWindowExecutionsRequestMarshaller, 
  AWS.SSM.Transform.DescribeMaintenanceWindowExecutionsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeMaintenanceWindowScheduleResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowScheduleRequest, 
  AWS.SSM.Transform.DescribeMaintenanceWindowScheduleRequestMarshaller, 
  AWS.SSM.Transform.DescribeMaintenanceWindowScheduleResponseUnmarshaller, 
  AWS.SSM.Model.DescribeMaintenanceWindowTargetsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowTargetsRequest, 
  AWS.SSM.Transform.DescribeMaintenanceWindowTargetsRequestMarshaller, 
  AWS.SSM.Transform.DescribeMaintenanceWindowTargetsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeMaintenanceWindowTasksResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowTasksRequest, 
  AWS.SSM.Transform.DescribeMaintenanceWindowTasksRequestMarshaller, 
  AWS.SSM.Transform.DescribeMaintenanceWindowTasksResponseUnmarshaller, 
  AWS.SSM.Model.DescribeMaintenanceWindowsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowsRequest, 
  AWS.SSM.Transform.DescribeMaintenanceWindowsRequestMarshaller, 
  AWS.SSM.Transform.DescribeMaintenanceWindowsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeMaintenanceWindowsForTargetResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowsForTargetRequest, 
  AWS.SSM.Transform.DescribeMaintenanceWindowsForTargetRequestMarshaller, 
  AWS.SSM.Transform.DescribeMaintenanceWindowsForTargetResponseUnmarshaller, 
  AWS.SSM.Model.DescribeOpsItemsResponse, 
  AWS.SSM.Model.DescribeOpsItemsRequest, 
  AWS.SSM.Transform.DescribeOpsItemsRequestMarshaller, 
  AWS.SSM.Transform.DescribeOpsItemsResponseUnmarshaller, 
  AWS.SSM.Model.DescribeParametersResponse, 
  AWS.SSM.Model.DescribeParametersRequest, 
  AWS.SSM.Transform.DescribeParametersRequestMarshaller, 
  AWS.SSM.Transform.DescribeParametersResponseUnmarshaller, 
  AWS.SSM.Model.DescribePatchBaselinesResponse, 
  AWS.SSM.Model.DescribePatchBaselinesRequest, 
  AWS.SSM.Transform.DescribePatchBaselinesRequestMarshaller, 
  AWS.SSM.Transform.DescribePatchBaselinesResponseUnmarshaller, 
  AWS.SSM.Model.DescribePatchGroupStateResponse, 
  AWS.SSM.Model.DescribePatchGroupStateRequest, 
  AWS.SSM.Transform.DescribePatchGroupStateRequestMarshaller, 
  AWS.SSM.Transform.DescribePatchGroupStateResponseUnmarshaller, 
  AWS.SSM.Model.DescribePatchGroupsResponse, 
  AWS.SSM.Model.DescribePatchGroupsRequest, 
  AWS.SSM.Transform.DescribePatchGroupsRequestMarshaller, 
  AWS.SSM.Transform.DescribePatchGroupsResponseUnmarshaller, 
  AWS.SSM.Model.DescribePatchPropertiesResponse, 
  AWS.SSM.Model.DescribePatchPropertiesRequest, 
  AWS.SSM.Transform.DescribePatchPropertiesRequestMarshaller, 
  AWS.SSM.Transform.DescribePatchPropertiesResponseUnmarshaller, 
  AWS.SSM.Model.DescribeSessionsResponse, 
  AWS.SSM.Model.DescribeSessionsRequest, 
  AWS.SSM.Transform.DescribeSessionsRequestMarshaller, 
  AWS.SSM.Transform.DescribeSessionsResponseUnmarshaller, 
  AWS.SSM.Model.DisassociateOpsItemRelatedItemResponse, 
  AWS.SSM.Model.DisassociateOpsItemRelatedItemRequest, 
  AWS.SSM.Transform.DisassociateOpsItemRelatedItemRequestMarshaller, 
  AWS.SSM.Transform.DisassociateOpsItemRelatedItemResponseUnmarshaller, 
  AWS.SSM.Model.GetAutomationExecutionResponse, 
  AWS.SSM.Model.GetAutomationExecutionRequest, 
  AWS.SSM.Transform.GetAutomationExecutionRequestMarshaller, 
  AWS.SSM.Transform.GetAutomationExecutionResponseUnmarshaller, 
  AWS.SSM.Model.GetCalendarStateResponse, 
  AWS.SSM.Model.GetCalendarStateRequest, 
  AWS.SSM.Transform.GetCalendarStateRequestMarshaller, 
  AWS.SSM.Transform.GetCalendarStateResponseUnmarshaller, 
  AWS.SSM.Model.GetCommandInvocationResponse, 
  AWS.SSM.Model.GetCommandInvocationRequest, 
  AWS.SSM.Transform.GetCommandInvocationRequestMarshaller, 
  AWS.SSM.Transform.GetCommandInvocationResponseUnmarshaller, 
  AWS.SSM.Model.GetConnectionStatusResponse, 
  AWS.SSM.Model.GetConnectionStatusRequest, 
  AWS.SSM.Transform.GetConnectionStatusRequestMarshaller, 
  AWS.SSM.Transform.GetConnectionStatusResponseUnmarshaller, 
  AWS.SSM.Model.GetDefaultPatchBaselineResponse, 
  AWS.SSM.Model.GetDefaultPatchBaselineRequest, 
  AWS.SSM.Transform.GetDefaultPatchBaselineRequestMarshaller, 
  AWS.SSM.Transform.GetDefaultPatchBaselineResponseUnmarshaller, 
  AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceResponse, 
  AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceRequest, 
  AWS.SSM.Transform.GetDeployablePatchSnapshotForInstanceRequestMarshaller, 
  AWS.SSM.Transform.GetDeployablePatchSnapshotForInstanceResponseUnmarshaller, 
  AWS.SSM.Model.GetDocumentResponse, 
  AWS.SSM.Model.GetDocumentRequest, 
  AWS.SSM.Transform.GetDocumentRequestMarshaller, 
  AWS.SSM.Transform.GetDocumentResponseUnmarshaller, 
  AWS.SSM.Model.GetInventoryResponse, 
  AWS.SSM.Model.GetInventoryRequest, 
  AWS.SSM.Transform.GetInventoryRequestMarshaller, 
  AWS.SSM.Transform.GetInventoryResponseUnmarshaller, 
  AWS.SSM.Model.GetInventorySchemaResponse, 
  AWS.SSM.Model.GetInventorySchemaRequest, 
  AWS.SSM.Transform.GetInventorySchemaRequestMarshaller, 
  AWS.SSM.Transform.GetInventorySchemaResponseUnmarshaller, 
  AWS.SSM.Model.GetMaintenanceWindowResponse, 
  AWS.SSM.Model.GetMaintenanceWindowRequest, 
  AWS.SSM.Transform.GetMaintenanceWindowRequestMarshaller, 
  AWS.SSM.Transform.GetMaintenanceWindowResponseUnmarshaller, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionRequest, 
  AWS.SSM.Transform.GetMaintenanceWindowExecutionRequestMarshaller, 
  AWS.SSM.Transform.GetMaintenanceWindowExecutionResponseUnmarshaller, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskRequest, 
  AWS.SSM.Transform.GetMaintenanceWindowExecutionTaskRequestMarshaller, 
  AWS.SSM.Transform.GetMaintenanceWindowExecutionTaskResponseUnmarshaller, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationRequest, 
  AWS.SSM.Transform.GetMaintenanceWindowExecutionTaskInvocationRequestMarshaller, 
  AWS.SSM.Transform.GetMaintenanceWindowExecutionTaskInvocationResponseUnmarshaller, 
  AWS.SSM.Model.GetMaintenanceWindowTaskResponse, 
  AWS.SSM.Model.GetMaintenanceWindowTaskRequest, 
  AWS.SSM.Transform.GetMaintenanceWindowTaskRequestMarshaller, 
  AWS.SSM.Transform.GetMaintenanceWindowTaskResponseUnmarshaller, 
  AWS.SSM.Model.GetOpsItemResponse, 
  AWS.SSM.Model.GetOpsItemRequest, 
  AWS.SSM.Transform.GetOpsItemRequestMarshaller, 
  AWS.SSM.Transform.GetOpsItemResponseUnmarshaller, 
  AWS.SSM.Model.GetOpsMetadataResponse, 
  AWS.SSM.Model.GetOpsMetadataRequest, 
  AWS.SSM.Transform.GetOpsMetadataRequestMarshaller, 
  AWS.SSM.Transform.GetOpsMetadataResponseUnmarshaller, 
  AWS.SSM.Model.GetOpsSummaryResponse, 
  AWS.SSM.Model.GetOpsSummaryRequest, 
  AWS.SSM.Transform.GetOpsSummaryRequestMarshaller, 
  AWS.SSM.Transform.GetOpsSummaryResponseUnmarshaller, 
  AWS.SSM.Model.GetParameterResponse, 
  AWS.SSM.Model.GetParameterRequest, 
  AWS.SSM.Transform.GetParameterRequestMarshaller, 
  AWS.SSM.Transform.GetParameterResponseUnmarshaller, 
  AWS.SSM.Model.GetParameterHistoryResponse, 
  AWS.SSM.Model.GetParameterHistoryRequest, 
  AWS.SSM.Transform.GetParameterHistoryRequestMarshaller, 
  AWS.SSM.Transform.GetParameterHistoryResponseUnmarshaller, 
  AWS.SSM.Model.GetParametersResponse, 
  AWS.SSM.Model.GetParametersRequest, 
  AWS.SSM.Transform.GetParametersRequestMarshaller, 
  AWS.SSM.Transform.GetParametersResponseUnmarshaller, 
  AWS.SSM.Model.GetParametersByPathResponse, 
  AWS.SSM.Model.GetParametersByPathRequest, 
  AWS.SSM.Transform.GetParametersByPathRequestMarshaller, 
  AWS.SSM.Transform.GetParametersByPathResponseUnmarshaller, 
  AWS.SSM.Model.GetPatchBaselineResponse, 
  AWS.SSM.Model.GetPatchBaselineRequest, 
  AWS.SSM.Transform.GetPatchBaselineRequestMarshaller, 
  AWS.SSM.Transform.GetPatchBaselineResponseUnmarshaller, 
  AWS.SSM.Model.GetPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.GetPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Transform.GetPatchBaselineForPatchGroupRequestMarshaller, 
  AWS.SSM.Transform.GetPatchBaselineForPatchGroupResponseUnmarshaller, 
  AWS.SSM.Model.GetServiceSettingResponse, 
  AWS.SSM.Model.GetServiceSettingRequest, 
  AWS.SSM.Transform.GetServiceSettingRequestMarshaller, 
  AWS.SSM.Transform.GetServiceSettingResponseUnmarshaller, 
  AWS.SSM.Model.LabelParameterVersionResponse, 
  AWS.SSM.Model.LabelParameterVersionRequest, 
  AWS.SSM.Transform.LabelParameterVersionRequestMarshaller, 
  AWS.SSM.Transform.LabelParameterVersionResponseUnmarshaller, 
  AWS.SSM.Model.ListAssociationVersionsResponse, 
  AWS.SSM.Model.ListAssociationVersionsRequest, 
  AWS.SSM.Transform.ListAssociationVersionsRequestMarshaller, 
  AWS.SSM.Transform.ListAssociationVersionsResponseUnmarshaller, 
  AWS.SSM.Model.ListAssociationsResponse, 
  AWS.SSM.Model.ListAssociationsRequest, 
  AWS.SSM.Transform.ListAssociationsRequestMarshaller, 
  AWS.SSM.Transform.ListAssociationsResponseUnmarshaller, 
  AWS.SSM.Model.ListCommandInvocationsResponse, 
  AWS.SSM.Model.ListCommandInvocationsRequest, 
  AWS.SSM.Transform.ListCommandInvocationsRequestMarshaller, 
  AWS.SSM.Transform.ListCommandInvocationsResponseUnmarshaller, 
  AWS.SSM.Model.ListCommandsResponse, 
  AWS.SSM.Model.ListCommandsRequest, 
  AWS.SSM.Transform.ListCommandsRequestMarshaller, 
  AWS.SSM.Transform.ListCommandsResponseUnmarshaller, 
  AWS.SSM.Model.ListComplianceItemsResponse, 
  AWS.SSM.Model.ListComplianceItemsRequest, 
  AWS.SSM.Transform.ListComplianceItemsRequestMarshaller, 
  AWS.SSM.Transform.ListComplianceItemsResponseUnmarshaller, 
  AWS.SSM.Model.ListComplianceSummariesResponse, 
  AWS.SSM.Model.ListComplianceSummariesRequest, 
  AWS.SSM.Transform.ListComplianceSummariesRequestMarshaller, 
  AWS.SSM.Transform.ListComplianceSummariesResponseUnmarshaller, 
  AWS.SSM.Model.ListDocumentMetadataHistoryResponse, 
  AWS.SSM.Model.ListDocumentMetadataHistoryRequest, 
  AWS.SSM.Transform.ListDocumentMetadataHistoryRequestMarshaller, 
  AWS.SSM.Transform.ListDocumentMetadataHistoryResponseUnmarshaller, 
  AWS.SSM.Model.ListDocumentVersionsResponse, 
  AWS.SSM.Model.ListDocumentVersionsRequest, 
  AWS.SSM.Transform.ListDocumentVersionsRequestMarshaller, 
  AWS.SSM.Transform.ListDocumentVersionsResponseUnmarshaller, 
  AWS.SSM.Model.ListDocumentsResponse, 
  AWS.SSM.Model.ListDocumentsRequest, 
  AWS.SSM.Transform.ListDocumentsRequestMarshaller, 
  AWS.SSM.Transform.ListDocumentsResponseUnmarshaller, 
  AWS.SSM.Model.ListInventoryEntriesResponse, 
  AWS.SSM.Model.ListInventoryEntriesRequest, 
  AWS.SSM.Transform.ListInventoryEntriesRequestMarshaller, 
  AWS.SSM.Transform.ListInventoryEntriesResponseUnmarshaller, 
  AWS.SSM.Model.ListOpsItemEventsResponse, 
  AWS.SSM.Model.ListOpsItemEventsRequest, 
  AWS.SSM.Transform.ListOpsItemEventsRequestMarshaller, 
  AWS.SSM.Transform.ListOpsItemEventsResponseUnmarshaller, 
  AWS.SSM.Model.ListOpsItemRelatedItemsResponse, 
  AWS.SSM.Model.ListOpsItemRelatedItemsRequest, 
  AWS.SSM.Transform.ListOpsItemRelatedItemsRequestMarshaller, 
  AWS.SSM.Transform.ListOpsItemRelatedItemsResponseUnmarshaller, 
  AWS.SSM.Model.ListOpsMetadataResponse, 
  AWS.SSM.Model.ListOpsMetadataRequest, 
  AWS.SSM.Transform.ListOpsMetadataRequestMarshaller, 
  AWS.SSM.Transform.ListOpsMetadataResponseUnmarshaller, 
  AWS.SSM.Model.ListResourceComplianceSummariesResponse, 
  AWS.SSM.Model.ListResourceComplianceSummariesRequest, 
  AWS.SSM.Transform.ListResourceComplianceSummariesRequestMarshaller, 
  AWS.SSM.Transform.ListResourceComplianceSummariesResponseUnmarshaller, 
  AWS.SSM.Model.ListResourceDataSyncResponse, 
  AWS.SSM.Model.ListResourceDataSyncRequest, 
  AWS.SSM.Transform.ListResourceDataSyncRequestMarshaller, 
  AWS.SSM.Transform.ListResourceDataSyncResponseUnmarshaller, 
  AWS.SSM.Model.ListTagsForResourceResponse, 
  AWS.SSM.Model.ListTagsForResourceRequest, 
  AWS.SSM.Transform.ListTagsForResourceRequestMarshaller, 
  AWS.SSM.Transform.ListTagsForResourceResponseUnmarshaller, 
  AWS.SSM.Model.ModifyDocumentPermissionResponse, 
  AWS.SSM.Model.ModifyDocumentPermissionRequest, 
  AWS.SSM.Transform.ModifyDocumentPermissionRequestMarshaller, 
  AWS.SSM.Transform.ModifyDocumentPermissionResponseUnmarshaller, 
  AWS.SSM.Model.PutComplianceItemsResponse, 
  AWS.SSM.Model.PutComplianceItemsRequest, 
  AWS.SSM.Transform.PutComplianceItemsRequestMarshaller, 
  AWS.SSM.Transform.PutComplianceItemsResponseUnmarshaller, 
  AWS.SSM.Model.PutInventoryResponse, 
  AWS.SSM.Model.PutInventoryRequest, 
  AWS.SSM.Transform.PutInventoryRequestMarshaller, 
  AWS.SSM.Transform.PutInventoryResponseUnmarshaller, 
  AWS.SSM.Model.PutParameterResponse, 
  AWS.SSM.Model.PutParameterRequest, 
  AWS.SSM.Transform.PutParameterRequestMarshaller, 
  AWS.SSM.Transform.PutParameterResponseUnmarshaller, 
  AWS.SSM.Model.RegisterDefaultPatchBaselineResponse, 
  AWS.SSM.Model.RegisterDefaultPatchBaselineRequest, 
  AWS.SSM.Transform.RegisterDefaultPatchBaselineRequestMarshaller, 
  AWS.SSM.Transform.RegisterDefaultPatchBaselineResponseUnmarshaller, 
  AWS.SSM.Model.RegisterPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.RegisterPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Transform.RegisterPatchBaselineForPatchGroupRequestMarshaller, 
  AWS.SSM.Transform.RegisterPatchBaselineForPatchGroupResponseUnmarshaller, 
  AWS.SSM.Model.RegisterTargetWithMaintenanceWindowResponse, 
  AWS.SSM.Model.RegisterTargetWithMaintenanceWindowRequest, 
  AWS.SSM.Transform.RegisterTargetWithMaintenanceWindowRequestMarshaller, 
  AWS.SSM.Transform.RegisterTargetWithMaintenanceWindowResponseUnmarshaller, 
  AWS.SSM.Model.RegisterTaskWithMaintenanceWindowResponse, 
  AWS.SSM.Model.RegisterTaskWithMaintenanceWindowRequest, 
  AWS.SSM.Transform.RegisterTaskWithMaintenanceWindowRequestMarshaller, 
  AWS.SSM.Transform.RegisterTaskWithMaintenanceWindowResponseUnmarshaller, 
  AWS.SSM.Model.RemoveTagsFromResourceResponse, 
  AWS.SSM.Model.RemoveTagsFromResourceRequest, 
  AWS.SSM.Transform.RemoveTagsFromResourceRequestMarshaller, 
  AWS.SSM.Transform.RemoveTagsFromResourceResponseUnmarshaller, 
  AWS.SSM.Model.ResetServiceSettingResponse, 
  AWS.SSM.Model.ResetServiceSettingRequest, 
  AWS.SSM.Transform.ResetServiceSettingRequestMarshaller, 
  AWS.SSM.Transform.ResetServiceSettingResponseUnmarshaller, 
  AWS.SSM.Model.ResumeSessionResponse, 
  AWS.SSM.Model.ResumeSessionRequest, 
  AWS.SSM.Transform.ResumeSessionRequestMarshaller, 
  AWS.SSM.Transform.ResumeSessionResponseUnmarshaller, 
  AWS.SSM.Model.SendAutomationSignalResponse, 
  AWS.SSM.Model.SendAutomationSignalRequest, 
  AWS.SSM.Transform.SendAutomationSignalRequestMarshaller, 
  AWS.SSM.Transform.SendAutomationSignalResponseUnmarshaller, 
  AWS.SSM.Model.SendCommandResponse, 
  AWS.SSM.Model.SendCommandRequest, 
  AWS.SSM.Transform.SendCommandRequestMarshaller, 
  AWS.SSM.Transform.SendCommandResponseUnmarshaller, 
  AWS.SSM.Model.StartAssociationsOnceResponse, 
  AWS.SSM.Model.StartAssociationsOnceRequest, 
  AWS.SSM.Transform.StartAssociationsOnceRequestMarshaller, 
  AWS.SSM.Transform.StartAssociationsOnceResponseUnmarshaller, 
  AWS.SSM.Model.StartAutomationExecutionResponse, 
  AWS.SSM.Model.StartAutomationExecutionRequest, 
  AWS.SSM.Transform.StartAutomationExecutionRequestMarshaller, 
  AWS.SSM.Transform.StartAutomationExecutionResponseUnmarshaller, 
  AWS.SSM.Model.StartChangeRequestExecutionResponse, 
  AWS.SSM.Model.StartChangeRequestExecutionRequest, 
  AWS.SSM.Transform.StartChangeRequestExecutionRequestMarshaller, 
  AWS.SSM.Transform.StartChangeRequestExecutionResponseUnmarshaller, 
  AWS.SSM.Model.StartSessionResponse, 
  AWS.SSM.Model.StartSessionRequest, 
  AWS.SSM.Transform.StartSessionRequestMarshaller, 
  AWS.SSM.Transform.StartSessionResponseUnmarshaller, 
  AWS.SSM.Model.StopAutomationExecutionResponse, 
  AWS.SSM.Model.StopAutomationExecutionRequest, 
  AWS.SSM.Transform.StopAutomationExecutionRequestMarshaller, 
  AWS.SSM.Transform.StopAutomationExecutionResponseUnmarshaller, 
  AWS.SSM.Model.TerminateSessionResponse, 
  AWS.SSM.Model.TerminateSessionRequest, 
  AWS.SSM.Transform.TerminateSessionRequestMarshaller, 
  AWS.SSM.Transform.TerminateSessionResponseUnmarshaller, 
  AWS.SSM.Model.UnlabelParameterVersionResponse, 
  AWS.SSM.Model.UnlabelParameterVersionRequest, 
  AWS.SSM.Transform.UnlabelParameterVersionRequestMarshaller, 
  AWS.SSM.Transform.UnlabelParameterVersionResponseUnmarshaller, 
  AWS.SSM.Model.UpdateAssociationResponse, 
  AWS.SSM.Model.UpdateAssociationRequest, 
  AWS.SSM.Transform.UpdateAssociationRequestMarshaller, 
  AWS.SSM.Transform.UpdateAssociationResponseUnmarshaller, 
  AWS.SSM.Model.UpdateAssociationStatusResponse, 
  AWS.SSM.Model.UpdateAssociationStatusRequest, 
  AWS.SSM.Transform.UpdateAssociationStatusRequestMarshaller, 
  AWS.SSM.Transform.UpdateAssociationStatusResponseUnmarshaller, 
  AWS.SSM.Model.UpdateDocumentResponse, 
  AWS.SSM.Model.UpdateDocumentRequest, 
  AWS.SSM.Transform.UpdateDocumentRequestMarshaller, 
  AWS.SSM.Transform.UpdateDocumentResponseUnmarshaller, 
  AWS.SSM.Model.UpdateDocumentDefaultVersionResponse, 
  AWS.SSM.Model.UpdateDocumentDefaultVersionRequest, 
  AWS.SSM.Transform.UpdateDocumentDefaultVersionRequestMarshaller, 
  AWS.SSM.Transform.UpdateDocumentDefaultVersionResponseUnmarshaller, 
  AWS.SSM.Model.UpdateDocumentMetadataResponse, 
  AWS.SSM.Model.UpdateDocumentMetadataRequest, 
  AWS.SSM.Transform.UpdateDocumentMetadataRequestMarshaller, 
  AWS.SSM.Transform.UpdateDocumentMetadataResponseUnmarshaller, 
  AWS.SSM.Model.UpdateMaintenanceWindowResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowRequest, 
  AWS.SSM.Transform.UpdateMaintenanceWindowRequestMarshaller, 
  AWS.SSM.Transform.UpdateMaintenanceWindowResponseUnmarshaller, 
  AWS.SSM.Model.UpdateMaintenanceWindowTargetResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowTargetRequest, 
  AWS.SSM.Transform.UpdateMaintenanceWindowTargetRequestMarshaller, 
  AWS.SSM.Transform.UpdateMaintenanceWindowTargetResponseUnmarshaller, 
  AWS.SSM.Model.UpdateMaintenanceWindowTaskResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowTaskRequest, 
  AWS.SSM.Transform.UpdateMaintenanceWindowTaskRequestMarshaller, 
  AWS.SSM.Transform.UpdateMaintenanceWindowTaskResponseUnmarshaller, 
  AWS.SSM.Model.UpdateManagedInstanceRoleResponse, 
  AWS.SSM.Model.UpdateManagedInstanceRoleRequest, 
  AWS.SSM.Transform.UpdateManagedInstanceRoleRequestMarshaller, 
  AWS.SSM.Transform.UpdateManagedInstanceRoleResponseUnmarshaller, 
  AWS.SSM.Model.UpdateOpsItemResponse, 
  AWS.SSM.Model.UpdateOpsItemRequest, 
  AWS.SSM.Transform.UpdateOpsItemRequestMarshaller, 
  AWS.SSM.Transform.UpdateOpsItemResponseUnmarshaller, 
  AWS.SSM.Model.UpdateOpsMetadataResponse, 
  AWS.SSM.Model.UpdateOpsMetadataRequest, 
  AWS.SSM.Transform.UpdateOpsMetadataRequestMarshaller, 
  AWS.SSM.Transform.UpdateOpsMetadataResponseUnmarshaller, 
  AWS.SSM.Model.UpdatePatchBaselineResponse, 
  AWS.SSM.Model.UpdatePatchBaselineRequest, 
  AWS.SSM.Transform.UpdatePatchBaselineRequestMarshaller, 
  AWS.SSM.Transform.UpdatePatchBaselineResponseUnmarshaller, 
  AWS.SSM.Model.UpdateResourceDataSyncResponse, 
  AWS.SSM.Model.UpdateResourceDataSyncRequest, 
  AWS.SSM.Transform.UpdateResourceDataSyncRequestMarshaller, 
  AWS.SSM.Transform.UpdateResourceDataSyncResponseUnmarshaller, 
  AWS.SSM.Model.UpdateServiceSettingResponse, 
  AWS.SSM.Model.UpdateServiceSettingRequest, 
  AWS.SSM.Transform.UpdateServiceSettingRequestMarshaller, 
  AWS.SSM.Transform.UpdateServiceSettingResponseUnmarshaller;

type
  TAmazonSimpleSystemsManagementClient = class(TAmazonServiceClient, IAmazonSimpleSystemsManagement)
  strict private
    class var FServiceMetadata: IServiceMetadata;
  private
    class constructor Create;
  strict protected
    function GetServiceMetadata: IServiceMetadata; override;
    function CreateSigner: TAbstractAWSSigner; override;
  public
    constructor Create; reintroduce; overload;
    constructor Create(Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(Config: IClientConfig); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials; Config: IClientConfig); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig); reintroduce; overload;
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

{ TAmazonSimpleSystemsManagementClient }

constructor TAmazonSimpleSystemsManagementClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSimpleSystemsManagementConfig.Create);
end;

constructor TAmazonSimpleSystemsManagementClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSimpleSystemsManagementConfig.Create(Region));
end;

constructor TAmazonSimpleSystemsManagementClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonSimpleSystemsManagementClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonSimpleSystemsManagementConfig.Create);
end;

constructor TAmazonSimpleSystemsManagementClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonSimpleSystemsManagementConfig.Create(Region));
end;

constructor TAmazonSimpleSystemsManagementClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonSimpleSystemsManagementClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSimpleSystemsManagementConfig.Create);
end;

constructor TAmazonSimpleSystemsManagementClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSimpleSystemsManagementConfig.Create(Region));
end;

constructor TAmazonSimpleSystemsManagementClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonSimpleSystemsManagementClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSimpleSystemsManagementConfig.Create);
end;

constructor TAmazonSimpleSystemsManagementClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSimpleSystemsManagementConfig.Create(Region));
end;

constructor TAmazonSimpleSystemsManagementClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonSimpleSystemsManagementClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonSimpleSystemsManagementClient.Create;
begin
  FServiceMetadata := TAmazonSimpleSystemsManagementMetadata.Create;
end;

function TAmazonSimpleSystemsManagementClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonSimpleSystemsManagementClient.AddTagsToResource(Request: IAddTagsToResourceRequest): IAddTagsToResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TAddTagsToResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TAddTagsToResourceResponseUnmarshaller.Instance;
    Result := Invoke<TAddTagsToResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.AssociateOpsItemRelatedItem(Request: IAssociateOpsItemRelatedItemRequest): IAssociateOpsItemRelatedItemResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TAssociateOpsItemRelatedItemRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TAssociateOpsItemRelatedItemResponseUnmarshaller.Instance;
    Result := Invoke<TAssociateOpsItemRelatedItemResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CancelCommand(const ACommandId: string): ICancelCommandResponse;
var
  Request: ICancelCommandRequest;
begin
  Request := TCancelCommandRequest.Create;
  Request.CommandId := ACommandId;
  Result := CancelCommand(Request);
end;

function TAmazonSimpleSystemsManagementClient.CancelCommand(const ACommandId: string; const AInstanceIds: TList<string>): ICancelCommandResponse;
var
  Request: ICancelCommandRequest;
begin
  Request := TCancelCommandRequest.Create;
  Request.CommandId := ACommandId;
  Request.InstanceIds := AInstanceIds;
  Result := CancelCommand(Request);
end;

function TAmazonSimpleSystemsManagementClient.CancelCommand(Request: ICancelCommandRequest): ICancelCommandResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCancelCommandRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCancelCommandResponseUnmarshaller.Instance;
    Result := Invoke<TCancelCommandResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CancelMaintenanceWindowExecution(Request: ICancelMaintenanceWindowExecutionRequest): ICancelMaintenanceWindowExecutionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCancelMaintenanceWindowExecutionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCancelMaintenanceWindowExecutionResponseUnmarshaller.Instance;
    Result := Invoke<TCancelMaintenanceWindowExecutionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreateActivation(Request: ICreateActivationRequest): ICreateActivationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateActivationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateActivationResponseUnmarshaller.Instance;
    Result := Invoke<TCreateActivationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreateAssociation(const AInstanceId: string; const AName: string): ICreateAssociationResponse;
var
  Request: ICreateAssociationRequest;
begin
  Request := TCreateAssociationRequest.Create;
  Request.InstanceId := AInstanceId;
  Request.Name := AName;
  Result := CreateAssociation(Request);
end;

function TAmazonSimpleSystemsManagementClient.CreateAssociation(Request: ICreateAssociationRequest): ICreateAssociationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateAssociationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateAssociationResponseUnmarshaller.Instance;
    Result := Invoke<TCreateAssociationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreateAssociationBatch(Request: ICreateAssociationBatchRequest): ICreateAssociationBatchResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateAssociationBatchRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateAssociationBatchResponseUnmarshaller.Instance;
    Result := Invoke<TCreateAssociationBatchResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreateDocument(const AContent: string; const AName: string): ICreateDocumentResponse;
var
  Request: ICreateDocumentRequest;
begin
  Request := TCreateDocumentRequest.Create;
  Request.Content := AContent;
  Request.Name := AName;
  Result := CreateDocument(Request);
end;

function TAmazonSimpleSystemsManagementClient.CreateDocument(Request: ICreateDocumentRequest): ICreateDocumentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateDocumentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateDocumentResponseUnmarshaller.Instance;
    Result := Invoke<TCreateDocumentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreateMaintenanceWindow(Request: ICreateMaintenanceWindowRequest): ICreateMaintenanceWindowResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateMaintenanceWindowRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateMaintenanceWindowResponseUnmarshaller.Instance;
    Result := Invoke<TCreateMaintenanceWindowResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreateOpsItem(Request: ICreateOpsItemRequest): ICreateOpsItemResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateOpsItemRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateOpsItemResponseUnmarshaller.Instance;
    Result := Invoke<TCreateOpsItemResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreateOpsMetadata(Request: ICreateOpsMetadataRequest): ICreateOpsMetadataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateOpsMetadataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateOpsMetadataResponseUnmarshaller.Instance;
    Result := Invoke<TCreateOpsMetadataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreatePatchBaseline(Request: ICreatePatchBaselineRequest): ICreatePatchBaselineResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreatePatchBaselineRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreatePatchBaselineResponseUnmarshaller.Instance;
    Result := Invoke<TCreatePatchBaselineResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.CreateResourceDataSync(Request: ICreateResourceDataSyncRequest): ICreateResourceDataSyncResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateResourceDataSyncRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateResourceDataSyncResponseUnmarshaller.Instance;
    Result := Invoke<TCreateResourceDataSyncResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteActivation(Request: IDeleteActivationRequest): IDeleteActivationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteActivationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteActivationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteActivationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteAssociation(const AInstanceId: string; const AName: string): IDeleteAssociationResponse;
var
  Request: IDeleteAssociationRequest;
begin
  Request := TDeleteAssociationRequest.Create;
  Request.InstanceId := AInstanceId;
  Request.Name := AName;
  Result := DeleteAssociation(Request);
end;

function TAmazonSimpleSystemsManagementClient.DeleteAssociation(Request: IDeleteAssociationRequest): IDeleteAssociationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteAssociationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteAssociationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteAssociationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteDocument(const AName: string): IDeleteDocumentResponse;
var
  Request: IDeleteDocumentRequest;
begin
  Request := TDeleteDocumentRequest.Create;
  Request.Name := AName;
  Result := DeleteDocument(Request);
end;

function TAmazonSimpleSystemsManagementClient.DeleteDocument(Request: IDeleteDocumentRequest): IDeleteDocumentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteDocumentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteDocumentResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteDocumentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteInventory(Request: IDeleteInventoryRequest): IDeleteInventoryResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteInventoryRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteInventoryResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteInventoryResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteMaintenanceWindow(Request: IDeleteMaintenanceWindowRequest): IDeleteMaintenanceWindowResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteMaintenanceWindowRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteMaintenanceWindowResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteMaintenanceWindowResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteOpsMetadata(Request: IDeleteOpsMetadataRequest): IDeleteOpsMetadataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteOpsMetadataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteOpsMetadataResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteOpsMetadataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteParameter(Request: IDeleteParameterRequest): IDeleteParameterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteParameterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteParameterResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteParameterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteParameters(Request: IDeleteParametersRequest): IDeleteParametersResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteParametersRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteParametersResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteParametersResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeletePatchBaseline(Request: IDeletePatchBaselineRequest): IDeletePatchBaselineResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeletePatchBaselineRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeletePatchBaselineResponseUnmarshaller.Instance;
    Result := Invoke<TDeletePatchBaselineResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeleteResourceDataSync(Request: IDeleteResourceDataSyncRequest): IDeleteResourceDataSyncResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteResourceDataSyncRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteResourceDataSyncResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteResourceDataSyncResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeregisterManagedInstance(Request: IDeregisterManagedInstanceRequest): IDeregisterManagedInstanceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeregisterManagedInstanceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeregisterManagedInstanceResponseUnmarshaller.Instance;
    Result := Invoke<TDeregisterManagedInstanceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeregisterPatchBaselineForPatchGroup(Request: IDeregisterPatchBaselineForPatchGroupRequest): IDeregisterPatchBaselineForPatchGroupResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeregisterPatchBaselineForPatchGroupRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeregisterPatchBaselineForPatchGroupResponseUnmarshaller.Instance;
    Result := Invoke<TDeregisterPatchBaselineForPatchGroupResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeregisterTargetFromMaintenanceWindow(Request: IDeregisterTargetFromMaintenanceWindowRequest): IDeregisterTargetFromMaintenanceWindowResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeregisterTargetFromMaintenanceWindowRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeregisterTargetFromMaintenanceWindowResponseUnmarshaller.Instance;
    Result := Invoke<TDeregisterTargetFromMaintenanceWindowResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DeregisterTaskFromMaintenanceWindow(Request: IDeregisterTaskFromMaintenanceWindowRequest): IDeregisterTaskFromMaintenanceWindowResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeregisterTaskFromMaintenanceWindowRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeregisterTaskFromMaintenanceWindowResponseUnmarshaller.Instance;
    Result := Invoke<TDeregisterTaskFromMaintenanceWindowResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeActivations(Request: IDescribeActivationsRequest): IDescribeActivationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeActivationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeActivationsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeActivationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeAssociation(const AInstanceId: string; const AName: string): IDescribeAssociationResponse;
var
  Request: IDescribeAssociationRequest;
begin
  Request := TDescribeAssociationRequest.Create;
  Request.InstanceId := AInstanceId;
  Request.Name := AName;
  Result := DescribeAssociation(Request);
end;

function TAmazonSimpleSystemsManagementClient.DescribeAssociation(Request: IDescribeAssociationRequest): IDescribeAssociationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeAssociationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeAssociationResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeAssociationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeAssociationExecutionTargets(Request: IDescribeAssociationExecutionTargetsRequest): IDescribeAssociationExecutionTargetsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeAssociationExecutionTargetsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeAssociationExecutionTargetsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeAssociationExecutionTargetsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeAssociationExecutions(Request: IDescribeAssociationExecutionsRequest): IDescribeAssociationExecutionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeAssociationExecutionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeAssociationExecutionsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeAssociationExecutionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeAutomationExecutions(Request: IDescribeAutomationExecutionsRequest): IDescribeAutomationExecutionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeAutomationExecutionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeAutomationExecutionsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeAutomationExecutionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeAutomationStepExecutions(Request: IDescribeAutomationStepExecutionsRequest): IDescribeAutomationStepExecutionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeAutomationStepExecutionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeAutomationStepExecutionsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeAutomationStepExecutionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeAvailablePatches(Request: IDescribeAvailablePatchesRequest): IDescribeAvailablePatchesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeAvailablePatchesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeAvailablePatchesResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeAvailablePatchesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeDocument(const AName: string): IDescribeDocumentResponse;
var
  Request: IDescribeDocumentRequest;
begin
  Request := TDescribeDocumentRequest.Create;
  Request.Name := AName;
  Result := DescribeDocument(Request);
end;

function TAmazonSimpleSystemsManagementClient.DescribeDocument(Request: IDescribeDocumentRequest): IDescribeDocumentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeDocumentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeDocumentResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeDocumentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeDocumentPermission(Request: IDescribeDocumentPermissionRequest): IDescribeDocumentPermissionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeDocumentPermissionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeDocumentPermissionResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeDocumentPermissionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeEffectiveInstanceAssociations(Request: IDescribeEffectiveInstanceAssociationsRequest): IDescribeEffectiveInstanceAssociationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeEffectiveInstanceAssociationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeEffectiveInstanceAssociationsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeEffectiveInstanceAssociationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeEffectivePatchesForPatchBaseline(Request: IDescribeEffectivePatchesForPatchBaselineRequest): IDescribeEffectivePatchesForPatchBaselineResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeEffectivePatchesForPatchBaselineRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeEffectivePatchesForPatchBaselineResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeInstanceAssociationsStatus(Request: IDescribeInstanceAssociationsStatusRequest): IDescribeInstanceAssociationsStatusResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeInstanceAssociationsStatusRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeInstanceAssociationsStatusResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeInstanceAssociationsStatusResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeInstanceInformation: IDescribeInstanceInformationResponse;
begin
  Result := DescribeInstanceInformation(IDescribeInstanceInformationRequest(TDescribeInstanceInformationRequest.Create));
end;

function TAmazonSimpleSystemsManagementClient.DescribeInstanceInformation(Request: IDescribeInstanceInformationRequest): IDescribeInstanceInformationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeInstanceInformationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeInstanceInformationResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeInstanceInformationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeInstancePatchStates(Request: IDescribeInstancePatchStatesRequest): IDescribeInstancePatchStatesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeInstancePatchStatesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeInstancePatchStatesResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeInstancePatchStatesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeInstancePatchStatesForPatchGroup(Request: IDescribeInstancePatchStatesForPatchGroupRequest): IDescribeInstancePatchStatesForPatchGroupResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeInstancePatchStatesForPatchGroupRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeInstancePatchStatesForPatchGroupResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeInstancePatchStatesForPatchGroupResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeInstancePatches(Request: IDescribeInstancePatchesRequest): IDescribeInstancePatchesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeInstancePatchesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeInstancePatchesResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeInstancePatchesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeInventoryDeletions(Request: IDescribeInventoryDeletionsRequest): IDescribeInventoryDeletionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeInventoryDeletionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeInventoryDeletionsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeInventoryDeletionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeMaintenanceWindowExecutionTaskInvocations(Request: IDescribeMaintenanceWindowExecutionTaskInvocationsRequest): IDescribeMaintenanceWindowExecutionTaskInvocationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeMaintenanceWindowExecutionTaskInvocationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeMaintenanceWindowExecutionTaskInvocationsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeMaintenanceWindowExecutionTaskInvocationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeMaintenanceWindowExecutionTasks(Request: IDescribeMaintenanceWindowExecutionTasksRequest): IDescribeMaintenanceWindowExecutionTasksResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeMaintenanceWindowExecutionTasksRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeMaintenanceWindowExecutionTasksResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeMaintenanceWindowExecutionTasksResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeMaintenanceWindowExecutions(Request: IDescribeMaintenanceWindowExecutionsRequest): IDescribeMaintenanceWindowExecutionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeMaintenanceWindowExecutionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeMaintenanceWindowExecutionsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeMaintenanceWindowExecutionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeMaintenanceWindowSchedule(Request: IDescribeMaintenanceWindowScheduleRequest): IDescribeMaintenanceWindowScheduleResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeMaintenanceWindowScheduleRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeMaintenanceWindowScheduleResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeMaintenanceWindowScheduleResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeMaintenanceWindowTargets(Request: IDescribeMaintenanceWindowTargetsRequest): IDescribeMaintenanceWindowTargetsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeMaintenanceWindowTargetsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeMaintenanceWindowTargetsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeMaintenanceWindowTargetsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeMaintenanceWindowTasks(Request: IDescribeMaintenanceWindowTasksRequest): IDescribeMaintenanceWindowTasksResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeMaintenanceWindowTasksRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeMaintenanceWindowTasksResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeMaintenanceWindowTasksResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeMaintenanceWindows(Request: IDescribeMaintenanceWindowsRequest): IDescribeMaintenanceWindowsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeMaintenanceWindowsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeMaintenanceWindowsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeMaintenanceWindowsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeMaintenanceWindowsForTarget(Request: IDescribeMaintenanceWindowsForTargetRequest): IDescribeMaintenanceWindowsForTargetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeMaintenanceWindowsForTargetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeMaintenanceWindowsForTargetResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeMaintenanceWindowsForTargetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeOpsItems(Request: IDescribeOpsItemsRequest): IDescribeOpsItemsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeOpsItemsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeOpsItemsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeOpsItemsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeParameters(Request: IDescribeParametersRequest): IDescribeParametersResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeParametersRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeParametersResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeParametersResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribePatchBaselines(Request: IDescribePatchBaselinesRequest): IDescribePatchBaselinesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribePatchBaselinesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribePatchBaselinesResponseUnmarshaller.Instance;
    Result := Invoke<TDescribePatchBaselinesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribePatchGroupState(Request: IDescribePatchGroupStateRequest): IDescribePatchGroupStateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribePatchGroupStateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribePatchGroupStateResponseUnmarshaller.Instance;
    Result := Invoke<TDescribePatchGroupStateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribePatchGroups(Request: IDescribePatchGroupsRequest): IDescribePatchGroupsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribePatchGroupsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribePatchGroupsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribePatchGroupsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribePatchProperties(Request: IDescribePatchPropertiesRequest): IDescribePatchPropertiesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribePatchPropertiesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribePatchPropertiesResponseUnmarshaller.Instance;
    Result := Invoke<TDescribePatchPropertiesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DescribeSessions(Request: IDescribeSessionsRequest): IDescribeSessionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeSessionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeSessionsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeSessionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.DisassociateOpsItemRelatedItem(Request: IDisassociateOpsItemRelatedItemRequest): IDisassociateOpsItemRelatedItemResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDisassociateOpsItemRelatedItemRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDisassociateOpsItemRelatedItemResponseUnmarshaller.Instance;
    Result := Invoke<TDisassociateOpsItemRelatedItemResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetAutomationExecution(Request: IGetAutomationExecutionRequest): IGetAutomationExecutionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAutomationExecutionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAutomationExecutionResponseUnmarshaller.Instance;
    Result := Invoke<TGetAutomationExecutionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetCalendarState(Request: IGetCalendarStateRequest): IGetCalendarStateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetCalendarStateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetCalendarStateResponseUnmarshaller.Instance;
    Result := Invoke<TGetCalendarStateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetCommandInvocation(Request: IGetCommandInvocationRequest): IGetCommandInvocationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetCommandInvocationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetCommandInvocationResponseUnmarshaller.Instance;
    Result := Invoke<TGetCommandInvocationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetConnectionStatus(Request: IGetConnectionStatusRequest): IGetConnectionStatusResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetConnectionStatusRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetConnectionStatusResponseUnmarshaller.Instance;
    Result := Invoke<TGetConnectionStatusResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetDefaultPatchBaseline(Request: IGetDefaultPatchBaselineRequest): IGetDefaultPatchBaselineResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDefaultPatchBaselineRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDefaultPatchBaselineResponseUnmarshaller.Instance;
    Result := Invoke<TGetDefaultPatchBaselineResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetDeployablePatchSnapshotForInstance(Request: IGetDeployablePatchSnapshotForInstanceRequest): IGetDeployablePatchSnapshotForInstanceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDeployablePatchSnapshotForInstanceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDeployablePatchSnapshotForInstanceResponseUnmarshaller.Instance;
    Result := Invoke<TGetDeployablePatchSnapshotForInstanceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetDocument(const AName: string): IGetDocumentResponse;
var
  Request: IGetDocumentRequest;
begin
  Request := TGetDocumentRequest.Create;
  Request.Name := AName;
  Result := GetDocument(Request);
end;

function TAmazonSimpleSystemsManagementClient.GetDocument(Request: IGetDocumentRequest): IGetDocumentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDocumentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDocumentResponseUnmarshaller.Instance;
    Result := Invoke<TGetDocumentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetInventory(Request: IGetInventoryRequest): IGetInventoryResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetInventoryRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetInventoryResponseUnmarshaller.Instance;
    Result := Invoke<TGetInventoryResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetInventorySchema(Request: IGetInventorySchemaRequest): IGetInventorySchemaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetInventorySchemaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetInventorySchemaResponseUnmarshaller.Instance;
    Result := Invoke<TGetInventorySchemaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetMaintenanceWindow(Request: IGetMaintenanceWindowRequest): IGetMaintenanceWindowResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetMaintenanceWindowRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetMaintenanceWindowResponseUnmarshaller.Instance;
    Result := Invoke<TGetMaintenanceWindowResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetMaintenanceWindowExecution(Request: IGetMaintenanceWindowExecutionRequest): IGetMaintenanceWindowExecutionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetMaintenanceWindowExecutionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetMaintenanceWindowExecutionResponseUnmarshaller.Instance;
    Result := Invoke<TGetMaintenanceWindowExecutionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetMaintenanceWindowExecutionTask(Request: IGetMaintenanceWindowExecutionTaskRequest): IGetMaintenanceWindowExecutionTaskResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetMaintenanceWindowExecutionTaskRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetMaintenanceWindowExecutionTaskResponseUnmarshaller.Instance;
    Result := Invoke<TGetMaintenanceWindowExecutionTaskResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetMaintenanceWindowExecutionTaskInvocation(Request: IGetMaintenanceWindowExecutionTaskInvocationRequest): IGetMaintenanceWindowExecutionTaskInvocationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetMaintenanceWindowExecutionTaskInvocationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetMaintenanceWindowExecutionTaskInvocationResponseUnmarshaller.Instance;
    Result := Invoke<TGetMaintenanceWindowExecutionTaskInvocationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetMaintenanceWindowTask(Request: IGetMaintenanceWindowTaskRequest): IGetMaintenanceWindowTaskResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetMaintenanceWindowTaskRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetMaintenanceWindowTaskResponseUnmarshaller.Instance;
    Result := Invoke<TGetMaintenanceWindowTaskResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetOpsItem(Request: IGetOpsItemRequest): IGetOpsItemResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetOpsItemRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetOpsItemResponseUnmarshaller.Instance;
    Result := Invoke<TGetOpsItemResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetOpsMetadata(Request: IGetOpsMetadataRequest): IGetOpsMetadataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetOpsMetadataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetOpsMetadataResponseUnmarshaller.Instance;
    Result := Invoke<TGetOpsMetadataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetOpsSummary(Request: IGetOpsSummaryRequest): IGetOpsSummaryResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetOpsSummaryRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetOpsSummaryResponseUnmarshaller.Instance;
    Result := Invoke<TGetOpsSummaryResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetParameter(Request: IGetParameterRequest): IGetParameterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetParameterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetParameterResponseUnmarshaller.Instance;
    Result := Invoke<TGetParameterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetParameterHistory(Request: IGetParameterHistoryRequest): IGetParameterHistoryResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetParameterHistoryRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetParameterHistoryResponseUnmarshaller.Instance;
    Result := Invoke<TGetParameterHistoryResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetParameters(Request: IGetParametersRequest): IGetParametersResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetParametersRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetParametersResponseUnmarshaller.Instance;
    Result := Invoke<TGetParametersResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetParametersByPath(Request: IGetParametersByPathRequest): IGetParametersByPathResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetParametersByPathRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetParametersByPathResponseUnmarshaller.Instance;
    Result := Invoke<TGetParametersByPathResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetPatchBaseline(Request: IGetPatchBaselineRequest): IGetPatchBaselineResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetPatchBaselineRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetPatchBaselineResponseUnmarshaller.Instance;
    Result := Invoke<TGetPatchBaselineResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetPatchBaselineForPatchGroup(Request: IGetPatchBaselineForPatchGroupRequest): IGetPatchBaselineForPatchGroupResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetPatchBaselineForPatchGroupRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetPatchBaselineForPatchGroupResponseUnmarshaller.Instance;
    Result := Invoke<TGetPatchBaselineForPatchGroupResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.GetServiceSetting(Request: IGetServiceSettingRequest): IGetServiceSettingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetServiceSettingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetServiceSettingResponseUnmarshaller.Instance;
    Result := Invoke<TGetServiceSettingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.LabelParameterVersion(Request: ILabelParameterVersionRequest): ILabelParameterVersionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TLabelParameterVersionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TLabelParameterVersionResponseUnmarshaller.Instance;
    Result := Invoke<TLabelParameterVersionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListAssociationVersions(Request: IListAssociationVersionsRequest): IListAssociationVersionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListAssociationVersionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListAssociationVersionsResponseUnmarshaller.Instance;
    Result := Invoke<TListAssociationVersionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListAssociations(Request: IListAssociationsRequest): IListAssociationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListAssociationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListAssociationsResponseUnmarshaller.Instance;
    Result := Invoke<TListAssociationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListCommandInvocations: IListCommandInvocationsResponse;
begin
  Result := ListCommandInvocations(IListCommandInvocationsRequest(TListCommandInvocationsRequest.Create));
end;

function TAmazonSimpleSystemsManagementClient.ListCommandInvocations(const ACommandId: string): IListCommandInvocationsResponse;
var
  Request: IListCommandInvocationsRequest;
begin
  Request := TListCommandInvocationsRequest.Create;
  Request.CommandId := ACommandId;
  Result := ListCommandInvocations(Request);
end;

function TAmazonSimpleSystemsManagementClient.ListCommandInvocations(Request: IListCommandInvocationsRequest): IListCommandInvocationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListCommandInvocationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListCommandInvocationsResponseUnmarshaller.Instance;
    Result := Invoke<TListCommandInvocationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListCommands: IListCommandsResponse;
begin
  Result := ListCommands(IListCommandsRequest(TListCommandsRequest.Create));
end;

function TAmazonSimpleSystemsManagementClient.ListCommands(const ACommandId: string): IListCommandsResponse;
var
  Request: IListCommandsRequest;
begin
  Request := TListCommandsRequest.Create;
  Request.CommandId := ACommandId;
  Result := ListCommands(Request);
end;

function TAmazonSimpleSystemsManagementClient.ListCommands(Request: IListCommandsRequest): IListCommandsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListCommandsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListCommandsResponseUnmarshaller.Instance;
    Result := Invoke<TListCommandsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListComplianceItems(Request: IListComplianceItemsRequest): IListComplianceItemsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListComplianceItemsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListComplianceItemsResponseUnmarshaller.Instance;
    Result := Invoke<TListComplianceItemsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListComplianceSummaries(Request: IListComplianceSummariesRequest): IListComplianceSummariesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListComplianceSummariesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListComplianceSummariesResponseUnmarshaller.Instance;
    Result := Invoke<TListComplianceSummariesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListDocumentMetadataHistory(Request: IListDocumentMetadataHistoryRequest): IListDocumentMetadataHistoryResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDocumentMetadataHistoryRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDocumentMetadataHistoryResponseUnmarshaller.Instance;
    Result := Invoke<TListDocumentMetadataHistoryResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListDocumentVersions(Request: IListDocumentVersionsRequest): IListDocumentVersionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDocumentVersionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDocumentVersionsResponseUnmarshaller.Instance;
    Result := Invoke<TListDocumentVersionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListDocuments: IListDocumentsResponse;
begin
  Result := ListDocuments(IListDocumentsRequest(TListDocumentsRequest.Create));
end;

function TAmazonSimpleSystemsManagementClient.ListDocuments(Request: IListDocumentsRequest): IListDocumentsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDocumentsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDocumentsResponseUnmarshaller.Instance;
    Result := Invoke<TListDocumentsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListInventoryEntries(Request: IListInventoryEntriesRequest): IListInventoryEntriesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListInventoryEntriesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListInventoryEntriesResponseUnmarshaller.Instance;
    Result := Invoke<TListInventoryEntriesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListOpsItemEvents(Request: IListOpsItemEventsRequest): IListOpsItemEventsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListOpsItemEventsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListOpsItemEventsResponseUnmarshaller.Instance;
    Result := Invoke<TListOpsItemEventsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListOpsItemRelatedItems(Request: IListOpsItemRelatedItemsRequest): IListOpsItemRelatedItemsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListOpsItemRelatedItemsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListOpsItemRelatedItemsResponseUnmarshaller.Instance;
    Result := Invoke<TListOpsItemRelatedItemsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListOpsMetadata(Request: IListOpsMetadataRequest): IListOpsMetadataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListOpsMetadataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListOpsMetadataResponseUnmarshaller.Instance;
    Result := Invoke<TListOpsMetadataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListResourceComplianceSummaries(Request: IListResourceComplianceSummariesRequest): IListResourceComplianceSummariesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListResourceComplianceSummariesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListResourceComplianceSummariesResponseUnmarshaller.Instance;
    Result := Invoke<TListResourceComplianceSummariesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListResourceDataSync(Request: IListResourceDataSyncRequest): IListResourceDataSyncResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListResourceDataSyncRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListResourceDataSyncResponseUnmarshaller.Instance;
    Result := Invoke<TListResourceDataSyncResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListTagsForResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListTagsForResourceResponseUnmarshaller.Instance;
    Result := Invoke<TListTagsForResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ModifyDocumentPermission(Request: IModifyDocumentPermissionRequest): IModifyDocumentPermissionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TModifyDocumentPermissionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TModifyDocumentPermissionResponseUnmarshaller.Instance;
    Result := Invoke<TModifyDocumentPermissionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.PutComplianceItems(Request: IPutComplianceItemsRequest): IPutComplianceItemsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutComplianceItemsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutComplianceItemsResponseUnmarshaller.Instance;
    Result := Invoke<TPutComplianceItemsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.PutInventory(Request: IPutInventoryRequest): IPutInventoryResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutInventoryRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutInventoryResponseUnmarshaller.Instance;
    Result := Invoke<TPutInventoryResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.PutParameter(Request: IPutParameterRequest): IPutParameterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutParameterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutParameterResponseUnmarshaller.Instance;
    Result := Invoke<TPutParameterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.RegisterDefaultPatchBaseline(Request: IRegisterDefaultPatchBaselineRequest): IRegisterDefaultPatchBaselineResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRegisterDefaultPatchBaselineRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRegisterDefaultPatchBaselineResponseUnmarshaller.Instance;
    Result := Invoke<TRegisterDefaultPatchBaselineResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.RegisterPatchBaselineForPatchGroup(Request: IRegisterPatchBaselineForPatchGroupRequest): IRegisterPatchBaselineForPatchGroupResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRegisterPatchBaselineForPatchGroupRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRegisterPatchBaselineForPatchGroupResponseUnmarshaller.Instance;
    Result := Invoke<TRegisterPatchBaselineForPatchGroupResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.RegisterTargetWithMaintenanceWindow(Request: IRegisterTargetWithMaintenanceWindowRequest): IRegisterTargetWithMaintenanceWindowResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRegisterTargetWithMaintenanceWindowRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRegisterTargetWithMaintenanceWindowResponseUnmarshaller.Instance;
    Result := Invoke<TRegisterTargetWithMaintenanceWindowResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.RegisterTaskWithMaintenanceWindow(Request: IRegisterTaskWithMaintenanceWindowRequest): IRegisterTaskWithMaintenanceWindowResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRegisterTaskWithMaintenanceWindowRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRegisterTaskWithMaintenanceWindowResponseUnmarshaller.Instance;
    Result := Invoke<TRegisterTaskWithMaintenanceWindowResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.RemoveTagsFromResource(Request: IRemoveTagsFromResourceRequest): IRemoveTagsFromResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRemoveTagsFromResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRemoveTagsFromResourceResponseUnmarshaller.Instance;
    Result := Invoke<TRemoveTagsFromResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ResetServiceSetting(Request: IResetServiceSettingRequest): IResetServiceSettingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TResetServiceSettingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TResetServiceSettingResponseUnmarshaller.Instance;
    Result := Invoke<TResetServiceSettingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.ResumeSession(Request: IResumeSessionRequest): IResumeSessionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TResumeSessionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TResumeSessionResponseUnmarshaller.Instance;
    Result := Invoke<TResumeSessionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.SendAutomationSignal(Request: ISendAutomationSignalRequest): ISendAutomationSignalResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendAutomationSignalRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendAutomationSignalResponseUnmarshaller.Instance;
    Result := Invoke<TSendAutomationSignalResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.SendCommand(const ADocumentName: string; const AInstanceIds: TList<string>): ISendCommandResponse;
var
  Request: ISendCommandRequest;
begin
  Request := TSendCommandRequest.Create;
  Request.DocumentName := ADocumentName;
  Request.InstanceIds := AInstanceIds;
  Result := SendCommand(Request);
end;

function TAmazonSimpleSystemsManagementClient.SendCommand(Request: ISendCommandRequest): ISendCommandResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendCommandRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendCommandResponseUnmarshaller.Instance;
    Result := Invoke<TSendCommandResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.StartAssociationsOnce(Request: IStartAssociationsOnceRequest): IStartAssociationsOnceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartAssociationsOnceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartAssociationsOnceResponseUnmarshaller.Instance;
    Result := Invoke<TStartAssociationsOnceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.StartAutomationExecution(Request: IStartAutomationExecutionRequest): IStartAutomationExecutionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartAutomationExecutionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartAutomationExecutionResponseUnmarshaller.Instance;
    Result := Invoke<TStartAutomationExecutionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.StartChangeRequestExecution(Request: IStartChangeRequestExecutionRequest): IStartChangeRequestExecutionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartChangeRequestExecutionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartChangeRequestExecutionResponseUnmarshaller.Instance;
    Result := Invoke<TStartChangeRequestExecutionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.StartSession(Request: IStartSessionRequest): IStartSessionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartSessionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartSessionResponseUnmarshaller.Instance;
    Result := Invoke<TStartSessionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.StopAutomationExecution(Request: IStopAutomationExecutionRequest): IStopAutomationExecutionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStopAutomationExecutionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStopAutomationExecutionResponseUnmarshaller.Instance;
    Result := Invoke<TStopAutomationExecutionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.TerminateSession(Request: ITerminateSessionRequest): ITerminateSessionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TTerminateSessionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TTerminateSessionResponseUnmarshaller.Instance;
    Result := Invoke<TTerminateSessionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UnlabelParameterVersion(Request: IUnlabelParameterVersionRequest): IUnlabelParameterVersionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUnlabelParameterVersionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUnlabelParameterVersionResponseUnmarshaller.Instance;
    Result := Invoke<TUnlabelParameterVersionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateAssociation(Request: IUpdateAssociationRequest): IUpdateAssociationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateAssociationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateAssociationResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateAssociationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateAssociationStatus(Request: IUpdateAssociationStatusRequest): IUpdateAssociationStatusResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateAssociationStatusRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateAssociationStatusResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateAssociationStatusResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateDocument(Request: IUpdateDocumentRequest): IUpdateDocumentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateDocumentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateDocumentResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateDocumentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateDocumentDefaultVersion(Request: IUpdateDocumentDefaultVersionRequest): IUpdateDocumentDefaultVersionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateDocumentDefaultVersionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateDocumentDefaultVersionResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateDocumentDefaultVersionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateDocumentMetadata(Request: IUpdateDocumentMetadataRequest): IUpdateDocumentMetadataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateDocumentMetadataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateDocumentMetadataResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateDocumentMetadataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateMaintenanceWindow(Request: IUpdateMaintenanceWindowRequest): IUpdateMaintenanceWindowResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateMaintenanceWindowRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateMaintenanceWindowResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateMaintenanceWindowResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateMaintenanceWindowTarget(Request: IUpdateMaintenanceWindowTargetRequest): IUpdateMaintenanceWindowTargetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateMaintenanceWindowTargetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateMaintenanceWindowTargetResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateMaintenanceWindowTargetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateMaintenanceWindowTask(Request: IUpdateMaintenanceWindowTaskRequest): IUpdateMaintenanceWindowTaskResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateMaintenanceWindowTaskRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateMaintenanceWindowTaskResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateMaintenanceWindowTaskResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateManagedInstanceRole(Request: IUpdateManagedInstanceRoleRequest): IUpdateManagedInstanceRoleResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateManagedInstanceRoleRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateManagedInstanceRoleResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateManagedInstanceRoleResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateOpsItem(Request: IUpdateOpsItemRequest): IUpdateOpsItemResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateOpsItemRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateOpsItemResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateOpsItemResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateOpsMetadata(Request: IUpdateOpsMetadataRequest): IUpdateOpsMetadataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateOpsMetadataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateOpsMetadataResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateOpsMetadataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdatePatchBaseline(Request: IUpdatePatchBaselineRequest): IUpdatePatchBaselineResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdatePatchBaselineRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdatePatchBaselineResponseUnmarshaller.Instance;
    Result := Invoke<TUpdatePatchBaselineResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateResourceDataSync(Request: IUpdateResourceDataSyncRequest): IUpdateResourceDataSyncResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateResourceDataSyncRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateResourceDataSyncResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateResourceDataSyncResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleSystemsManagementClient.UpdateServiceSetting(Request: IUpdateServiceSettingRequest): IUpdateServiceSettingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateServiceSettingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateServiceSettingResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateServiceSettingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
