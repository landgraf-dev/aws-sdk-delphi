unit AWS.SSM;

interface

uses
  AWS.SSM.Client, 
  AWS.SSM.ClientIntf, 
  AWS.SSM.Config, 
  AWS.SSM.Enums, 
  AWS.SSM.Exception, 
  AWS.SSM.Metadata, 
  AWS.SSM.Model.AccountSharingInfo, 
  AWS.SSM.Model.Activation, 
  AWS.SSM.Model.AddTagsToResourceRequest, 
  AWS.SSM.Model.AddTagsToResourceResponse, 
  AWS.SSM.Model.AlreadyExistsException, 
  AWS.SSM.Model.AssociatedInstancesException, 
  AWS.SSM.Model.AssociateOpsItemRelatedItemRequest, 
  AWS.SSM.Model.AssociateOpsItemRelatedItemResponse, 
  AWS.SSM.Model.Association, 
  AWS.SSM.Model.AssociationAlreadyExistsException, 
  AWS.SSM.Model.AssociationDescription, 
  AWS.SSM.Model.AssociationDoesNotExistException, 
  AWS.SSM.Model.AssociationExecution, 
  AWS.SSM.Model.AssociationExecutionDoesNotExistException, 
  AWS.SSM.Model.AssociationExecutionFilter, 
  AWS.SSM.Model.AssociationExecutionTarget, 
  AWS.SSM.Model.AssociationExecutionTargetsFilter, 
  AWS.SSM.Model.AssociationFilter, 
  AWS.SSM.Model.AssociationLimitExceededException, 
  AWS.SSM.Model.AssociationOverview, 
  AWS.SSM.Model.AssociationStatus, 
  AWS.SSM.Model.AssociationVersionInfo, 
  AWS.SSM.Model.AssociationVersionLimitExceededException, 
  AWS.SSM.Model.AttachmentContent, 
  AWS.SSM.Model.AttachmentInformation, 
  AWS.SSM.Model.AttachmentsSource, 
  AWS.SSM.Model.AutomationDefinitionNotApprovedException, 
  AWS.SSM.Model.AutomationDefinitionNotFoundException, 
  AWS.SSM.Model.AutomationDefinitionVersionNotFoundException, 
  AWS.SSM.Model.AutomationExecution, 
  AWS.SSM.Model.AutomationExecutionFilter, 
  AWS.SSM.Model.AutomationExecutionLimitExceededException, 
  AWS.SSM.Model.AutomationExecutionMetadata, 
  AWS.SSM.Model.AutomationExecutionNotFoundException, 
  AWS.SSM.Model.AutomationStepNotFoundException, 
  AWS.SSM.Model.BaselineOverride, 
  AWS.SSM.Model.CancelCommandRequest, 
  AWS.SSM.Model.CancelCommandResponse, 
  AWS.SSM.Model.CancelMaintenanceWindowExecutionRequest, 
  AWS.SSM.Model.CancelMaintenanceWindowExecutionResponse, 
  AWS.SSM.Model.CloudWatchOutputConfig, 
  AWS.SSM.Model.Command, 
  AWS.SSM.Model.CommandFilter, 
  AWS.SSM.Model.CommandInvocation, 
  AWS.SSM.Model.CommandPlugin, 
  AWS.SSM.Model.ComplianceExecutionSummary, 
  AWS.SSM.Model.ComplianceItem, 
  AWS.SSM.Model.ComplianceItemEntry, 
  AWS.SSM.Model.ComplianceStringFilter, 
  AWS.SSM.Model.ComplianceSummaryItem, 
  AWS.SSM.Model.ComplianceTypeCountLimitExceededException, 
  AWS.SSM.Model.CompliantSummary, 
  AWS.SSM.Model.CreateActivationRequest, 
  AWS.SSM.Model.CreateActivationResponse, 
  AWS.SSM.Model.CreateAssociationBatchRequest, 
  AWS.SSM.Model.CreateAssociationBatchRequestEntry, 
  AWS.SSM.Model.CreateAssociationBatchResponse, 
  AWS.SSM.Model.CreateAssociationRequest, 
  AWS.SSM.Model.CreateAssociationResponse, 
  AWS.SSM.Model.CreateDocumentRequest, 
  AWS.SSM.Model.CreateDocumentResponse, 
  AWS.SSM.Model.CreateMaintenanceWindowRequest, 
  AWS.SSM.Model.CreateMaintenanceWindowResponse, 
  AWS.SSM.Model.CreateOpsItemRequest, 
  AWS.SSM.Model.CreateOpsItemResponse, 
  AWS.SSM.Model.CreateOpsMetadataRequest, 
  AWS.SSM.Model.CreateOpsMetadataResponse, 
  AWS.SSM.Model.CreatePatchBaselineRequest, 
  AWS.SSM.Model.CreatePatchBaselineResponse, 
  AWS.SSM.Model.CreateResourceDataSyncRequest, 
  AWS.SSM.Model.CreateResourceDataSyncResponse, 
  AWS.SSM.Model.CustomSchemaCountLimitExceededException, 
  AWS.SSM.Model.DeleteActivationRequest, 
  AWS.SSM.Model.DeleteActivationResponse, 
  AWS.SSM.Model.DeleteAssociationRequest, 
  AWS.SSM.Model.DeleteAssociationResponse, 
  AWS.SSM.Model.DeleteDocumentRequest, 
  AWS.SSM.Model.DeleteDocumentResponse, 
  AWS.SSM.Model.DeleteInventoryRequest, 
  AWS.SSM.Model.DeleteInventoryResponse, 
  AWS.SSM.Model.DeleteMaintenanceWindowRequest, 
  AWS.SSM.Model.DeleteMaintenanceWindowResponse, 
  AWS.SSM.Model.DeleteOpsMetadataRequest, 
  AWS.SSM.Model.DeleteOpsMetadataResponse, 
  AWS.SSM.Model.DeleteParameterRequest, 
  AWS.SSM.Model.DeleteParameterResponse, 
  AWS.SSM.Model.DeleteParametersRequest, 
  AWS.SSM.Model.DeleteParametersResponse, 
  AWS.SSM.Model.DeletePatchBaselineRequest, 
  AWS.SSM.Model.DeletePatchBaselineResponse, 
  AWS.SSM.Model.DeleteResourceDataSyncRequest, 
  AWS.SSM.Model.DeleteResourceDataSyncResponse, 
  AWS.SSM.Model.DeregisterManagedInstanceRequest, 
  AWS.SSM.Model.DeregisterManagedInstanceResponse, 
  AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowRequest, 
  AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowResponse, 
  AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowRequest, 
  AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowResponse, 
  AWS.SSM.Model.DescribeActivationsFilter, 
  AWS.SSM.Model.DescribeActivationsRequest, 
  AWS.SSM.Model.DescribeActivationsResponse, 
  AWS.SSM.Model.DescribeAssociationExecutionsRequest, 
  AWS.SSM.Model.DescribeAssociationExecutionsResponse, 
  AWS.SSM.Model.DescribeAssociationExecutionTargetsRequest, 
  AWS.SSM.Model.DescribeAssociationExecutionTargetsResponse, 
  AWS.SSM.Model.DescribeAssociationRequest, 
  AWS.SSM.Model.DescribeAssociationResponse, 
  AWS.SSM.Model.DescribeAutomationExecutionsRequest, 
  AWS.SSM.Model.DescribeAutomationExecutionsResponse, 
  AWS.SSM.Model.DescribeAutomationStepExecutionsRequest, 
  AWS.SSM.Model.DescribeAutomationStepExecutionsResponse, 
  AWS.SSM.Model.DescribeAvailablePatchesRequest, 
  AWS.SSM.Model.DescribeAvailablePatchesResponse, 
  AWS.SSM.Model.DescribeDocumentPermissionRequest, 
  AWS.SSM.Model.DescribeDocumentPermissionResponse, 
  AWS.SSM.Model.DescribeDocumentRequest, 
  AWS.SSM.Model.DescribeDocumentResponse, 
  AWS.SSM.Model.DescribeEffectiveInstanceAssociationsRequest, 
  AWS.SSM.Model.DescribeEffectiveInstanceAssociationsResponse, 
  AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineRequest, 
  AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineResponse, 
  AWS.SSM.Model.DescribeInstanceAssociationsStatusRequest, 
  AWS.SSM.Model.DescribeInstanceAssociationsStatusResponse, 
  AWS.SSM.Model.DescribeInstanceInformationRequest, 
  AWS.SSM.Model.DescribeInstanceInformationResponse, 
  AWS.SSM.Model.DescribeInstancePatchesRequest, 
  AWS.SSM.Model.DescribeInstancePatchesResponse, 
  AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupRequest, 
  AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupResponse, 
  AWS.SSM.Model.DescribeInstancePatchStatesRequest, 
  AWS.SSM.Model.DescribeInstancePatchStatesResponse, 
  AWS.SSM.Model.DescribeInventoryDeletionsRequest, 
  AWS.SSM.Model.DescribeInventoryDeletionsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowScheduleRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowScheduleResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowsForTargetRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowsForTargetResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowTargetsRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowTargetsResponse, 
  AWS.SSM.Model.DescribeMaintenanceWindowTasksRequest, 
  AWS.SSM.Model.DescribeMaintenanceWindowTasksResponse, 
  AWS.SSM.Model.DescribeOpsItemsRequest, 
  AWS.SSM.Model.DescribeOpsItemsResponse, 
  AWS.SSM.Model.DescribeParametersRequest, 
  AWS.SSM.Model.DescribeParametersResponse, 
  AWS.SSM.Model.DescribePatchBaselinesRequest, 
  AWS.SSM.Model.DescribePatchBaselinesResponse, 
  AWS.SSM.Model.DescribePatchGroupsRequest, 
  AWS.SSM.Model.DescribePatchGroupsResponse, 
  AWS.SSM.Model.DescribePatchGroupStateRequest, 
  AWS.SSM.Model.DescribePatchGroupStateResponse, 
  AWS.SSM.Model.DescribePatchPropertiesRequest, 
  AWS.SSM.Model.DescribePatchPropertiesResponse, 
  AWS.SSM.Model.DescribeSessionsRequest, 
  AWS.SSM.Model.DescribeSessionsResponse, 
  AWS.SSM.Model.DisassociateOpsItemRelatedItemRequest, 
  AWS.SSM.Model.DisassociateOpsItemRelatedItemResponse, 
  AWS.SSM.Model.DocumentAlreadyExistsException, 
  AWS.SSM.Model.DocumentDefaultVersionDescription, 
  AWS.SSM.Model.DocumentDescription, 
  AWS.SSM.Model.DocumentFilter, 
  AWS.SSM.Model.DocumentIdentifier, 
  AWS.SSM.Model.DocumentKeyValuesFilter, 
  AWS.SSM.Model.DocumentLimitExceededException, 
  AWS.SSM.Model.DocumentMetadataResponseInfo, 
  AWS.SSM.Model.DocumentParameter, 
  AWS.SSM.Model.DocumentPermissionLimitException, 
  AWS.SSM.Model.DocumentRequires, 
  AWS.SSM.Model.DocumentReviewCommentSource, 
  AWS.SSM.Model.DocumentReviewerResponseSource, 
  AWS.SSM.Model.DocumentReviews, 
  AWS.SSM.Model.DocumentVersionInfo, 
  AWS.SSM.Model.DocumentVersionLimitExceededException, 
  AWS.SSM.Model.DoesNotExistException, 
  AWS.SSM.Model.DuplicateDocumentContentException, 
  AWS.SSM.Model.DuplicateDocumentVersionNameException, 
  AWS.SSM.Model.DuplicateInstanceIdException, 
  AWS.SSM.Model.EffectivePatch, 
  AWS.SSM.Model.FailedCreateAssociation, 
  AWS.SSM.Model.FailureDetails, 
  AWS.SSM.Model.FeatureNotAvailableException, 
  AWS.SSM.Model.GetAutomationExecutionRequest, 
  AWS.SSM.Model.GetAutomationExecutionResponse, 
  AWS.SSM.Model.GetCalendarStateRequest, 
  AWS.SSM.Model.GetCalendarStateResponse, 
  AWS.SSM.Model.GetCommandInvocationRequest, 
  AWS.SSM.Model.GetCommandInvocationResponse, 
  AWS.SSM.Model.GetConnectionStatusRequest, 
  AWS.SSM.Model.GetConnectionStatusResponse, 
  AWS.SSM.Model.GetDefaultPatchBaselineRequest, 
  AWS.SSM.Model.GetDefaultPatchBaselineResponse, 
  AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceRequest, 
  AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceResponse, 
  AWS.SSM.Model.GetDocumentRequest, 
  AWS.SSM.Model.GetDocumentResponse, 
  AWS.SSM.Model.GetInventoryRequest, 
  AWS.SSM.Model.GetInventoryResponse, 
  AWS.SSM.Model.GetInventorySchemaRequest, 
  AWS.SSM.Model.GetInventorySchemaResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionRequest, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationRequest, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationResponse, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskRequest, 
  AWS.SSM.Model.GetMaintenanceWindowExecutionTaskResponse, 
  AWS.SSM.Model.GetMaintenanceWindowRequest, 
  AWS.SSM.Model.GetMaintenanceWindowResponse, 
  AWS.SSM.Model.GetMaintenanceWindowTaskRequest, 
  AWS.SSM.Model.GetMaintenanceWindowTaskResponse, 
  AWS.SSM.Model.GetOpsItemRequest, 
  AWS.SSM.Model.GetOpsItemResponse, 
  AWS.SSM.Model.GetOpsMetadataRequest, 
  AWS.SSM.Model.GetOpsMetadataResponse, 
  AWS.SSM.Model.GetOpsSummaryRequest, 
  AWS.SSM.Model.GetOpsSummaryResponse, 
  AWS.SSM.Model.GetParameterHistoryRequest, 
  AWS.SSM.Model.GetParameterHistoryResponse, 
  AWS.SSM.Model.GetParameterRequest, 
  AWS.SSM.Model.GetParameterResponse, 
  AWS.SSM.Model.GetParametersByPathRequest, 
  AWS.SSM.Model.GetParametersByPathResponse, 
  AWS.SSM.Model.GetParametersRequest, 
  AWS.SSM.Model.GetParametersResponse, 
  AWS.SSM.Model.GetPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Model.GetPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.GetPatchBaselineRequest, 
  AWS.SSM.Model.GetPatchBaselineResponse, 
  AWS.SSM.Model.GetServiceSettingRequest, 
  AWS.SSM.Model.GetServiceSettingResponse, 
  AWS.SSM.Model.HierarchyLevelLimitExceededException, 
  AWS.SSM.Model.HierarchyTypeMismatchException, 
  AWS.SSM.Model.IdempotentParameterMismatchException, 
  AWS.SSM.Model.IncompatiblePolicyException, 
  AWS.SSM.Model.InstanceAggregatedAssociationOverview, 
  AWS.SSM.Model.InstanceAssociation, 
  AWS.SSM.Model.InstanceAssociationOutputLocation, 
  AWS.SSM.Model.InstanceAssociationOutputUrl, 
  AWS.SSM.Model.InstanceAssociationStatusInfo, 
  AWS.SSM.Model.InstanceInformation, 
  AWS.SSM.Model.InstanceInformationFilter, 
  AWS.SSM.Model.InstanceInformationStringFilter, 
  AWS.SSM.Model.InstancePatchState, 
  AWS.SSM.Model.InstancePatchStateFilter, 
  AWS.SSM.Model.InternalServerErrorException, 
  AWS.SSM.Model.InvalidActivationException, 
  AWS.SSM.Model.InvalidActivationIdException, 
  AWS.SSM.Model.InvalidAggregatorException, 
  AWS.SSM.Model.InvalidAllowedPatternException, 
  AWS.SSM.Model.InvalidAssociationException, 
  AWS.SSM.Model.InvalidAssociationVersionException, 
  AWS.SSM.Model.InvalidAutomationExecutionParametersException, 
  AWS.SSM.Model.InvalidAutomationSignalException, 
  AWS.SSM.Model.InvalidAutomationStatusUpdateException, 
  AWS.SSM.Model.InvalidCommandIdException, 
  AWS.SSM.Model.InvalidDeleteInventoryParametersException, 
  AWS.SSM.Model.InvalidDeletionIdException, 
  AWS.SSM.Model.InvalidDocumentContentException, 
  AWS.SSM.Model.InvalidDocumentException, 
  AWS.SSM.Model.InvalidDocumentOperationException, 
  AWS.SSM.Model.InvalidDocumentSchemaVersionException, 
  AWS.SSM.Model.InvalidDocumentTypeException, 
  AWS.SSM.Model.InvalidDocumentVersionException, 
  AWS.SSM.Model.InvalidFilterException, 
  AWS.SSM.Model.InvalidFilterKeyException, 
  AWS.SSM.Model.InvalidFilterOptionException, 
  AWS.SSM.Model.InvalidFilterValueException, 
  AWS.SSM.Model.InvalidInstanceIdException, 
  AWS.SSM.Model.InvalidInstanceInformationFilterValueException, 
  AWS.SSM.Model.InvalidInventoryGroupException, 
  AWS.SSM.Model.InvalidInventoryItemContextException, 
  AWS.SSM.Model.InvalidInventoryRequestException, 
  AWS.SSM.Model.InvalidItemContentException, 
  AWS.SSM.Model.InvalidKeyIdException, 
  AWS.SSM.Model.InvalidNextTokenException, 
  AWS.SSM.Model.InvalidNotificationConfigException, 
  AWS.SSM.Model.InvalidOptionException, 
  AWS.SSM.Model.InvalidOutputFolderException, 
  AWS.SSM.Model.InvalidOutputLocationException, 
  AWS.SSM.Model.InvalidParametersException, 
  AWS.SSM.Model.InvalidPermissionTypeException, 
  AWS.SSM.Model.InvalidPluginNameException, 
  AWS.SSM.Model.InvalidPolicyAttributeException, 
  AWS.SSM.Model.InvalidPolicyTypeException, 
  AWS.SSM.Model.InvalidResourceIdException, 
  AWS.SSM.Model.InvalidResourceTypeException, 
  AWS.SSM.Model.InvalidResultAttributeException, 
  AWS.SSM.Model.InvalidRoleException, 
  AWS.SSM.Model.InvalidScheduleException, 
  AWS.SSM.Model.InvalidTargetException, 
  AWS.SSM.Model.InvalidTargetMapsException, 
  AWS.SSM.Model.InvalidTypeNameException, 
  AWS.SSM.Model.InvalidUpdateException, 
  AWS.SSM.Model.InventoryAggregator, 
  AWS.SSM.Model.InventoryDeletionStatusItem, 
  AWS.SSM.Model.InventoryDeletionSummary, 
  AWS.SSM.Model.InventoryDeletionSummaryItem, 
  AWS.SSM.Model.InventoryFilter, 
  AWS.SSM.Model.InventoryGroup, 
  AWS.SSM.Model.InventoryItem, 
  AWS.SSM.Model.InventoryItemAttribute, 
  AWS.SSM.Model.InventoryItemSchema, 
  AWS.SSM.Model.InventoryResultEntity, 
  AWS.SSM.Model.InventoryResultItem, 
  AWS.SSM.Model.InvocationDoesNotExistException, 
  AWS.SSM.Model.ItemContentMismatchException, 
  AWS.SSM.Model.ItemSizeLimitExceededException, 
  AWS.SSM.Model.LabelParameterVersionRequest, 
  AWS.SSM.Model.LabelParameterVersionResponse, 
  AWS.SSM.Model.ListAssociationsRequest, 
  AWS.SSM.Model.ListAssociationsResponse, 
  AWS.SSM.Model.ListAssociationVersionsRequest, 
  AWS.SSM.Model.ListAssociationVersionsResponse, 
  AWS.SSM.Model.ListCommandInvocationsRequest, 
  AWS.SSM.Model.ListCommandInvocationsResponse, 
  AWS.SSM.Model.ListCommandsRequest, 
  AWS.SSM.Model.ListCommandsResponse, 
  AWS.SSM.Model.ListComplianceItemsRequest, 
  AWS.SSM.Model.ListComplianceItemsResponse, 
  AWS.SSM.Model.ListComplianceSummariesRequest, 
  AWS.SSM.Model.ListComplianceSummariesResponse, 
  AWS.SSM.Model.ListDocumentMetadataHistoryRequest, 
  AWS.SSM.Model.ListDocumentMetadataHistoryResponse, 
  AWS.SSM.Model.ListDocumentsRequest, 
  AWS.SSM.Model.ListDocumentsResponse, 
  AWS.SSM.Model.ListDocumentVersionsRequest, 
  AWS.SSM.Model.ListDocumentVersionsResponse, 
  AWS.SSM.Model.ListInventoryEntriesRequest, 
  AWS.SSM.Model.ListInventoryEntriesResponse, 
  AWS.SSM.Model.ListOpsItemEventsRequest, 
  AWS.SSM.Model.ListOpsItemEventsResponse, 
  AWS.SSM.Model.ListOpsItemRelatedItemsRequest, 
  AWS.SSM.Model.ListOpsItemRelatedItemsResponse, 
  AWS.SSM.Model.ListOpsMetadataRequest, 
  AWS.SSM.Model.ListOpsMetadataResponse, 
  AWS.SSM.Model.ListResourceComplianceSummariesRequest, 
  AWS.SSM.Model.ListResourceComplianceSummariesResponse, 
  AWS.SSM.Model.ListResourceDataSyncRequest, 
  AWS.SSM.Model.ListResourceDataSyncResponse, 
  AWS.SSM.Model.ListTagsForResourceRequest, 
  AWS.SSM.Model.ListTagsForResourceResponse, 
  AWS.SSM.Model.LoggingInfo, 
  AWS.SSM.Model.MaintenanceWindowAutomationParameters, 
  AWS.SSM.Model.MaintenanceWindowExecution, 
  AWS.SSM.Model.MaintenanceWindowExecutionTaskIdentity, 
  AWS.SSM.Model.MaintenanceWindowExecutionTaskInvocationIdentity, 
  AWS.SSM.Model.MaintenanceWindowFilter, 
  AWS.SSM.Model.MaintenanceWindowIdentity, 
  AWS.SSM.Model.MaintenanceWindowIdentityForTarget, 
  AWS.SSM.Model.MaintenanceWindowLambdaParameters, 
  AWS.SSM.Model.MaintenanceWindowRunCommandParameters, 
  AWS.SSM.Model.MaintenanceWindowStepFunctionsParameters, 
  AWS.SSM.Model.MaintenanceWindowTarget, 
  AWS.SSM.Model.MaintenanceWindowTask, 
  AWS.SSM.Model.MaintenanceWindowTaskInvocationParameters, 
  AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression, 
  AWS.SSM.Model.MaxDocumentSizeExceededException, 
  AWS.SSM.Model.MetadataValue, 
  AWS.SSM.Model.ModifyDocumentPermissionRequest, 
  AWS.SSM.Model.ModifyDocumentPermissionResponse, 
  AWS.SSM.Model.NonCompliantSummary, 
  AWS.SSM.Model.NotificationConfig, 
  AWS.SSM.Model.OpsAggregator, 
  AWS.SSM.Model.OpsEntity, 
  AWS.SSM.Model.OpsEntityItem, 
  AWS.SSM.Model.OpsFilter, 
  AWS.SSM.Model.OpsItem, 
  AWS.SSM.Model.OpsItemAlreadyExistsException, 
  AWS.SSM.Model.OpsItemDataValue, 
  AWS.SSM.Model.OpsItemEventFilter, 
  AWS.SSM.Model.OpsItemEventSummary, 
  AWS.SSM.Model.OpsItemFilter, 
  AWS.SSM.Model.OpsItemIdentity, 
  AWS.SSM.Model.OpsItemInvalidParameterException, 
  AWS.SSM.Model.OpsItemLimitExceededException, 
  AWS.SSM.Model.OpsItemNotFoundException, 
  AWS.SSM.Model.OpsItemNotification, 
  AWS.SSM.Model.OpsItemRelatedItemAlreadyExistsException, 
  AWS.SSM.Model.OpsItemRelatedItemAssociationNotFoundException, 
  AWS.SSM.Model.OpsItemRelatedItemsFilter, 
  AWS.SSM.Model.OpsItemRelatedItemSummary, 
  AWS.SSM.Model.OpsItemSummary, 
  AWS.SSM.Model.OpsMetadata, 
  AWS.SSM.Model.OpsMetadataAlreadyExistsException, 
  AWS.SSM.Model.OpsMetadataFilter, 
  AWS.SSM.Model.OpsMetadataInvalidArgumentException, 
  AWS.SSM.Model.OpsMetadataKeyLimitExceededException, 
  AWS.SSM.Model.OpsMetadataLimitExceededException, 
  AWS.SSM.Model.OpsMetadataNotFoundException, 
  AWS.SSM.Model.OpsMetadataTooManyUpdatesException, 
  AWS.SSM.Model.OpsResultAttribute, 
  AWS.SSM.Model.OutputSource, 
  AWS.SSM.Model.Parameter, 
  AWS.SSM.Model.ParameterAlreadyExistsException, 
  AWS.SSM.Model.ParameterHistory, 
  AWS.SSM.Model.ParameterInlinePolicy, 
  AWS.SSM.Model.ParameterLimitExceededException, 
  AWS.SSM.Model.ParameterMaxVersionLimitExceededException, 
  AWS.SSM.Model.ParameterMetadata, 
  AWS.SSM.Model.ParameterNotFoundException, 
  AWS.SSM.Model.ParameterPatternMismatchException, 
  AWS.SSM.Model.ParametersFilter, 
  AWS.SSM.Model.ParameterStringFilter, 
  AWS.SSM.Model.ParameterVersionLabelLimitExceededException, 
  AWS.SSM.Model.ParameterVersionNotFoundException, 
  AWS.SSM.Model.Patch, 
  AWS.SSM.Model.PatchBaselineIdentity, 
  AWS.SSM.Model.PatchComplianceData, 
  AWS.SSM.Model.PatchFilter, 
  AWS.SSM.Model.PatchFilterGroup, 
  AWS.SSM.Model.PatchGroupPatchBaselineMapping, 
  AWS.SSM.Model.PatchOrchestratorFilter, 
  AWS.SSM.Model.PatchRule, 
  AWS.SSM.Model.PatchRuleGroup, 
  AWS.SSM.Model.PatchSource, 
  AWS.SSM.Model.PatchStatus, 
  AWS.SSM.Model.PoliciesLimitExceededException, 
  AWS.SSM.Model.ProgressCounters, 
  AWS.SSM.Model.PutComplianceItemsRequest, 
  AWS.SSM.Model.PutComplianceItemsResponse, 
  AWS.SSM.Model.PutInventoryRequest, 
  AWS.SSM.Model.PutInventoryResponse, 
  AWS.SSM.Model.PutParameterRequest, 
  AWS.SSM.Model.PutParameterResponse, 
  AWS.SSM.Model.RegisterDefaultPatchBaselineRequest, 
  AWS.SSM.Model.RegisterDefaultPatchBaselineResponse, 
  AWS.SSM.Model.RegisterPatchBaselineForPatchGroupRequest, 
  AWS.SSM.Model.RegisterPatchBaselineForPatchGroupResponse, 
  AWS.SSM.Model.RegisterTargetWithMaintenanceWindowRequest, 
  AWS.SSM.Model.RegisterTargetWithMaintenanceWindowResponse, 
  AWS.SSM.Model.RegisterTaskWithMaintenanceWindowRequest, 
  AWS.SSM.Model.RegisterTaskWithMaintenanceWindowResponse, 
  AWS.SSM.Model.RegistrationMetadataItem, 
  AWS.SSM.Model.RelatedOpsItem, 
  AWS.SSM.Model.RemoveTagsFromResourceRequest, 
  AWS.SSM.Model.RemoveTagsFromResourceResponse, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.ResetServiceSettingRequest, 
  AWS.SSM.Model.ResetServiceSettingResponse, 
  AWS.SSM.Model.ResolvedTargets, 
  AWS.SSM.Model.ResourceComplianceSummaryItem, 
  AWS.SSM.Model.ResourceDataSyncAlreadyExistsException, 
  AWS.SSM.Model.ResourceDataSyncAwsOrganizationsSource, 
  AWS.SSM.Model.ResourceDataSyncConflictException, 
  AWS.SSM.Model.ResourceDataSyncCountExceededException, 
  AWS.SSM.Model.ResourceDataSyncDestinationDataSharing, 
  AWS.SSM.Model.ResourceDataSyncInvalidConfigurationException, 
  AWS.SSM.Model.ResourceDataSyncItem, 
  AWS.SSM.Model.ResourceDataSyncNotFoundException, 
  AWS.SSM.Model.ResourceDataSyncOrganizationalUnit, 
  AWS.SSM.Model.ResourceDataSyncS3Destination, 
  AWS.SSM.Model.ResourceDataSyncSource, 
  AWS.SSM.Model.ResourceDataSyncSourceWithState, 
  AWS.SSM.Model.ResourceInUseException, 
  AWS.SSM.Model.ResourceLimitExceededException, 
  AWS.SSM.Model.ResultAttribute, 
  AWS.SSM.Model.ResumeSessionRequest, 
  AWS.SSM.Model.ResumeSessionResponse, 
  AWS.SSM.Model.ReviewInformation, 
  AWS.SSM.Model.Runbook, 
  AWS.SSM.Model.S3OutputLocation, 
  AWS.SSM.Model.S3OutputUrl, 
  AWS.SSM.Model.ScheduledWindowExecution, 
  AWS.SSM.Model.SendAutomationSignalRequest, 
  AWS.SSM.Model.SendAutomationSignalResponse, 
  AWS.SSM.Model.SendCommandRequest, 
  AWS.SSM.Model.SendCommandResponse, 
  AWS.SSM.Model.ServiceSetting, 
  AWS.SSM.Model.ServiceSettingNotFoundException, 
  AWS.SSM.Model.Session, 
  AWS.SSM.Model.SessionFilter, 
  AWS.SSM.Model.SessionManagerOutputUrl, 
  AWS.SSM.Model.SeveritySummary, 
  AWS.SSM.Model.StartAssociationsOnceRequest, 
  AWS.SSM.Model.StartAssociationsOnceResponse, 
  AWS.SSM.Model.StartAutomationExecutionRequest, 
  AWS.SSM.Model.StartAutomationExecutionResponse, 
  AWS.SSM.Model.StartChangeRequestExecutionRequest, 
  AWS.SSM.Model.StartChangeRequestExecutionResponse, 
  AWS.SSM.Model.StartSessionRequest, 
  AWS.SSM.Model.StartSessionResponse, 
  AWS.SSM.Model.StatusUnchangedException, 
  AWS.SSM.Model.StepExecution, 
  AWS.SSM.Model.StepExecutionFilter, 
  AWS.SSM.Model.StopAutomationExecutionRequest, 
  AWS.SSM.Model.StopAutomationExecutionResponse, 
  AWS.SSM.Model.SubTypeCountLimitExceededException, 
  AWS.SSM.Model.Tag, 
  AWS.SSM.Model.Target, 
  AWS.SSM.Model.TargetInUseException, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Model.TargetNotConnectedException, 
  AWS.SSM.Model.TerminateSessionRequest, 
  AWS.SSM.Model.TerminateSessionResponse, 
  AWS.SSM.Model.TooManyTagsErrorException, 
  AWS.SSM.Model.TooManyUpdatesException, 
  AWS.SSM.Model.TotalSizeLimitExceededException, 
  AWS.SSM.Model.UnlabelParameterVersionRequest, 
  AWS.SSM.Model.UnlabelParameterVersionResponse, 
  AWS.SSM.Model.UnsupportedCalendarException, 
  AWS.SSM.Model.UnsupportedFeatureRequiredException, 
  AWS.SSM.Model.UnsupportedInventoryItemContextException, 
  AWS.SSM.Model.UnsupportedInventorySchemaVersionException, 
  AWS.SSM.Model.UnsupportedOperatingSystemException, 
  AWS.SSM.Model.UnsupportedParameterTypeException, 
  AWS.SSM.Model.UnsupportedPlatformTypeException, 
  AWS.SSM.Model.UpdateAssociationRequest, 
  AWS.SSM.Model.UpdateAssociationResponse, 
  AWS.SSM.Model.UpdateAssociationStatusRequest, 
  AWS.SSM.Model.UpdateAssociationStatusResponse, 
  AWS.SSM.Model.UpdateDocumentDefaultVersionRequest, 
  AWS.SSM.Model.UpdateDocumentDefaultVersionResponse, 
  AWS.SSM.Model.UpdateDocumentMetadataRequest, 
  AWS.SSM.Model.UpdateDocumentMetadataResponse, 
  AWS.SSM.Model.UpdateDocumentRequest, 
  AWS.SSM.Model.UpdateDocumentResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowRequest, 
  AWS.SSM.Model.UpdateMaintenanceWindowResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowTargetRequest, 
  AWS.SSM.Model.UpdateMaintenanceWindowTargetResponse, 
  AWS.SSM.Model.UpdateMaintenanceWindowTaskRequest, 
  AWS.SSM.Model.UpdateMaintenanceWindowTaskResponse, 
  AWS.SSM.Model.UpdateManagedInstanceRoleRequest, 
  AWS.SSM.Model.UpdateManagedInstanceRoleResponse, 
  AWS.SSM.Model.UpdateOpsItemRequest, 
  AWS.SSM.Model.UpdateOpsItemResponse, 
  AWS.SSM.Model.UpdateOpsMetadataRequest, 
  AWS.SSM.Model.UpdateOpsMetadataResponse, 
  AWS.SSM.Model.UpdatePatchBaselineRequest, 
  AWS.SSM.Model.UpdatePatchBaselineResponse, 
  AWS.SSM.Model.UpdateResourceDataSyncRequest, 
  AWS.SSM.Model.UpdateResourceDataSyncResponse, 
  AWS.SSM.Model.UpdateServiceSettingRequest, 
  AWS.SSM.Model.UpdateServiceSettingResponse;

type
  EAlreadyExistsException = AWS.SSM.Model.AlreadyExistsException.EAlreadyExistsException;
  EAmazonSimpleSystemsManagementException = AWS.SSM.Exception.EAmazonSimpleSystemsManagementException;
  EAssociatedInstancesException = AWS.SSM.Model.AssociatedInstancesException.EAssociatedInstancesException;
  EAssociationAlreadyExistsException = AWS.SSM.Model.AssociationAlreadyExistsException.EAssociationAlreadyExistsException;
  EAssociationDoesNotExistException = AWS.SSM.Model.AssociationDoesNotExistException.EAssociationDoesNotExistException;
  EAssociationExecutionDoesNotExistException = AWS.SSM.Model.AssociationExecutionDoesNotExistException.EAssociationExecutionDoesNotExistException;
  EAssociationLimitExceededException = AWS.SSM.Model.AssociationLimitExceededException.EAssociationLimitExceededException;
  EAssociationVersionLimitExceededException = AWS.SSM.Model.AssociationVersionLimitExceededException.EAssociationVersionLimitExceededException;
  EAutomationDefinitionNotApprovedException = AWS.SSM.Model.AutomationDefinitionNotApprovedException.EAutomationDefinitionNotApprovedException;
  EAutomationDefinitionNotFoundException = AWS.SSM.Model.AutomationDefinitionNotFoundException.EAutomationDefinitionNotFoundException;
  EAutomationDefinitionVersionNotFoundException = AWS.SSM.Model.AutomationDefinitionVersionNotFoundException.EAutomationDefinitionVersionNotFoundException;
  EAutomationExecutionLimitExceededException = AWS.SSM.Model.AutomationExecutionLimitExceededException.EAutomationExecutionLimitExceededException;
  EAutomationExecutionNotFoundException = AWS.SSM.Model.AutomationExecutionNotFoundException.EAutomationExecutionNotFoundException;
  EAutomationStepNotFoundException = AWS.SSM.Model.AutomationStepNotFoundException.EAutomationStepNotFoundException;
  EComplianceTypeCountLimitExceededException = AWS.SSM.Model.ComplianceTypeCountLimitExceededException.EComplianceTypeCountLimitExceededException;
  ECustomSchemaCountLimitExceededException = AWS.SSM.Model.CustomSchemaCountLimitExceededException.ECustomSchemaCountLimitExceededException;
  EDocumentAlreadyExistsException = AWS.SSM.Model.DocumentAlreadyExistsException.EDocumentAlreadyExistsException;
  EDocumentLimitExceededException = AWS.SSM.Model.DocumentLimitExceededException.EDocumentLimitExceededException;
  EDocumentPermissionLimitException = AWS.SSM.Model.DocumentPermissionLimitException.EDocumentPermissionLimitException;
  EDocumentVersionLimitExceededException = AWS.SSM.Model.DocumentVersionLimitExceededException.EDocumentVersionLimitExceededException;
  EDoesNotExistException = AWS.SSM.Model.DoesNotExistException.EDoesNotExistException;
  EDuplicateDocumentContentException = AWS.SSM.Model.DuplicateDocumentContentException.EDuplicateDocumentContentException;
  EDuplicateDocumentVersionNameException = AWS.SSM.Model.DuplicateDocumentVersionNameException.EDuplicateDocumentVersionNameException;
  EDuplicateInstanceIdException = AWS.SSM.Model.DuplicateInstanceIdException.EDuplicateInstanceIdException;
  EFeatureNotAvailableException = AWS.SSM.Model.FeatureNotAvailableException.EFeatureNotAvailableException;
  EHierarchyLevelLimitExceededException = AWS.SSM.Model.HierarchyLevelLimitExceededException.EHierarchyLevelLimitExceededException;
  EHierarchyTypeMismatchException = AWS.SSM.Model.HierarchyTypeMismatchException.EHierarchyTypeMismatchException;
  EIdempotentParameterMismatchException = AWS.SSM.Model.IdempotentParameterMismatchException.EIdempotentParameterMismatchException;
  EIncompatiblePolicyException = AWS.SSM.Model.IncompatiblePolicyException.EIncompatiblePolicyException;
  EInternalServerErrorException = AWS.SSM.Model.InternalServerErrorException.EInternalServerErrorException;
  EInvalidActivationException = AWS.SSM.Model.InvalidActivationException.EInvalidActivationException;
  EInvalidActivationIdException = AWS.SSM.Model.InvalidActivationIdException.EInvalidActivationIdException;
  EInvalidAggregatorException = AWS.SSM.Model.InvalidAggregatorException.EInvalidAggregatorException;
  EInvalidAllowedPatternException = AWS.SSM.Model.InvalidAllowedPatternException.EInvalidAllowedPatternException;
  EInvalidAssociationException = AWS.SSM.Model.InvalidAssociationException.EInvalidAssociationException;
  EInvalidAssociationVersionException = AWS.SSM.Model.InvalidAssociationVersionException.EInvalidAssociationVersionException;
  EInvalidAutomationExecutionParametersException = AWS.SSM.Model.InvalidAutomationExecutionParametersException.EInvalidAutomationExecutionParametersException;
  EInvalidAutomationSignalException = AWS.SSM.Model.InvalidAutomationSignalException.EInvalidAutomationSignalException;
  EInvalidAutomationStatusUpdateException = AWS.SSM.Model.InvalidAutomationStatusUpdateException.EInvalidAutomationStatusUpdateException;
  EInvalidCommandIdException = AWS.SSM.Model.InvalidCommandIdException.EInvalidCommandIdException;
  EInvalidDeleteInventoryParametersException = AWS.SSM.Model.InvalidDeleteInventoryParametersException.EInvalidDeleteInventoryParametersException;
  EInvalidDeletionIdException = AWS.SSM.Model.InvalidDeletionIdException.EInvalidDeletionIdException;
  EInvalidDocumentContentException = AWS.SSM.Model.InvalidDocumentContentException.EInvalidDocumentContentException;
  EInvalidDocumentException = AWS.SSM.Model.InvalidDocumentException.EInvalidDocumentException;
  EInvalidDocumentOperationException = AWS.SSM.Model.InvalidDocumentOperationException.EInvalidDocumentOperationException;
  EInvalidDocumentSchemaVersionException = AWS.SSM.Model.InvalidDocumentSchemaVersionException.EInvalidDocumentSchemaVersionException;
  EInvalidDocumentTypeException = AWS.SSM.Model.InvalidDocumentTypeException.EInvalidDocumentTypeException;
  EInvalidDocumentVersionException = AWS.SSM.Model.InvalidDocumentVersionException.EInvalidDocumentVersionException;
  EInvalidFilterException = AWS.SSM.Model.InvalidFilterException.EInvalidFilterException;
  EInvalidFilterKeyException = AWS.SSM.Model.InvalidFilterKeyException.EInvalidFilterKeyException;
  EInvalidFilterOptionException = AWS.SSM.Model.InvalidFilterOptionException.EInvalidFilterOptionException;
  EInvalidFilterValueException = AWS.SSM.Model.InvalidFilterValueException.EInvalidFilterValueException;
  EInvalidInstanceIdException = AWS.SSM.Model.InvalidInstanceIdException.EInvalidInstanceIdException;
  EInvalidInstanceInformationFilterValueException = AWS.SSM.Model.InvalidInstanceInformationFilterValueException.EInvalidInstanceInformationFilterValueException;
  EInvalidInventoryGroupException = AWS.SSM.Model.InvalidInventoryGroupException.EInvalidInventoryGroupException;
  EInvalidInventoryItemContextException = AWS.SSM.Model.InvalidInventoryItemContextException.EInvalidInventoryItemContextException;
  EInvalidInventoryRequestException = AWS.SSM.Model.InvalidInventoryRequestException.EInvalidInventoryRequestException;
  EInvalidItemContentException = AWS.SSM.Model.InvalidItemContentException.EInvalidItemContentException;
  EInvalidKeyIdException = AWS.SSM.Model.InvalidKeyIdException.EInvalidKeyIdException;
  EInvalidNextTokenException = AWS.SSM.Model.InvalidNextTokenException.EInvalidNextTokenException;
  EInvalidNotificationConfigException = AWS.SSM.Model.InvalidNotificationConfigException.EInvalidNotificationConfigException;
  EInvalidOptionException = AWS.SSM.Model.InvalidOptionException.EInvalidOptionException;
  EInvalidOutputFolderException = AWS.SSM.Model.InvalidOutputFolderException.EInvalidOutputFolderException;
  EInvalidOutputLocationException = AWS.SSM.Model.InvalidOutputLocationException.EInvalidOutputLocationException;
  EInvalidParametersException = AWS.SSM.Model.InvalidParametersException.EInvalidParametersException;
  EInvalidPermissionTypeException = AWS.SSM.Model.InvalidPermissionTypeException.EInvalidPermissionTypeException;
  EInvalidPluginNameException = AWS.SSM.Model.InvalidPluginNameException.EInvalidPluginNameException;
  EInvalidPolicyAttributeException = AWS.SSM.Model.InvalidPolicyAttributeException.EInvalidPolicyAttributeException;
  EInvalidPolicyTypeException = AWS.SSM.Model.InvalidPolicyTypeException.EInvalidPolicyTypeException;
  EInvalidResourceIdException = AWS.SSM.Model.InvalidResourceIdException.EInvalidResourceIdException;
  EInvalidResourceTypeException = AWS.SSM.Model.InvalidResourceTypeException.EInvalidResourceTypeException;
  EInvalidResultAttributeException = AWS.SSM.Model.InvalidResultAttributeException.EInvalidResultAttributeException;
  EInvalidRoleException = AWS.SSM.Model.InvalidRoleException.EInvalidRoleException;
  EInvalidScheduleException = AWS.SSM.Model.InvalidScheduleException.EInvalidScheduleException;
  EInvalidTargetException = AWS.SSM.Model.InvalidTargetException.EInvalidTargetException;
  EInvalidTargetMapsException = AWS.SSM.Model.InvalidTargetMapsException.EInvalidTargetMapsException;
  EInvalidTypeNameException = AWS.SSM.Model.InvalidTypeNameException.EInvalidTypeNameException;
  EInvalidUpdateException = AWS.SSM.Model.InvalidUpdateException.EInvalidUpdateException;
  EInvocationDoesNotExistException = AWS.SSM.Model.InvocationDoesNotExistException.EInvocationDoesNotExistException;
  EItemContentMismatchException = AWS.SSM.Model.ItemContentMismatchException.EItemContentMismatchException;
  EItemSizeLimitExceededException = AWS.SSM.Model.ItemSizeLimitExceededException.EItemSizeLimitExceededException;
  EMaxDocumentSizeExceededException = AWS.SSM.Model.MaxDocumentSizeExceededException.EMaxDocumentSizeExceededException;
  EOpsItemAlreadyExistsException = AWS.SSM.Model.OpsItemAlreadyExistsException.EOpsItemAlreadyExistsException;
  EOpsItemInvalidParameterException = AWS.SSM.Model.OpsItemInvalidParameterException.EOpsItemInvalidParameterException;
  EOpsItemLimitExceededException = AWS.SSM.Model.OpsItemLimitExceededException.EOpsItemLimitExceededException;
  EOpsItemNotFoundException = AWS.SSM.Model.OpsItemNotFoundException.EOpsItemNotFoundException;
  EOpsItemRelatedItemAlreadyExistsException = AWS.SSM.Model.OpsItemRelatedItemAlreadyExistsException.EOpsItemRelatedItemAlreadyExistsException;
  EOpsItemRelatedItemAssociationNotFoundException = AWS.SSM.Model.OpsItemRelatedItemAssociationNotFoundException.EOpsItemRelatedItemAssociationNotFoundException;
  EOpsMetadataAlreadyExistsException = AWS.SSM.Model.OpsMetadataAlreadyExistsException.EOpsMetadataAlreadyExistsException;
  EOpsMetadataInvalidArgumentException = AWS.SSM.Model.OpsMetadataInvalidArgumentException.EOpsMetadataInvalidArgumentException;
  EOpsMetadataKeyLimitExceededException = AWS.SSM.Model.OpsMetadataKeyLimitExceededException.EOpsMetadataKeyLimitExceededException;
  EOpsMetadataLimitExceededException = AWS.SSM.Model.OpsMetadataLimitExceededException.EOpsMetadataLimitExceededException;
  EOpsMetadataNotFoundException = AWS.SSM.Model.OpsMetadataNotFoundException.EOpsMetadataNotFoundException;
  EOpsMetadataTooManyUpdatesException = AWS.SSM.Model.OpsMetadataTooManyUpdatesException.EOpsMetadataTooManyUpdatesException;
  EParameterAlreadyExistsException = AWS.SSM.Model.ParameterAlreadyExistsException.EParameterAlreadyExistsException;
  EParameterLimitExceededException = AWS.SSM.Model.ParameterLimitExceededException.EParameterLimitExceededException;
  EParameterMaxVersionLimitExceededException = AWS.SSM.Model.ParameterMaxVersionLimitExceededException.EParameterMaxVersionLimitExceededException;
  EParameterNotFoundException = AWS.SSM.Model.ParameterNotFoundException.EParameterNotFoundException;
  EParameterPatternMismatchException = AWS.SSM.Model.ParameterPatternMismatchException.EParameterPatternMismatchException;
  EParameterVersionLabelLimitExceededException = AWS.SSM.Model.ParameterVersionLabelLimitExceededException.EParameterVersionLabelLimitExceededException;
  EParameterVersionNotFoundException = AWS.SSM.Model.ParameterVersionNotFoundException.EParameterVersionNotFoundException;
  EPoliciesLimitExceededException = AWS.SSM.Model.PoliciesLimitExceededException.EPoliciesLimitExceededException;
  EResourceDataSyncAlreadyExistsException = AWS.SSM.Model.ResourceDataSyncAlreadyExistsException.EResourceDataSyncAlreadyExistsException;
  EResourceDataSyncConflictException = AWS.SSM.Model.ResourceDataSyncConflictException.EResourceDataSyncConflictException;
  EResourceDataSyncCountExceededException = AWS.SSM.Model.ResourceDataSyncCountExceededException.EResourceDataSyncCountExceededException;
  EResourceDataSyncInvalidConfigurationException = AWS.SSM.Model.ResourceDataSyncInvalidConfigurationException.EResourceDataSyncInvalidConfigurationException;
  EResourceDataSyncNotFoundException = AWS.SSM.Model.ResourceDataSyncNotFoundException.EResourceDataSyncNotFoundException;
  EResourceInUseException = AWS.SSM.Model.ResourceInUseException.EResourceInUseException;
  EResourceLimitExceededException = AWS.SSM.Model.ResourceLimitExceededException.EResourceLimitExceededException;
  EServiceSettingNotFoundException = AWS.SSM.Model.ServiceSettingNotFoundException.EServiceSettingNotFoundException;
  EStatusUnchangedException = AWS.SSM.Model.StatusUnchangedException.EStatusUnchangedException;
  ESubTypeCountLimitExceededException = AWS.SSM.Model.SubTypeCountLimitExceededException.ESubTypeCountLimitExceededException;
  ETargetInUseException = AWS.SSM.Model.TargetInUseException.ETargetInUseException;
  ETargetNotConnectedException = AWS.SSM.Model.TargetNotConnectedException.ETargetNotConnectedException;
  ETooManyTagsErrorException = AWS.SSM.Model.TooManyTagsErrorException.ETooManyTagsErrorException;
  ETooManyUpdatesException = AWS.SSM.Model.TooManyUpdatesException.ETooManyUpdatesException;
  ETotalSizeLimitExceededException = AWS.SSM.Model.TotalSizeLimitExceededException.ETotalSizeLimitExceededException;
  EUnsupportedCalendarException = AWS.SSM.Model.UnsupportedCalendarException.EUnsupportedCalendarException;
  EUnsupportedFeatureRequiredException = AWS.SSM.Model.UnsupportedFeatureRequiredException.EUnsupportedFeatureRequiredException;
  EUnsupportedInventoryItemContextException = AWS.SSM.Model.UnsupportedInventoryItemContextException.EUnsupportedInventoryItemContextException;
  EUnsupportedInventorySchemaVersionException = AWS.SSM.Model.UnsupportedInventorySchemaVersionException.EUnsupportedInventorySchemaVersionException;
  EUnsupportedOperatingSystemException = AWS.SSM.Model.UnsupportedOperatingSystemException.EUnsupportedOperatingSystemException;
  EUnsupportedParameterTypeException = AWS.SSM.Model.UnsupportedParameterTypeException.EUnsupportedParameterTypeException;
  EUnsupportedPlatformTypeException = AWS.SSM.Model.UnsupportedPlatformTypeException.EUnsupportedPlatformTypeException;
  IAccountSharingInfo = AWS.SSM.Model.AccountSharingInfo.IAccountSharingInfo;
  IActivation = AWS.SSM.Model.Activation.IActivation;
  IAddTagsToResourceRequest = AWS.SSM.Model.AddTagsToResourceRequest.IAddTagsToResourceRequest;
  IAddTagsToResourceResponse = AWS.SSM.Model.AddTagsToResourceResponse.IAddTagsToResourceResponse;
  IAmazonSimpleSystemsManagement = AWS.SSM.ClientIntf.IAmazonSimpleSystemsManagement;
  IAssociateOpsItemRelatedItemRequest = AWS.SSM.Model.AssociateOpsItemRelatedItemRequest.IAssociateOpsItemRelatedItemRequest;
  IAssociateOpsItemRelatedItemResponse = AWS.SSM.Model.AssociateOpsItemRelatedItemResponse.IAssociateOpsItemRelatedItemResponse;
  IAssociation = AWS.SSM.Model.Association.IAssociation;
  IAssociationDescription = AWS.SSM.Model.AssociationDescription.IAssociationDescription;
  IAssociationExecution = AWS.SSM.Model.AssociationExecution.IAssociationExecution;
  IAssociationExecutionFilter = AWS.SSM.Model.AssociationExecutionFilter.IAssociationExecutionFilter;
  IAssociationExecutionTarget = AWS.SSM.Model.AssociationExecutionTarget.IAssociationExecutionTarget;
  IAssociationExecutionTargetsFilter = AWS.SSM.Model.AssociationExecutionTargetsFilter.IAssociationExecutionTargetsFilter;
  IAssociationFilter = AWS.SSM.Model.AssociationFilter.IAssociationFilter;
  IAssociationOverview = AWS.SSM.Model.AssociationOverview.IAssociationOverview;
  IAssociationStatus = AWS.SSM.Model.AssociationStatus.IAssociationStatus;
  IAssociationVersionInfo = AWS.SSM.Model.AssociationVersionInfo.IAssociationVersionInfo;
  IAttachmentContent = AWS.SSM.Model.AttachmentContent.IAttachmentContent;
  IAttachmentInformation = AWS.SSM.Model.AttachmentInformation.IAttachmentInformation;
  IAttachmentsSource = AWS.SSM.Model.AttachmentsSource.IAttachmentsSource;
  IAutomationExecution = AWS.SSM.Model.AutomationExecution.IAutomationExecution;
  IAutomationExecutionFilter = AWS.SSM.Model.AutomationExecutionFilter.IAutomationExecutionFilter;
  IAutomationExecutionMetadata = AWS.SSM.Model.AutomationExecutionMetadata.IAutomationExecutionMetadata;
  IBaselineOverride = AWS.SSM.Model.BaselineOverride.IBaselineOverride;
  ICancelCommandRequest = AWS.SSM.Model.CancelCommandRequest.ICancelCommandRequest;
  ICancelCommandResponse = AWS.SSM.Model.CancelCommandResponse.ICancelCommandResponse;
  ICancelMaintenanceWindowExecutionRequest = AWS.SSM.Model.CancelMaintenanceWindowExecutionRequest.ICancelMaintenanceWindowExecutionRequest;
  ICancelMaintenanceWindowExecutionResponse = AWS.SSM.Model.CancelMaintenanceWindowExecutionResponse.ICancelMaintenanceWindowExecutionResponse;
  ICloudWatchOutputConfig = AWS.SSM.Model.CloudWatchOutputConfig.ICloudWatchOutputConfig;
  ICommand = AWS.SSM.Model.Command.ICommand;
  ICommandFilter = AWS.SSM.Model.CommandFilter.ICommandFilter;
  ICommandInvocation = AWS.SSM.Model.CommandInvocation.ICommandInvocation;
  ICommandPlugin = AWS.SSM.Model.CommandPlugin.ICommandPlugin;
  IComplianceExecutionSummary = AWS.SSM.Model.ComplianceExecutionSummary.IComplianceExecutionSummary;
  IComplianceItem = AWS.SSM.Model.ComplianceItem.IComplianceItem;
  IComplianceItemEntry = AWS.SSM.Model.ComplianceItemEntry.IComplianceItemEntry;
  IComplianceStringFilter = AWS.SSM.Model.ComplianceStringFilter.IComplianceStringFilter;
  IComplianceSummaryItem = AWS.SSM.Model.ComplianceSummaryItem.IComplianceSummaryItem;
  ICompliantSummary = AWS.SSM.Model.CompliantSummary.ICompliantSummary;
  ICreateActivationRequest = AWS.SSM.Model.CreateActivationRequest.ICreateActivationRequest;
  ICreateActivationResponse = AWS.SSM.Model.CreateActivationResponse.ICreateActivationResponse;
  ICreateAssociationBatchRequest = AWS.SSM.Model.CreateAssociationBatchRequest.ICreateAssociationBatchRequest;
  ICreateAssociationBatchRequestEntry = AWS.SSM.Model.CreateAssociationBatchRequestEntry.ICreateAssociationBatchRequestEntry;
  ICreateAssociationBatchResponse = AWS.SSM.Model.CreateAssociationBatchResponse.ICreateAssociationBatchResponse;
  ICreateAssociationRequest = AWS.SSM.Model.CreateAssociationRequest.ICreateAssociationRequest;
  ICreateAssociationResponse = AWS.SSM.Model.CreateAssociationResponse.ICreateAssociationResponse;
  ICreateDocumentRequest = AWS.SSM.Model.CreateDocumentRequest.ICreateDocumentRequest;
  ICreateDocumentResponse = AWS.SSM.Model.CreateDocumentResponse.ICreateDocumentResponse;
  ICreateMaintenanceWindowRequest = AWS.SSM.Model.CreateMaintenanceWindowRequest.ICreateMaintenanceWindowRequest;
  ICreateMaintenanceWindowResponse = AWS.SSM.Model.CreateMaintenanceWindowResponse.ICreateMaintenanceWindowResponse;
  ICreateOpsItemRequest = AWS.SSM.Model.CreateOpsItemRequest.ICreateOpsItemRequest;
  ICreateOpsItemResponse = AWS.SSM.Model.CreateOpsItemResponse.ICreateOpsItemResponse;
  ICreateOpsMetadataRequest = AWS.SSM.Model.CreateOpsMetadataRequest.ICreateOpsMetadataRequest;
  ICreateOpsMetadataResponse = AWS.SSM.Model.CreateOpsMetadataResponse.ICreateOpsMetadataResponse;
  ICreatePatchBaselineRequest = AWS.SSM.Model.CreatePatchBaselineRequest.ICreatePatchBaselineRequest;
  ICreatePatchBaselineResponse = AWS.SSM.Model.CreatePatchBaselineResponse.ICreatePatchBaselineResponse;
  ICreateResourceDataSyncRequest = AWS.SSM.Model.CreateResourceDataSyncRequest.ICreateResourceDataSyncRequest;
  ICreateResourceDataSyncResponse = AWS.SSM.Model.CreateResourceDataSyncResponse.ICreateResourceDataSyncResponse;
  IDeleteActivationRequest = AWS.SSM.Model.DeleteActivationRequest.IDeleteActivationRequest;
  IDeleteActivationResponse = AWS.SSM.Model.DeleteActivationResponse.IDeleteActivationResponse;
  IDeleteAssociationRequest = AWS.SSM.Model.DeleteAssociationRequest.IDeleteAssociationRequest;
  IDeleteAssociationResponse = AWS.SSM.Model.DeleteAssociationResponse.IDeleteAssociationResponse;
  IDeleteDocumentRequest = AWS.SSM.Model.DeleteDocumentRequest.IDeleteDocumentRequest;
  IDeleteDocumentResponse = AWS.SSM.Model.DeleteDocumentResponse.IDeleteDocumentResponse;
  IDeleteInventoryRequest = AWS.SSM.Model.DeleteInventoryRequest.IDeleteInventoryRequest;
  IDeleteInventoryResponse = AWS.SSM.Model.DeleteInventoryResponse.IDeleteInventoryResponse;
  IDeleteMaintenanceWindowRequest = AWS.SSM.Model.DeleteMaintenanceWindowRequest.IDeleteMaintenanceWindowRequest;
  IDeleteMaintenanceWindowResponse = AWS.SSM.Model.DeleteMaintenanceWindowResponse.IDeleteMaintenanceWindowResponse;
  IDeleteOpsMetadataRequest = AWS.SSM.Model.DeleteOpsMetadataRequest.IDeleteOpsMetadataRequest;
  IDeleteOpsMetadataResponse = AWS.SSM.Model.DeleteOpsMetadataResponse.IDeleteOpsMetadataResponse;
  IDeleteParameterRequest = AWS.SSM.Model.DeleteParameterRequest.IDeleteParameterRequest;
  IDeleteParameterResponse = AWS.SSM.Model.DeleteParameterResponse.IDeleteParameterResponse;
  IDeleteParametersRequest = AWS.SSM.Model.DeleteParametersRequest.IDeleteParametersRequest;
  IDeleteParametersResponse = AWS.SSM.Model.DeleteParametersResponse.IDeleteParametersResponse;
  IDeletePatchBaselineRequest = AWS.SSM.Model.DeletePatchBaselineRequest.IDeletePatchBaselineRequest;
  IDeletePatchBaselineResponse = AWS.SSM.Model.DeletePatchBaselineResponse.IDeletePatchBaselineResponse;
  IDeleteResourceDataSyncRequest = AWS.SSM.Model.DeleteResourceDataSyncRequest.IDeleteResourceDataSyncRequest;
  IDeleteResourceDataSyncResponse = AWS.SSM.Model.DeleteResourceDataSyncResponse.IDeleteResourceDataSyncResponse;
  IDeregisterManagedInstanceRequest = AWS.SSM.Model.DeregisterManagedInstanceRequest.IDeregisterManagedInstanceRequest;
  IDeregisterManagedInstanceResponse = AWS.SSM.Model.DeregisterManagedInstanceResponse.IDeregisterManagedInstanceResponse;
  IDeregisterPatchBaselineForPatchGroupRequest = AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupRequest.IDeregisterPatchBaselineForPatchGroupRequest;
  IDeregisterPatchBaselineForPatchGroupResponse = AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupResponse.IDeregisterPatchBaselineForPatchGroupResponse;
  IDeregisterTargetFromMaintenanceWindowRequest = AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowRequest.IDeregisterTargetFromMaintenanceWindowRequest;
  IDeregisterTargetFromMaintenanceWindowResponse = AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowResponse.IDeregisterTargetFromMaintenanceWindowResponse;
  IDeregisterTaskFromMaintenanceWindowRequest = AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowRequest.IDeregisterTaskFromMaintenanceWindowRequest;
  IDeregisterTaskFromMaintenanceWindowResponse = AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowResponse.IDeregisterTaskFromMaintenanceWindowResponse;
  IDescribeActivationsFilter = AWS.SSM.Model.DescribeActivationsFilter.IDescribeActivationsFilter;
  IDescribeActivationsRequest = AWS.SSM.Model.DescribeActivationsRequest.IDescribeActivationsRequest;
  IDescribeActivationsResponse = AWS.SSM.Model.DescribeActivationsResponse.IDescribeActivationsResponse;
  IDescribeAssociationExecutionsRequest = AWS.SSM.Model.DescribeAssociationExecutionsRequest.IDescribeAssociationExecutionsRequest;
  IDescribeAssociationExecutionsResponse = AWS.SSM.Model.DescribeAssociationExecutionsResponse.IDescribeAssociationExecutionsResponse;
  IDescribeAssociationExecutionTargetsRequest = AWS.SSM.Model.DescribeAssociationExecutionTargetsRequest.IDescribeAssociationExecutionTargetsRequest;
  IDescribeAssociationExecutionTargetsResponse = AWS.SSM.Model.DescribeAssociationExecutionTargetsResponse.IDescribeAssociationExecutionTargetsResponse;
  IDescribeAssociationRequest = AWS.SSM.Model.DescribeAssociationRequest.IDescribeAssociationRequest;
  IDescribeAssociationResponse = AWS.SSM.Model.DescribeAssociationResponse.IDescribeAssociationResponse;
  IDescribeAutomationExecutionsRequest = AWS.SSM.Model.DescribeAutomationExecutionsRequest.IDescribeAutomationExecutionsRequest;
  IDescribeAutomationExecutionsResponse = AWS.SSM.Model.DescribeAutomationExecutionsResponse.IDescribeAutomationExecutionsResponse;
  IDescribeAutomationStepExecutionsRequest = AWS.SSM.Model.DescribeAutomationStepExecutionsRequest.IDescribeAutomationStepExecutionsRequest;
  IDescribeAutomationStepExecutionsResponse = AWS.SSM.Model.DescribeAutomationStepExecutionsResponse.IDescribeAutomationStepExecutionsResponse;
  IDescribeAvailablePatchesRequest = AWS.SSM.Model.DescribeAvailablePatchesRequest.IDescribeAvailablePatchesRequest;
  IDescribeAvailablePatchesResponse = AWS.SSM.Model.DescribeAvailablePatchesResponse.IDescribeAvailablePatchesResponse;
  IDescribeDocumentPermissionRequest = AWS.SSM.Model.DescribeDocumentPermissionRequest.IDescribeDocumentPermissionRequest;
  IDescribeDocumentPermissionResponse = AWS.SSM.Model.DescribeDocumentPermissionResponse.IDescribeDocumentPermissionResponse;
  IDescribeDocumentRequest = AWS.SSM.Model.DescribeDocumentRequest.IDescribeDocumentRequest;
  IDescribeDocumentResponse = AWS.SSM.Model.DescribeDocumentResponse.IDescribeDocumentResponse;
  IDescribeEffectiveInstanceAssociationsRequest = AWS.SSM.Model.DescribeEffectiveInstanceAssociationsRequest.IDescribeEffectiveInstanceAssociationsRequest;
  IDescribeEffectiveInstanceAssociationsResponse = AWS.SSM.Model.DescribeEffectiveInstanceAssociationsResponse.IDescribeEffectiveInstanceAssociationsResponse;
  IDescribeEffectivePatchesForPatchBaselineRequest = AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineRequest.IDescribeEffectivePatchesForPatchBaselineRequest;
  IDescribeEffectivePatchesForPatchBaselineResponse = AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineResponse.IDescribeEffectivePatchesForPatchBaselineResponse;
  IDescribeInstanceAssociationsStatusRequest = AWS.SSM.Model.DescribeInstanceAssociationsStatusRequest.IDescribeInstanceAssociationsStatusRequest;
  IDescribeInstanceAssociationsStatusResponse = AWS.SSM.Model.DescribeInstanceAssociationsStatusResponse.IDescribeInstanceAssociationsStatusResponse;
  IDescribeInstanceInformationRequest = AWS.SSM.Model.DescribeInstanceInformationRequest.IDescribeInstanceInformationRequest;
  IDescribeInstanceInformationResponse = AWS.SSM.Model.DescribeInstanceInformationResponse.IDescribeInstanceInformationResponse;
  IDescribeInstancePatchesRequest = AWS.SSM.Model.DescribeInstancePatchesRequest.IDescribeInstancePatchesRequest;
  IDescribeInstancePatchesResponse = AWS.SSM.Model.DescribeInstancePatchesResponse.IDescribeInstancePatchesResponse;
  IDescribeInstancePatchStatesForPatchGroupRequest = AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupRequest.IDescribeInstancePatchStatesForPatchGroupRequest;
  IDescribeInstancePatchStatesForPatchGroupResponse = AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupResponse.IDescribeInstancePatchStatesForPatchGroupResponse;
  IDescribeInstancePatchStatesRequest = AWS.SSM.Model.DescribeInstancePatchStatesRequest.IDescribeInstancePatchStatesRequest;
  IDescribeInstancePatchStatesResponse = AWS.SSM.Model.DescribeInstancePatchStatesResponse.IDescribeInstancePatchStatesResponse;
  IDescribeInventoryDeletionsRequest = AWS.SSM.Model.DescribeInventoryDeletionsRequest.IDescribeInventoryDeletionsRequest;
  IDescribeInventoryDeletionsResponse = AWS.SSM.Model.DescribeInventoryDeletionsResponse.IDescribeInventoryDeletionsResponse;
  IDescribeMaintenanceWindowExecutionsRequest = AWS.SSM.Model.DescribeMaintenanceWindowExecutionsRequest.IDescribeMaintenanceWindowExecutionsRequest;
  IDescribeMaintenanceWindowExecutionsResponse = AWS.SSM.Model.DescribeMaintenanceWindowExecutionsResponse.IDescribeMaintenanceWindowExecutionsResponse;
  IDescribeMaintenanceWindowExecutionTaskInvocationsRequest = AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsRequest.IDescribeMaintenanceWindowExecutionTaskInvocationsRequest;
  IDescribeMaintenanceWindowExecutionTaskInvocationsResponse = AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsResponse.IDescribeMaintenanceWindowExecutionTaskInvocationsResponse;
  IDescribeMaintenanceWindowExecutionTasksRequest = AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksRequest.IDescribeMaintenanceWindowExecutionTasksRequest;
  IDescribeMaintenanceWindowExecutionTasksResponse = AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksResponse.IDescribeMaintenanceWindowExecutionTasksResponse;
  IDescribeMaintenanceWindowScheduleRequest = AWS.SSM.Model.DescribeMaintenanceWindowScheduleRequest.IDescribeMaintenanceWindowScheduleRequest;
  IDescribeMaintenanceWindowScheduleResponse = AWS.SSM.Model.DescribeMaintenanceWindowScheduleResponse.IDescribeMaintenanceWindowScheduleResponse;
  IDescribeMaintenanceWindowsForTargetRequest = AWS.SSM.Model.DescribeMaintenanceWindowsForTargetRequest.IDescribeMaintenanceWindowsForTargetRequest;
  IDescribeMaintenanceWindowsForTargetResponse = AWS.SSM.Model.DescribeMaintenanceWindowsForTargetResponse.IDescribeMaintenanceWindowsForTargetResponse;
  IDescribeMaintenanceWindowsRequest = AWS.SSM.Model.DescribeMaintenanceWindowsRequest.IDescribeMaintenanceWindowsRequest;
  IDescribeMaintenanceWindowsResponse = AWS.SSM.Model.DescribeMaintenanceWindowsResponse.IDescribeMaintenanceWindowsResponse;
  IDescribeMaintenanceWindowTargetsRequest = AWS.SSM.Model.DescribeMaintenanceWindowTargetsRequest.IDescribeMaintenanceWindowTargetsRequest;
  IDescribeMaintenanceWindowTargetsResponse = AWS.SSM.Model.DescribeMaintenanceWindowTargetsResponse.IDescribeMaintenanceWindowTargetsResponse;
  IDescribeMaintenanceWindowTasksRequest = AWS.SSM.Model.DescribeMaintenanceWindowTasksRequest.IDescribeMaintenanceWindowTasksRequest;
  IDescribeMaintenanceWindowTasksResponse = AWS.SSM.Model.DescribeMaintenanceWindowTasksResponse.IDescribeMaintenanceWindowTasksResponse;
  IDescribeOpsItemsRequest = AWS.SSM.Model.DescribeOpsItemsRequest.IDescribeOpsItemsRequest;
  IDescribeOpsItemsResponse = AWS.SSM.Model.DescribeOpsItemsResponse.IDescribeOpsItemsResponse;
  IDescribeParametersRequest = AWS.SSM.Model.DescribeParametersRequest.IDescribeParametersRequest;
  IDescribeParametersResponse = AWS.SSM.Model.DescribeParametersResponse.IDescribeParametersResponse;
  IDescribePatchBaselinesRequest = AWS.SSM.Model.DescribePatchBaselinesRequest.IDescribePatchBaselinesRequest;
  IDescribePatchBaselinesResponse = AWS.SSM.Model.DescribePatchBaselinesResponse.IDescribePatchBaselinesResponse;
  IDescribePatchGroupsRequest = AWS.SSM.Model.DescribePatchGroupsRequest.IDescribePatchGroupsRequest;
  IDescribePatchGroupsResponse = AWS.SSM.Model.DescribePatchGroupsResponse.IDescribePatchGroupsResponse;
  IDescribePatchGroupStateRequest = AWS.SSM.Model.DescribePatchGroupStateRequest.IDescribePatchGroupStateRequest;
  IDescribePatchGroupStateResponse = AWS.SSM.Model.DescribePatchGroupStateResponse.IDescribePatchGroupStateResponse;
  IDescribePatchPropertiesRequest = AWS.SSM.Model.DescribePatchPropertiesRequest.IDescribePatchPropertiesRequest;
  IDescribePatchPropertiesResponse = AWS.SSM.Model.DescribePatchPropertiesResponse.IDescribePatchPropertiesResponse;
  IDescribeSessionsRequest = AWS.SSM.Model.DescribeSessionsRequest.IDescribeSessionsRequest;
  IDescribeSessionsResponse = AWS.SSM.Model.DescribeSessionsResponse.IDescribeSessionsResponse;
  IDisassociateOpsItemRelatedItemRequest = AWS.SSM.Model.DisassociateOpsItemRelatedItemRequest.IDisassociateOpsItemRelatedItemRequest;
  IDisassociateOpsItemRelatedItemResponse = AWS.SSM.Model.DisassociateOpsItemRelatedItemResponse.IDisassociateOpsItemRelatedItemResponse;
  IDocumentDefaultVersionDescription = AWS.SSM.Model.DocumentDefaultVersionDescription.IDocumentDefaultVersionDescription;
  IDocumentDescription = AWS.SSM.Model.DocumentDescription.IDocumentDescription;
  IDocumentFilter = AWS.SSM.Model.DocumentFilter.IDocumentFilter;
  IDocumentIdentifier = AWS.SSM.Model.DocumentIdentifier.IDocumentIdentifier;
  IDocumentKeyValuesFilter = AWS.SSM.Model.DocumentKeyValuesFilter.IDocumentKeyValuesFilter;
  IDocumentMetadataResponseInfo = AWS.SSM.Model.DocumentMetadataResponseInfo.IDocumentMetadataResponseInfo;
  IDocumentParameter = AWS.SSM.Model.DocumentParameter.IDocumentParameter;
  IDocumentRequires = AWS.SSM.Model.DocumentRequires.IDocumentRequires;
  IDocumentReviewCommentSource = AWS.SSM.Model.DocumentReviewCommentSource.IDocumentReviewCommentSource;
  IDocumentReviewerResponseSource = AWS.SSM.Model.DocumentReviewerResponseSource.IDocumentReviewerResponseSource;
  IDocumentReviews = AWS.SSM.Model.DocumentReviews.IDocumentReviews;
  IDocumentVersionInfo = AWS.SSM.Model.DocumentVersionInfo.IDocumentVersionInfo;
  IEffectivePatch = AWS.SSM.Model.EffectivePatch.IEffectivePatch;
  IFailedCreateAssociation = AWS.SSM.Model.FailedCreateAssociation.IFailedCreateAssociation;
  IFailureDetails = AWS.SSM.Model.FailureDetails.IFailureDetails;
  IGetAutomationExecutionRequest = AWS.SSM.Model.GetAutomationExecutionRequest.IGetAutomationExecutionRequest;
  IGetAutomationExecutionResponse = AWS.SSM.Model.GetAutomationExecutionResponse.IGetAutomationExecutionResponse;
  IGetCalendarStateRequest = AWS.SSM.Model.GetCalendarStateRequest.IGetCalendarStateRequest;
  IGetCalendarStateResponse = AWS.SSM.Model.GetCalendarStateResponse.IGetCalendarStateResponse;
  IGetCommandInvocationRequest = AWS.SSM.Model.GetCommandInvocationRequest.IGetCommandInvocationRequest;
  IGetCommandInvocationResponse = AWS.SSM.Model.GetCommandInvocationResponse.IGetCommandInvocationResponse;
  IGetConnectionStatusRequest = AWS.SSM.Model.GetConnectionStatusRequest.IGetConnectionStatusRequest;
  IGetConnectionStatusResponse = AWS.SSM.Model.GetConnectionStatusResponse.IGetConnectionStatusResponse;
  IGetDefaultPatchBaselineRequest = AWS.SSM.Model.GetDefaultPatchBaselineRequest.IGetDefaultPatchBaselineRequest;
  IGetDefaultPatchBaselineResponse = AWS.SSM.Model.GetDefaultPatchBaselineResponse.IGetDefaultPatchBaselineResponse;
  IGetDeployablePatchSnapshotForInstanceRequest = AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceRequest.IGetDeployablePatchSnapshotForInstanceRequest;
  IGetDeployablePatchSnapshotForInstanceResponse = AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceResponse.IGetDeployablePatchSnapshotForInstanceResponse;
  IGetDocumentRequest = AWS.SSM.Model.GetDocumentRequest.IGetDocumentRequest;
  IGetDocumentResponse = AWS.SSM.Model.GetDocumentResponse.IGetDocumentResponse;
  IGetInventoryRequest = AWS.SSM.Model.GetInventoryRequest.IGetInventoryRequest;
  IGetInventoryResponse = AWS.SSM.Model.GetInventoryResponse.IGetInventoryResponse;
  IGetInventorySchemaRequest = AWS.SSM.Model.GetInventorySchemaRequest.IGetInventorySchemaRequest;
  IGetInventorySchemaResponse = AWS.SSM.Model.GetInventorySchemaResponse.IGetInventorySchemaResponse;
  IGetMaintenanceWindowExecutionRequest = AWS.SSM.Model.GetMaintenanceWindowExecutionRequest.IGetMaintenanceWindowExecutionRequest;
  IGetMaintenanceWindowExecutionResponse = AWS.SSM.Model.GetMaintenanceWindowExecutionResponse.IGetMaintenanceWindowExecutionResponse;
  IGetMaintenanceWindowExecutionTaskInvocationRequest = AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationRequest.IGetMaintenanceWindowExecutionTaskInvocationRequest;
  IGetMaintenanceWindowExecutionTaskInvocationResponse = AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationResponse.IGetMaintenanceWindowExecutionTaskInvocationResponse;
  IGetMaintenanceWindowExecutionTaskRequest = AWS.SSM.Model.GetMaintenanceWindowExecutionTaskRequest.IGetMaintenanceWindowExecutionTaskRequest;
  IGetMaintenanceWindowExecutionTaskResponse = AWS.SSM.Model.GetMaintenanceWindowExecutionTaskResponse.IGetMaintenanceWindowExecutionTaskResponse;
  IGetMaintenanceWindowRequest = AWS.SSM.Model.GetMaintenanceWindowRequest.IGetMaintenanceWindowRequest;
  IGetMaintenanceWindowResponse = AWS.SSM.Model.GetMaintenanceWindowResponse.IGetMaintenanceWindowResponse;
  IGetMaintenanceWindowTaskRequest = AWS.SSM.Model.GetMaintenanceWindowTaskRequest.IGetMaintenanceWindowTaskRequest;
  IGetMaintenanceWindowTaskResponse = AWS.SSM.Model.GetMaintenanceWindowTaskResponse.IGetMaintenanceWindowTaskResponse;
  IGetOpsItemRequest = AWS.SSM.Model.GetOpsItemRequest.IGetOpsItemRequest;
  IGetOpsItemResponse = AWS.SSM.Model.GetOpsItemResponse.IGetOpsItemResponse;
  IGetOpsMetadataRequest = AWS.SSM.Model.GetOpsMetadataRequest.IGetOpsMetadataRequest;
  IGetOpsMetadataResponse = AWS.SSM.Model.GetOpsMetadataResponse.IGetOpsMetadataResponse;
  IGetOpsSummaryRequest = AWS.SSM.Model.GetOpsSummaryRequest.IGetOpsSummaryRequest;
  IGetOpsSummaryResponse = AWS.SSM.Model.GetOpsSummaryResponse.IGetOpsSummaryResponse;
  IGetParameterHistoryRequest = AWS.SSM.Model.GetParameterHistoryRequest.IGetParameterHistoryRequest;
  IGetParameterHistoryResponse = AWS.SSM.Model.GetParameterHistoryResponse.IGetParameterHistoryResponse;
  IGetParameterRequest = AWS.SSM.Model.GetParameterRequest.IGetParameterRequest;
  IGetParameterResponse = AWS.SSM.Model.GetParameterResponse.IGetParameterResponse;
  IGetParametersByPathRequest = AWS.SSM.Model.GetParametersByPathRequest.IGetParametersByPathRequest;
  IGetParametersByPathResponse = AWS.SSM.Model.GetParametersByPathResponse.IGetParametersByPathResponse;
  IGetParametersRequest = AWS.SSM.Model.GetParametersRequest.IGetParametersRequest;
  IGetParametersResponse = AWS.SSM.Model.GetParametersResponse.IGetParametersResponse;
  IGetPatchBaselineForPatchGroupRequest = AWS.SSM.Model.GetPatchBaselineForPatchGroupRequest.IGetPatchBaselineForPatchGroupRequest;
  IGetPatchBaselineForPatchGroupResponse = AWS.SSM.Model.GetPatchBaselineForPatchGroupResponse.IGetPatchBaselineForPatchGroupResponse;
  IGetPatchBaselineRequest = AWS.SSM.Model.GetPatchBaselineRequest.IGetPatchBaselineRequest;
  IGetPatchBaselineResponse = AWS.SSM.Model.GetPatchBaselineResponse.IGetPatchBaselineResponse;
  IGetServiceSettingRequest = AWS.SSM.Model.GetServiceSettingRequest.IGetServiceSettingRequest;
  IGetServiceSettingResponse = AWS.SSM.Model.GetServiceSettingResponse.IGetServiceSettingResponse;
  IInstanceAggregatedAssociationOverview = AWS.SSM.Model.InstanceAggregatedAssociationOverview.IInstanceAggregatedAssociationOverview;
  IInstanceAssociation = AWS.SSM.Model.InstanceAssociation.IInstanceAssociation;
  IInstanceAssociationOutputLocation = AWS.SSM.Model.InstanceAssociationOutputLocation.IInstanceAssociationOutputLocation;
  IInstanceAssociationOutputUrl = AWS.SSM.Model.InstanceAssociationOutputUrl.IInstanceAssociationOutputUrl;
  IInstanceAssociationStatusInfo = AWS.SSM.Model.InstanceAssociationStatusInfo.IInstanceAssociationStatusInfo;
  IInstanceInformation = AWS.SSM.Model.InstanceInformation.IInstanceInformation;
  IInstanceInformationFilter = AWS.SSM.Model.InstanceInformationFilter.IInstanceInformationFilter;
  IInstanceInformationStringFilter = AWS.SSM.Model.InstanceInformationStringFilter.IInstanceInformationStringFilter;
  IInstancePatchState = AWS.SSM.Model.InstancePatchState.IInstancePatchState;
  IInstancePatchStateFilter = AWS.SSM.Model.InstancePatchStateFilter.IInstancePatchStateFilter;
  IInventoryAggregator = AWS.SSM.Model.InventoryAggregator.IInventoryAggregator;
  IInventoryDeletionStatusItem = AWS.SSM.Model.InventoryDeletionStatusItem.IInventoryDeletionStatusItem;
  IInventoryDeletionSummary = AWS.SSM.Model.InventoryDeletionSummary.IInventoryDeletionSummary;
  IInventoryDeletionSummaryItem = AWS.SSM.Model.InventoryDeletionSummaryItem.IInventoryDeletionSummaryItem;
  IInventoryFilter = AWS.SSM.Model.InventoryFilter.IInventoryFilter;
  IInventoryGroup = AWS.SSM.Model.InventoryGroup.IInventoryGroup;
  IInventoryItem = AWS.SSM.Model.InventoryItem.IInventoryItem;
  IInventoryItemAttribute = AWS.SSM.Model.InventoryItemAttribute.IInventoryItemAttribute;
  IInventoryItemSchema = AWS.SSM.Model.InventoryItemSchema.IInventoryItemSchema;
  IInventoryResultEntity = AWS.SSM.Model.InventoryResultEntity.IInventoryResultEntity;
  IInventoryResultItem = AWS.SSM.Model.InventoryResultItem.IInventoryResultItem;
  ILabelParameterVersionRequest = AWS.SSM.Model.LabelParameterVersionRequest.ILabelParameterVersionRequest;
  ILabelParameterVersionResponse = AWS.SSM.Model.LabelParameterVersionResponse.ILabelParameterVersionResponse;
  IListAssociationsRequest = AWS.SSM.Model.ListAssociationsRequest.IListAssociationsRequest;
  IListAssociationsResponse = AWS.SSM.Model.ListAssociationsResponse.IListAssociationsResponse;
  IListAssociationVersionsRequest = AWS.SSM.Model.ListAssociationVersionsRequest.IListAssociationVersionsRequest;
  IListAssociationVersionsResponse = AWS.SSM.Model.ListAssociationVersionsResponse.IListAssociationVersionsResponse;
  IListCommandInvocationsRequest = AWS.SSM.Model.ListCommandInvocationsRequest.IListCommandInvocationsRequest;
  IListCommandInvocationsResponse = AWS.SSM.Model.ListCommandInvocationsResponse.IListCommandInvocationsResponse;
  IListCommandsRequest = AWS.SSM.Model.ListCommandsRequest.IListCommandsRequest;
  IListCommandsResponse = AWS.SSM.Model.ListCommandsResponse.IListCommandsResponse;
  IListComplianceItemsRequest = AWS.SSM.Model.ListComplianceItemsRequest.IListComplianceItemsRequest;
  IListComplianceItemsResponse = AWS.SSM.Model.ListComplianceItemsResponse.IListComplianceItemsResponse;
  IListComplianceSummariesRequest = AWS.SSM.Model.ListComplianceSummariesRequest.IListComplianceSummariesRequest;
  IListComplianceSummariesResponse = AWS.SSM.Model.ListComplianceSummariesResponse.IListComplianceSummariesResponse;
  IListDocumentMetadataHistoryRequest = AWS.SSM.Model.ListDocumentMetadataHistoryRequest.IListDocumentMetadataHistoryRequest;
  IListDocumentMetadataHistoryResponse = AWS.SSM.Model.ListDocumentMetadataHistoryResponse.IListDocumentMetadataHistoryResponse;
  IListDocumentsRequest = AWS.SSM.Model.ListDocumentsRequest.IListDocumentsRequest;
  IListDocumentsResponse = AWS.SSM.Model.ListDocumentsResponse.IListDocumentsResponse;
  IListDocumentVersionsRequest = AWS.SSM.Model.ListDocumentVersionsRequest.IListDocumentVersionsRequest;
  IListDocumentVersionsResponse = AWS.SSM.Model.ListDocumentVersionsResponse.IListDocumentVersionsResponse;
  IListInventoryEntriesRequest = AWS.SSM.Model.ListInventoryEntriesRequest.IListInventoryEntriesRequest;
  IListInventoryEntriesResponse = AWS.SSM.Model.ListInventoryEntriesResponse.IListInventoryEntriesResponse;
  IListOpsItemEventsRequest = AWS.SSM.Model.ListOpsItemEventsRequest.IListOpsItemEventsRequest;
  IListOpsItemEventsResponse = AWS.SSM.Model.ListOpsItemEventsResponse.IListOpsItemEventsResponse;
  IListOpsItemRelatedItemsRequest = AWS.SSM.Model.ListOpsItemRelatedItemsRequest.IListOpsItemRelatedItemsRequest;
  IListOpsItemRelatedItemsResponse = AWS.SSM.Model.ListOpsItemRelatedItemsResponse.IListOpsItemRelatedItemsResponse;
  IListOpsMetadataRequest = AWS.SSM.Model.ListOpsMetadataRequest.IListOpsMetadataRequest;
  IListOpsMetadataResponse = AWS.SSM.Model.ListOpsMetadataResponse.IListOpsMetadataResponse;
  IListResourceComplianceSummariesRequest = AWS.SSM.Model.ListResourceComplianceSummariesRequest.IListResourceComplianceSummariesRequest;
  IListResourceComplianceSummariesResponse = AWS.SSM.Model.ListResourceComplianceSummariesResponse.IListResourceComplianceSummariesResponse;
  IListResourceDataSyncRequest = AWS.SSM.Model.ListResourceDataSyncRequest.IListResourceDataSyncRequest;
  IListResourceDataSyncResponse = AWS.SSM.Model.ListResourceDataSyncResponse.IListResourceDataSyncResponse;
  IListTagsForResourceRequest = AWS.SSM.Model.ListTagsForResourceRequest.IListTagsForResourceRequest;
  IListTagsForResourceResponse = AWS.SSM.Model.ListTagsForResourceResponse.IListTagsForResourceResponse;
  ILoggingInfo = AWS.SSM.Model.LoggingInfo.ILoggingInfo;
  IMaintenanceWindowAutomationParameters = AWS.SSM.Model.MaintenanceWindowAutomationParameters.IMaintenanceWindowAutomationParameters;
  IMaintenanceWindowExecution = AWS.SSM.Model.MaintenanceWindowExecution.IMaintenanceWindowExecution;
  IMaintenanceWindowExecutionTaskIdentity = AWS.SSM.Model.MaintenanceWindowExecutionTaskIdentity.IMaintenanceWindowExecutionTaskIdentity;
  IMaintenanceWindowExecutionTaskInvocationIdentity = AWS.SSM.Model.MaintenanceWindowExecutionTaskInvocationIdentity.IMaintenanceWindowExecutionTaskInvocationIdentity;
  IMaintenanceWindowFilter = AWS.SSM.Model.MaintenanceWindowFilter.IMaintenanceWindowFilter;
  IMaintenanceWindowIdentity = AWS.SSM.Model.MaintenanceWindowIdentity.IMaintenanceWindowIdentity;
  IMaintenanceWindowIdentityForTarget = AWS.SSM.Model.MaintenanceWindowIdentityForTarget.IMaintenanceWindowIdentityForTarget;
  IMaintenanceWindowLambdaParameters = AWS.SSM.Model.MaintenanceWindowLambdaParameters.IMaintenanceWindowLambdaParameters;
  IMaintenanceWindowRunCommandParameters = AWS.SSM.Model.MaintenanceWindowRunCommandParameters.IMaintenanceWindowRunCommandParameters;
  IMaintenanceWindowStepFunctionsParameters = AWS.SSM.Model.MaintenanceWindowStepFunctionsParameters.IMaintenanceWindowStepFunctionsParameters;
  IMaintenanceWindowTarget = AWS.SSM.Model.MaintenanceWindowTarget.IMaintenanceWindowTarget;
  IMaintenanceWindowTask = AWS.SSM.Model.MaintenanceWindowTask.IMaintenanceWindowTask;
  IMaintenanceWindowTaskInvocationParameters = AWS.SSM.Model.MaintenanceWindowTaskInvocationParameters.IMaintenanceWindowTaskInvocationParameters;
  IMaintenanceWindowTaskParameterValueExpression = AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression.IMaintenanceWindowTaskParameterValueExpression;
  IMetadataValue = AWS.SSM.Model.MetadataValue.IMetadataValue;
  IModifyDocumentPermissionRequest = AWS.SSM.Model.ModifyDocumentPermissionRequest.IModifyDocumentPermissionRequest;
  IModifyDocumentPermissionResponse = AWS.SSM.Model.ModifyDocumentPermissionResponse.IModifyDocumentPermissionResponse;
  INonCompliantSummary = AWS.SSM.Model.NonCompliantSummary.INonCompliantSummary;
  INotificationConfig = AWS.SSM.Model.NotificationConfig.INotificationConfig;
  IOpsAggregator = AWS.SSM.Model.OpsAggregator.IOpsAggregator;
  IOpsEntity = AWS.SSM.Model.OpsEntity.IOpsEntity;
  IOpsEntityItem = AWS.SSM.Model.OpsEntityItem.IOpsEntityItem;
  IOpsFilter = AWS.SSM.Model.OpsFilter.IOpsFilter;
  IOpsItem = AWS.SSM.Model.OpsItem.IOpsItem;
  IOpsItemDataValue = AWS.SSM.Model.OpsItemDataValue.IOpsItemDataValue;
  IOpsItemEventFilter = AWS.SSM.Model.OpsItemEventFilter.IOpsItemEventFilter;
  IOpsItemEventSummary = AWS.SSM.Model.OpsItemEventSummary.IOpsItemEventSummary;
  IOpsItemFilter = AWS.SSM.Model.OpsItemFilter.IOpsItemFilter;
  IOpsItemIdentity = AWS.SSM.Model.OpsItemIdentity.IOpsItemIdentity;
  IOpsItemNotification = AWS.SSM.Model.OpsItemNotification.IOpsItemNotification;
  IOpsItemRelatedItemsFilter = AWS.SSM.Model.OpsItemRelatedItemsFilter.IOpsItemRelatedItemsFilter;
  IOpsItemRelatedItemSummary = AWS.SSM.Model.OpsItemRelatedItemSummary.IOpsItemRelatedItemSummary;
  IOpsItemSummary = AWS.SSM.Model.OpsItemSummary.IOpsItemSummary;
  IOpsMetadata = AWS.SSM.Model.OpsMetadata.IOpsMetadata;
  IOpsMetadataFilter = AWS.SSM.Model.OpsMetadataFilter.IOpsMetadataFilter;
  IOpsResultAttribute = AWS.SSM.Model.OpsResultAttribute.IOpsResultAttribute;
  IOutputSource = AWS.SSM.Model.OutputSource.IOutputSource;
  IParameter = AWS.SSM.Model.Parameter.IParameter;
  IParameterHistory = AWS.SSM.Model.ParameterHistory.IParameterHistory;
  IParameterInlinePolicy = AWS.SSM.Model.ParameterInlinePolicy.IParameterInlinePolicy;
  IParameterMetadata = AWS.SSM.Model.ParameterMetadata.IParameterMetadata;
  IParametersFilter = AWS.SSM.Model.ParametersFilter.IParametersFilter;
  IParameterStringFilter = AWS.SSM.Model.ParameterStringFilter.IParameterStringFilter;
  IPatch = AWS.SSM.Model.Patch.IPatch;
  IPatchBaselineIdentity = AWS.SSM.Model.PatchBaselineIdentity.IPatchBaselineIdentity;
  IPatchComplianceData = AWS.SSM.Model.PatchComplianceData.IPatchComplianceData;
  IPatchFilter = AWS.SSM.Model.PatchFilter.IPatchFilter;
  IPatchFilterGroup = AWS.SSM.Model.PatchFilterGroup.IPatchFilterGroup;
  IPatchGroupPatchBaselineMapping = AWS.SSM.Model.PatchGroupPatchBaselineMapping.IPatchGroupPatchBaselineMapping;
  IPatchOrchestratorFilter = AWS.SSM.Model.PatchOrchestratorFilter.IPatchOrchestratorFilter;
  IPatchRule = AWS.SSM.Model.PatchRule.IPatchRule;
  IPatchRuleGroup = AWS.SSM.Model.PatchRuleGroup.IPatchRuleGroup;
  IPatchSource = AWS.SSM.Model.PatchSource.IPatchSource;
  IPatchStatus = AWS.SSM.Model.PatchStatus.IPatchStatus;
  IProgressCounters = AWS.SSM.Model.ProgressCounters.IProgressCounters;
  IPutComplianceItemsRequest = AWS.SSM.Model.PutComplianceItemsRequest.IPutComplianceItemsRequest;
  IPutComplianceItemsResponse = AWS.SSM.Model.PutComplianceItemsResponse.IPutComplianceItemsResponse;
  IPutInventoryRequest = AWS.SSM.Model.PutInventoryRequest.IPutInventoryRequest;
  IPutInventoryResponse = AWS.SSM.Model.PutInventoryResponse.IPutInventoryResponse;
  IPutParameterRequest = AWS.SSM.Model.PutParameterRequest.IPutParameterRequest;
  IPutParameterResponse = AWS.SSM.Model.PutParameterResponse.IPutParameterResponse;
  IRegisterDefaultPatchBaselineRequest = AWS.SSM.Model.RegisterDefaultPatchBaselineRequest.IRegisterDefaultPatchBaselineRequest;
  IRegisterDefaultPatchBaselineResponse = AWS.SSM.Model.RegisterDefaultPatchBaselineResponse.IRegisterDefaultPatchBaselineResponse;
  IRegisterPatchBaselineForPatchGroupRequest = AWS.SSM.Model.RegisterPatchBaselineForPatchGroupRequest.IRegisterPatchBaselineForPatchGroupRequest;
  IRegisterPatchBaselineForPatchGroupResponse = AWS.SSM.Model.RegisterPatchBaselineForPatchGroupResponse.IRegisterPatchBaselineForPatchGroupResponse;
  IRegisterTargetWithMaintenanceWindowRequest = AWS.SSM.Model.RegisterTargetWithMaintenanceWindowRequest.IRegisterTargetWithMaintenanceWindowRequest;
  IRegisterTargetWithMaintenanceWindowResponse = AWS.SSM.Model.RegisterTargetWithMaintenanceWindowResponse.IRegisterTargetWithMaintenanceWindowResponse;
  IRegisterTaskWithMaintenanceWindowRequest = AWS.SSM.Model.RegisterTaskWithMaintenanceWindowRequest.IRegisterTaskWithMaintenanceWindowRequest;
  IRegisterTaskWithMaintenanceWindowResponse = AWS.SSM.Model.RegisterTaskWithMaintenanceWindowResponse.IRegisterTaskWithMaintenanceWindowResponse;
  IRegistrationMetadataItem = AWS.SSM.Model.RegistrationMetadataItem.IRegistrationMetadataItem;
  IRelatedOpsItem = AWS.SSM.Model.RelatedOpsItem.IRelatedOpsItem;
  IRemoveTagsFromResourceRequest = AWS.SSM.Model.RemoveTagsFromResourceRequest.IRemoveTagsFromResourceRequest;
  IRemoveTagsFromResourceResponse = AWS.SSM.Model.RemoveTagsFromResourceResponse.IRemoveTagsFromResourceResponse;
  IResetServiceSettingRequest = AWS.SSM.Model.ResetServiceSettingRequest.IResetServiceSettingRequest;
  IResetServiceSettingResponse = AWS.SSM.Model.ResetServiceSettingResponse.IResetServiceSettingResponse;
  IResolvedTargets = AWS.SSM.Model.ResolvedTargets.IResolvedTargets;
  IResourceComplianceSummaryItem = AWS.SSM.Model.ResourceComplianceSummaryItem.IResourceComplianceSummaryItem;
  IResourceDataSyncAwsOrganizationsSource = AWS.SSM.Model.ResourceDataSyncAwsOrganizationsSource.IResourceDataSyncAwsOrganizationsSource;
  IResourceDataSyncDestinationDataSharing = AWS.SSM.Model.ResourceDataSyncDestinationDataSharing.IResourceDataSyncDestinationDataSharing;
  IResourceDataSyncItem = AWS.SSM.Model.ResourceDataSyncItem.IResourceDataSyncItem;
  IResourceDataSyncOrganizationalUnit = AWS.SSM.Model.ResourceDataSyncOrganizationalUnit.IResourceDataSyncOrganizationalUnit;
  IResourceDataSyncS3Destination = AWS.SSM.Model.ResourceDataSyncS3Destination.IResourceDataSyncS3Destination;
  IResourceDataSyncSource = AWS.SSM.Model.ResourceDataSyncSource.IResourceDataSyncSource;
  IResourceDataSyncSourceWithState = AWS.SSM.Model.ResourceDataSyncSourceWithState.IResourceDataSyncSourceWithState;
  IResultAttribute = AWS.SSM.Model.ResultAttribute.IResultAttribute;
  IResumeSessionRequest = AWS.SSM.Model.ResumeSessionRequest.IResumeSessionRequest;
  IResumeSessionResponse = AWS.SSM.Model.ResumeSessionResponse.IResumeSessionResponse;
  IReviewInformation = AWS.SSM.Model.ReviewInformation.IReviewInformation;
  IRunbook = AWS.SSM.Model.Runbook.IRunbook;
  IS3OutputLocation = AWS.SSM.Model.S3OutputLocation.IS3OutputLocation;
  IS3OutputUrl = AWS.SSM.Model.S3OutputUrl.IS3OutputUrl;
  IScheduledWindowExecution = AWS.SSM.Model.ScheduledWindowExecution.IScheduledWindowExecution;
  ISendAutomationSignalRequest = AWS.SSM.Model.SendAutomationSignalRequest.ISendAutomationSignalRequest;
  ISendAutomationSignalResponse = AWS.SSM.Model.SendAutomationSignalResponse.ISendAutomationSignalResponse;
  ISendCommandRequest = AWS.SSM.Model.SendCommandRequest.ISendCommandRequest;
  ISendCommandResponse = AWS.SSM.Model.SendCommandResponse.ISendCommandResponse;
  IServiceSetting = AWS.SSM.Model.ServiceSetting.IServiceSetting;
  ISession = AWS.SSM.Model.Session.ISession;
  ISessionFilter = AWS.SSM.Model.SessionFilter.ISessionFilter;
  ISessionManagerOutputUrl = AWS.SSM.Model.SessionManagerOutputUrl.ISessionManagerOutputUrl;
  ISeveritySummary = AWS.SSM.Model.SeveritySummary.ISeveritySummary;
  IStartAssociationsOnceRequest = AWS.SSM.Model.StartAssociationsOnceRequest.IStartAssociationsOnceRequest;
  IStartAssociationsOnceResponse = AWS.SSM.Model.StartAssociationsOnceResponse.IStartAssociationsOnceResponse;
  IStartAutomationExecutionRequest = AWS.SSM.Model.StartAutomationExecutionRequest.IStartAutomationExecutionRequest;
  IStartAutomationExecutionResponse = AWS.SSM.Model.StartAutomationExecutionResponse.IStartAutomationExecutionResponse;
  IStartChangeRequestExecutionRequest = AWS.SSM.Model.StartChangeRequestExecutionRequest.IStartChangeRequestExecutionRequest;
  IStartChangeRequestExecutionResponse = AWS.SSM.Model.StartChangeRequestExecutionResponse.IStartChangeRequestExecutionResponse;
  IStartSessionRequest = AWS.SSM.Model.StartSessionRequest.IStartSessionRequest;
  IStartSessionResponse = AWS.SSM.Model.StartSessionResponse.IStartSessionResponse;
  IStepExecution = AWS.SSM.Model.StepExecution.IStepExecution;
  IStepExecutionFilter = AWS.SSM.Model.StepExecutionFilter.IStepExecutionFilter;
  IStopAutomationExecutionRequest = AWS.SSM.Model.StopAutomationExecutionRequest.IStopAutomationExecutionRequest;
  IStopAutomationExecutionResponse = AWS.SSM.Model.StopAutomationExecutionResponse.IStopAutomationExecutionResponse;
  ITag = AWS.SSM.Model.Tag.ITag;
  ITarget = AWS.SSM.Model.Target.ITarget;
  ITargetLocation = AWS.SSM.Model.TargetLocation.ITargetLocation;
  ITerminateSessionRequest = AWS.SSM.Model.TerminateSessionRequest.ITerminateSessionRequest;
  ITerminateSessionResponse = AWS.SSM.Model.TerminateSessionResponse.ITerminateSessionResponse;
  IUnlabelParameterVersionRequest = AWS.SSM.Model.UnlabelParameterVersionRequest.IUnlabelParameterVersionRequest;
  IUnlabelParameterVersionResponse = AWS.SSM.Model.UnlabelParameterVersionResponse.IUnlabelParameterVersionResponse;
  IUpdateAssociationRequest = AWS.SSM.Model.UpdateAssociationRequest.IUpdateAssociationRequest;
  IUpdateAssociationResponse = AWS.SSM.Model.UpdateAssociationResponse.IUpdateAssociationResponse;
  IUpdateAssociationStatusRequest = AWS.SSM.Model.UpdateAssociationStatusRequest.IUpdateAssociationStatusRequest;
  IUpdateAssociationStatusResponse = AWS.SSM.Model.UpdateAssociationStatusResponse.IUpdateAssociationStatusResponse;
  IUpdateDocumentDefaultVersionRequest = AWS.SSM.Model.UpdateDocumentDefaultVersionRequest.IUpdateDocumentDefaultVersionRequest;
  IUpdateDocumentDefaultVersionResponse = AWS.SSM.Model.UpdateDocumentDefaultVersionResponse.IUpdateDocumentDefaultVersionResponse;
  IUpdateDocumentMetadataRequest = AWS.SSM.Model.UpdateDocumentMetadataRequest.IUpdateDocumentMetadataRequest;
  IUpdateDocumentMetadataResponse = AWS.SSM.Model.UpdateDocumentMetadataResponse.IUpdateDocumentMetadataResponse;
  IUpdateDocumentRequest = AWS.SSM.Model.UpdateDocumentRequest.IUpdateDocumentRequest;
  IUpdateDocumentResponse = AWS.SSM.Model.UpdateDocumentResponse.IUpdateDocumentResponse;
  IUpdateMaintenanceWindowRequest = AWS.SSM.Model.UpdateMaintenanceWindowRequest.IUpdateMaintenanceWindowRequest;
  IUpdateMaintenanceWindowResponse = AWS.SSM.Model.UpdateMaintenanceWindowResponse.IUpdateMaintenanceWindowResponse;
  IUpdateMaintenanceWindowTargetRequest = AWS.SSM.Model.UpdateMaintenanceWindowTargetRequest.IUpdateMaintenanceWindowTargetRequest;
  IUpdateMaintenanceWindowTargetResponse = AWS.SSM.Model.UpdateMaintenanceWindowTargetResponse.IUpdateMaintenanceWindowTargetResponse;
  IUpdateMaintenanceWindowTaskRequest = AWS.SSM.Model.UpdateMaintenanceWindowTaskRequest.IUpdateMaintenanceWindowTaskRequest;
  IUpdateMaintenanceWindowTaskResponse = AWS.SSM.Model.UpdateMaintenanceWindowTaskResponse.IUpdateMaintenanceWindowTaskResponse;
  IUpdateManagedInstanceRoleRequest = AWS.SSM.Model.UpdateManagedInstanceRoleRequest.IUpdateManagedInstanceRoleRequest;
  IUpdateManagedInstanceRoleResponse = AWS.SSM.Model.UpdateManagedInstanceRoleResponse.IUpdateManagedInstanceRoleResponse;
  IUpdateOpsItemRequest = AWS.SSM.Model.UpdateOpsItemRequest.IUpdateOpsItemRequest;
  IUpdateOpsItemResponse = AWS.SSM.Model.UpdateOpsItemResponse.IUpdateOpsItemResponse;
  IUpdateOpsMetadataRequest = AWS.SSM.Model.UpdateOpsMetadataRequest.IUpdateOpsMetadataRequest;
  IUpdateOpsMetadataResponse = AWS.SSM.Model.UpdateOpsMetadataResponse.IUpdateOpsMetadataResponse;
  IUpdatePatchBaselineRequest = AWS.SSM.Model.UpdatePatchBaselineRequest.IUpdatePatchBaselineRequest;
  IUpdatePatchBaselineResponse = AWS.SSM.Model.UpdatePatchBaselineResponse.IUpdatePatchBaselineResponse;
  IUpdateResourceDataSyncRequest = AWS.SSM.Model.UpdateResourceDataSyncRequest.IUpdateResourceDataSyncRequest;
  IUpdateResourceDataSyncResponse = AWS.SSM.Model.UpdateResourceDataSyncResponse.IUpdateResourceDataSyncResponse;
  IUpdateServiceSettingRequest = AWS.SSM.Model.UpdateServiceSettingRequest.IUpdateServiceSettingRequest;
  IUpdateServiceSettingResponse = AWS.SSM.Model.UpdateServiceSettingResponse.IUpdateServiceSettingResponse;
  TAccountSharingInfo = AWS.SSM.Model.AccountSharingInfo.TAccountSharingInfo;
  TActivation = AWS.SSM.Model.Activation.TActivation;
  TAddTagsToResourceRequest = AWS.SSM.Model.AddTagsToResourceRequest.TAddTagsToResourceRequest;
  TAddTagsToResourceResponse = AWS.SSM.Model.AddTagsToResourceResponse.TAddTagsToResourceResponse;
  TAmazonSimpleSystemsManagementClient = AWS.SSM.Client.TAmazonSimpleSystemsManagementClient;
  TAmazonSimpleSystemsManagementConfig = AWS.SSM.Config.TAmazonSimpleSystemsManagementConfig;
  TAmazonSimpleSystemsManagementMetadata = AWS.SSM.Metadata.TAmazonSimpleSystemsManagementMetadata;
  TAmazonSimpleSystemsManagementRequest = AWS.SSM.Model.Request.TAmazonSimpleSystemsManagementRequest;
  TAssociateOpsItemRelatedItemRequest = AWS.SSM.Model.AssociateOpsItemRelatedItemRequest.TAssociateOpsItemRelatedItemRequest;
  TAssociateOpsItemRelatedItemResponse = AWS.SSM.Model.AssociateOpsItemRelatedItemResponse.TAssociateOpsItemRelatedItemResponse;
  TAssociation = AWS.SSM.Model.Association.TAssociation;
  TAssociationComplianceSeverity = AWS.SSM.Enums.TAssociationComplianceSeverity;
  TAssociationDescription = AWS.SSM.Model.AssociationDescription.TAssociationDescription;
  TAssociationExecution = AWS.SSM.Model.AssociationExecution.TAssociationExecution;
  TAssociationExecutionFilter = AWS.SSM.Model.AssociationExecutionFilter.TAssociationExecutionFilter;
  TAssociationExecutionFilterKey = AWS.SSM.Enums.TAssociationExecutionFilterKey;
  TAssociationExecutionTarget = AWS.SSM.Model.AssociationExecutionTarget.TAssociationExecutionTarget;
  TAssociationExecutionTargetsFilter = AWS.SSM.Model.AssociationExecutionTargetsFilter.TAssociationExecutionTargetsFilter;
  TAssociationExecutionTargetsFilterKey = AWS.SSM.Enums.TAssociationExecutionTargetsFilterKey;
  TAssociationFilter = AWS.SSM.Model.AssociationFilter.TAssociationFilter;
  TAssociationFilterKey = AWS.SSM.Enums.TAssociationFilterKey;
  TAssociationFilterOperatorType = AWS.SSM.Enums.TAssociationFilterOperatorType;
  TAssociationOverview = AWS.SSM.Model.AssociationOverview.TAssociationOverview;
  TAssociationStatus = AWS.SSM.Model.AssociationStatus.TAssociationStatus;
  TAssociationStatusName = AWS.SSM.Enums.TAssociationStatusName;
  TAssociationSyncCompliance = AWS.SSM.Enums.TAssociationSyncCompliance;
  TAssociationVersionInfo = AWS.SSM.Model.AssociationVersionInfo.TAssociationVersionInfo;
  TAttachmentContent = AWS.SSM.Model.AttachmentContent.TAttachmentContent;
  TAttachmentHashType = AWS.SSM.Enums.TAttachmentHashType;
  TAttachmentInformation = AWS.SSM.Model.AttachmentInformation.TAttachmentInformation;
  TAttachmentsSource = AWS.SSM.Model.AttachmentsSource.TAttachmentsSource;
  TAttachmentsSourceKey = AWS.SSM.Enums.TAttachmentsSourceKey;
  TAutomationExecution = AWS.SSM.Model.AutomationExecution.TAutomationExecution;
  TAutomationExecutionFilter = AWS.SSM.Model.AutomationExecutionFilter.TAutomationExecutionFilter;
  TAutomationExecutionFilterKey = AWS.SSM.Enums.TAutomationExecutionFilterKey;
  TAutomationExecutionMetadata = AWS.SSM.Model.AutomationExecutionMetadata.TAutomationExecutionMetadata;
  TAutomationExecutionStatus = AWS.SSM.Enums.TAutomationExecutionStatus;
  TAutomationSubtype = AWS.SSM.Enums.TAutomationSubtype;
  TAutomationType = AWS.SSM.Enums.TAutomationType;
  TBaselineOverride = AWS.SSM.Model.BaselineOverride.TBaselineOverride;
  TCalendarState = AWS.SSM.Enums.TCalendarState;
  TCancelCommandRequest = AWS.SSM.Model.CancelCommandRequest.TCancelCommandRequest;
  TCancelCommandResponse = AWS.SSM.Model.CancelCommandResponse.TCancelCommandResponse;
  TCancelMaintenanceWindowExecutionRequest = AWS.SSM.Model.CancelMaintenanceWindowExecutionRequest.TCancelMaintenanceWindowExecutionRequest;
  TCancelMaintenanceWindowExecutionResponse = AWS.SSM.Model.CancelMaintenanceWindowExecutionResponse.TCancelMaintenanceWindowExecutionResponse;
  TCloudWatchOutputConfig = AWS.SSM.Model.CloudWatchOutputConfig.TCloudWatchOutputConfig;
  TCommand = AWS.SSM.Model.Command.TCommand;
  TCommandFilter = AWS.SSM.Model.CommandFilter.TCommandFilter;
  TCommandFilterKey = AWS.SSM.Enums.TCommandFilterKey;
  TCommandInvocation = AWS.SSM.Model.CommandInvocation.TCommandInvocation;
  TCommandInvocationStatus = AWS.SSM.Enums.TCommandInvocationStatus;
  TCommandPlugin = AWS.SSM.Model.CommandPlugin.TCommandPlugin;
  TCommandPluginStatus = AWS.SSM.Enums.TCommandPluginStatus;
  TCommandStatus = AWS.SSM.Enums.TCommandStatus;
  TComplianceExecutionSummary = AWS.SSM.Model.ComplianceExecutionSummary.TComplianceExecutionSummary;
  TComplianceItem = AWS.SSM.Model.ComplianceItem.TComplianceItem;
  TComplianceItemEntry = AWS.SSM.Model.ComplianceItemEntry.TComplianceItemEntry;
  TComplianceQueryOperatorType = AWS.SSM.Enums.TComplianceQueryOperatorType;
  TComplianceSeverity = AWS.SSM.Enums.TComplianceSeverity;
  TComplianceStatus = AWS.SSM.Enums.TComplianceStatus;
  TComplianceStringFilter = AWS.SSM.Model.ComplianceStringFilter.TComplianceStringFilter;
  TComplianceSummaryItem = AWS.SSM.Model.ComplianceSummaryItem.TComplianceSummaryItem;
  TComplianceUploadType = AWS.SSM.Enums.TComplianceUploadType;
  TCompliantSummary = AWS.SSM.Model.CompliantSummary.TCompliantSummary;
  TConnectionStatus = AWS.SSM.Enums.TConnectionStatus;
  TCreateActivationRequest = AWS.SSM.Model.CreateActivationRequest.TCreateActivationRequest;
  TCreateActivationResponse = AWS.SSM.Model.CreateActivationResponse.TCreateActivationResponse;
  TCreateAssociationBatchRequest = AWS.SSM.Model.CreateAssociationBatchRequest.TCreateAssociationBatchRequest;
  TCreateAssociationBatchRequestEntry = AWS.SSM.Model.CreateAssociationBatchRequestEntry.TCreateAssociationBatchRequestEntry;
  TCreateAssociationBatchResponse = AWS.SSM.Model.CreateAssociationBatchResponse.TCreateAssociationBatchResponse;
  TCreateAssociationRequest = AWS.SSM.Model.CreateAssociationRequest.TCreateAssociationRequest;
  TCreateAssociationResponse = AWS.SSM.Model.CreateAssociationResponse.TCreateAssociationResponse;
  TCreateDocumentRequest = AWS.SSM.Model.CreateDocumentRequest.TCreateDocumentRequest;
  TCreateDocumentResponse = AWS.SSM.Model.CreateDocumentResponse.TCreateDocumentResponse;
  TCreateMaintenanceWindowRequest = AWS.SSM.Model.CreateMaintenanceWindowRequest.TCreateMaintenanceWindowRequest;
  TCreateMaintenanceWindowResponse = AWS.SSM.Model.CreateMaintenanceWindowResponse.TCreateMaintenanceWindowResponse;
  TCreateOpsItemRequest = AWS.SSM.Model.CreateOpsItemRequest.TCreateOpsItemRequest;
  TCreateOpsItemResponse = AWS.SSM.Model.CreateOpsItemResponse.TCreateOpsItemResponse;
  TCreateOpsMetadataRequest = AWS.SSM.Model.CreateOpsMetadataRequest.TCreateOpsMetadataRequest;
  TCreateOpsMetadataResponse = AWS.SSM.Model.CreateOpsMetadataResponse.TCreateOpsMetadataResponse;
  TCreatePatchBaselineRequest = AWS.SSM.Model.CreatePatchBaselineRequest.TCreatePatchBaselineRequest;
  TCreatePatchBaselineResponse = AWS.SSM.Model.CreatePatchBaselineResponse.TCreatePatchBaselineResponse;
  TCreateResourceDataSyncRequest = AWS.SSM.Model.CreateResourceDataSyncRequest.TCreateResourceDataSyncRequest;
  TCreateResourceDataSyncResponse = AWS.SSM.Model.CreateResourceDataSyncResponse.TCreateResourceDataSyncResponse;
  TDeleteActivationRequest = AWS.SSM.Model.DeleteActivationRequest.TDeleteActivationRequest;
  TDeleteActivationResponse = AWS.SSM.Model.DeleteActivationResponse.TDeleteActivationResponse;
  TDeleteAssociationRequest = AWS.SSM.Model.DeleteAssociationRequest.TDeleteAssociationRequest;
  TDeleteAssociationResponse = AWS.SSM.Model.DeleteAssociationResponse.TDeleteAssociationResponse;
  TDeleteDocumentRequest = AWS.SSM.Model.DeleteDocumentRequest.TDeleteDocumentRequest;
  TDeleteDocumentResponse = AWS.SSM.Model.DeleteDocumentResponse.TDeleteDocumentResponse;
  TDeleteInventoryRequest = AWS.SSM.Model.DeleteInventoryRequest.TDeleteInventoryRequest;
  TDeleteInventoryResponse = AWS.SSM.Model.DeleteInventoryResponse.TDeleteInventoryResponse;
  TDeleteMaintenanceWindowRequest = AWS.SSM.Model.DeleteMaintenanceWindowRequest.TDeleteMaintenanceWindowRequest;
  TDeleteMaintenanceWindowResponse = AWS.SSM.Model.DeleteMaintenanceWindowResponse.TDeleteMaintenanceWindowResponse;
  TDeleteOpsMetadataRequest = AWS.SSM.Model.DeleteOpsMetadataRequest.TDeleteOpsMetadataRequest;
  TDeleteOpsMetadataResponse = AWS.SSM.Model.DeleteOpsMetadataResponse.TDeleteOpsMetadataResponse;
  TDeleteParameterRequest = AWS.SSM.Model.DeleteParameterRequest.TDeleteParameterRequest;
  TDeleteParameterResponse = AWS.SSM.Model.DeleteParameterResponse.TDeleteParameterResponse;
  TDeleteParametersRequest = AWS.SSM.Model.DeleteParametersRequest.TDeleteParametersRequest;
  TDeleteParametersResponse = AWS.SSM.Model.DeleteParametersResponse.TDeleteParametersResponse;
  TDeletePatchBaselineRequest = AWS.SSM.Model.DeletePatchBaselineRequest.TDeletePatchBaselineRequest;
  TDeletePatchBaselineResponse = AWS.SSM.Model.DeletePatchBaselineResponse.TDeletePatchBaselineResponse;
  TDeleteResourceDataSyncRequest = AWS.SSM.Model.DeleteResourceDataSyncRequest.TDeleteResourceDataSyncRequest;
  TDeleteResourceDataSyncResponse = AWS.SSM.Model.DeleteResourceDataSyncResponse.TDeleteResourceDataSyncResponse;
  TDeregisterManagedInstanceRequest = AWS.SSM.Model.DeregisterManagedInstanceRequest.TDeregisterManagedInstanceRequest;
  TDeregisterManagedInstanceResponse = AWS.SSM.Model.DeregisterManagedInstanceResponse.TDeregisterManagedInstanceResponse;
  TDeregisterPatchBaselineForPatchGroupRequest = AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupRequest.TDeregisterPatchBaselineForPatchGroupRequest;
  TDeregisterPatchBaselineForPatchGroupResponse = AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupResponse.TDeregisterPatchBaselineForPatchGroupResponse;
  TDeregisterTargetFromMaintenanceWindowRequest = AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowRequest.TDeregisterTargetFromMaintenanceWindowRequest;
  TDeregisterTargetFromMaintenanceWindowResponse = AWS.SSM.Model.DeregisterTargetFromMaintenanceWindowResponse.TDeregisterTargetFromMaintenanceWindowResponse;
  TDeregisterTaskFromMaintenanceWindowRequest = AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowRequest.TDeregisterTaskFromMaintenanceWindowRequest;
  TDeregisterTaskFromMaintenanceWindowResponse = AWS.SSM.Model.DeregisterTaskFromMaintenanceWindowResponse.TDeregisterTaskFromMaintenanceWindowResponse;
  TDescribeActivationsFilter = AWS.SSM.Model.DescribeActivationsFilter.TDescribeActivationsFilter;
  TDescribeActivationsFilterKeys = AWS.SSM.Enums.TDescribeActivationsFilterKeys;
  TDescribeActivationsRequest = AWS.SSM.Model.DescribeActivationsRequest.TDescribeActivationsRequest;
  TDescribeActivationsResponse = AWS.SSM.Model.DescribeActivationsResponse.TDescribeActivationsResponse;
  TDescribeAssociationExecutionsRequest = AWS.SSM.Model.DescribeAssociationExecutionsRequest.TDescribeAssociationExecutionsRequest;
  TDescribeAssociationExecutionsResponse = AWS.SSM.Model.DescribeAssociationExecutionsResponse.TDescribeAssociationExecutionsResponse;
  TDescribeAssociationExecutionTargetsRequest = AWS.SSM.Model.DescribeAssociationExecutionTargetsRequest.TDescribeAssociationExecutionTargetsRequest;
  TDescribeAssociationExecutionTargetsResponse = AWS.SSM.Model.DescribeAssociationExecutionTargetsResponse.TDescribeAssociationExecutionTargetsResponse;
  TDescribeAssociationRequest = AWS.SSM.Model.DescribeAssociationRequest.TDescribeAssociationRequest;
  TDescribeAssociationResponse = AWS.SSM.Model.DescribeAssociationResponse.TDescribeAssociationResponse;
  TDescribeAutomationExecutionsRequest = AWS.SSM.Model.DescribeAutomationExecutionsRequest.TDescribeAutomationExecutionsRequest;
  TDescribeAutomationExecutionsResponse = AWS.SSM.Model.DescribeAutomationExecutionsResponse.TDescribeAutomationExecutionsResponse;
  TDescribeAutomationStepExecutionsRequest = AWS.SSM.Model.DescribeAutomationStepExecutionsRequest.TDescribeAutomationStepExecutionsRequest;
  TDescribeAutomationStepExecutionsResponse = AWS.SSM.Model.DescribeAutomationStepExecutionsResponse.TDescribeAutomationStepExecutionsResponse;
  TDescribeAvailablePatchesRequest = AWS.SSM.Model.DescribeAvailablePatchesRequest.TDescribeAvailablePatchesRequest;
  TDescribeAvailablePatchesResponse = AWS.SSM.Model.DescribeAvailablePatchesResponse.TDescribeAvailablePatchesResponse;
  TDescribeDocumentPermissionRequest = AWS.SSM.Model.DescribeDocumentPermissionRequest.TDescribeDocumentPermissionRequest;
  TDescribeDocumentPermissionResponse = AWS.SSM.Model.DescribeDocumentPermissionResponse.TDescribeDocumentPermissionResponse;
  TDescribeDocumentRequest = AWS.SSM.Model.DescribeDocumentRequest.TDescribeDocumentRequest;
  TDescribeDocumentResponse = AWS.SSM.Model.DescribeDocumentResponse.TDescribeDocumentResponse;
  TDescribeEffectiveInstanceAssociationsRequest = AWS.SSM.Model.DescribeEffectiveInstanceAssociationsRequest.TDescribeEffectiveInstanceAssociationsRequest;
  TDescribeEffectiveInstanceAssociationsResponse = AWS.SSM.Model.DescribeEffectiveInstanceAssociationsResponse.TDescribeEffectiveInstanceAssociationsResponse;
  TDescribeEffectivePatchesForPatchBaselineRequest = AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineRequest.TDescribeEffectivePatchesForPatchBaselineRequest;
  TDescribeEffectivePatchesForPatchBaselineResponse = AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineResponse.TDescribeEffectivePatchesForPatchBaselineResponse;
  TDescribeInstanceAssociationsStatusRequest = AWS.SSM.Model.DescribeInstanceAssociationsStatusRequest.TDescribeInstanceAssociationsStatusRequest;
  TDescribeInstanceAssociationsStatusResponse = AWS.SSM.Model.DescribeInstanceAssociationsStatusResponse.TDescribeInstanceAssociationsStatusResponse;
  TDescribeInstanceInformationRequest = AWS.SSM.Model.DescribeInstanceInformationRequest.TDescribeInstanceInformationRequest;
  TDescribeInstanceInformationResponse = AWS.SSM.Model.DescribeInstanceInformationResponse.TDescribeInstanceInformationResponse;
  TDescribeInstancePatchesRequest = AWS.SSM.Model.DescribeInstancePatchesRequest.TDescribeInstancePatchesRequest;
  TDescribeInstancePatchesResponse = AWS.SSM.Model.DescribeInstancePatchesResponse.TDescribeInstancePatchesResponse;
  TDescribeInstancePatchStatesForPatchGroupRequest = AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupRequest.TDescribeInstancePatchStatesForPatchGroupRequest;
  TDescribeInstancePatchStatesForPatchGroupResponse = AWS.SSM.Model.DescribeInstancePatchStatesForPatchGroupResponse.TDescribeInstancePatchStatesForPatchGroupResponse;
  TDescribeInstancePatchStatesRequest = AWS.SSM.Model.DescribeInstancePatchStatesRequest.TDescribeInstancePatchStatesRequest;
  TDescribeInstancePatchStatesResponse = AWS.SSM.Model.DescribeInstancePatchStatesResponse.TDescribeInstancePatchStatesResponse;
  TDescribeInventoryDeletionsRequest = AWS.SSM.Model.DescribeInventoryDeletionsRequest.TDescribeInventoryDeletionsRequest;
  TDescribeInventoryDeletionsResponse = AWS.SSM.Model.DescribeInventoryDeletionsResponse.TDescribeInventoryDeletionsResponse;
  TDescribeMaintenanceWindowExecutionsRequest = AWS.SSM.Model.DescribeMaintenanceWindowExecutionsRequest.TDescribeMaintenanceWindowExecutionsRequest;
  TDescribeMaintenanceWindowExecutionsResponse = AWS.SSM.Model.DescribeMaintenanceWindowExecutionsResponse.TDescribeMaintenanceWindowExecutionsResponse;
  TDescribeMaintenanceWindowExecutionTaskInvocationsRequest = AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsRequest.TDescribeMaintenanceWindowExecutionTaskInvocationsRequest;
  TDescribeMaintenanceWindowExecutionTaskInvocationsResponse = AWS.SSM.Model.DescribeMaintenanceWindowExecutionTaskInvocationsResponse.TDescribeMaintenanceWindowExecutionTaskInvocationsResponse;
  TDescribeMaintenanceWindowExecutionTasksRequest = AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksRequest.TDescribeMaintenanceWindowExecutionTasksRequest;
  TDescribeMaintenanceWindowExecutionTasksResponse = AWS.SSM.Model.DescribeMaintenanceWindowExecutionTasksResponse.TDescribeMaintenanceWindowExecutionTasksResponse;
  TDescribeMaintenanceWindowScheduleRequest = AWS.SSM.Model.DescribeMaintenanceWindowScheduleRequest.TDescribeMaintenanceWindowScheduleRequest;
  TDescribeMaintenanceWindowScheduleResponse = AWS.SSM.Model.DescribeMaintenanceWindowScheduleResponse.TDescribeMaintenanceWindowScheduleResponse;
  TDescribeMaintenanceWindowsForTargetRequest = AWS.SSM.Model.DescribeMaintenanceWindowsForTargetRequest.TDescribeMaintenanceWindowsForTargetRequest;
  TDescribeMaintenanceWindowsForTargetResponse = AWS.SSM.Model.DescribeMaintenanceWindowsForTargetResponse.TDescribeMaintenanceWindowsForTargetResponse;
  TDescribeMaintenanceWindowsRequest = AWS.SSM.Model.DescribeMaintenanceWindowsRequest.TDescribeMaintenanceWindowsRequest;
  TDescribeMaintenanceWindowsResponse = AWS.SSM.Model.DescribeMaintenanceWindowsResponse.TDescribeMaintenanceWindowsResponse;
  TDescribeMaintenanceWindowTargetsRequest = AWS.SSM.Model.DescribeMaintenanceWindowTargetsRequest.TDescribeMaintenanceWindowTargetsRequest;
  TDescribeMaintenanceWindowTargetsResponse = AWS.SSM.Model.DescribeMaintenanceWindowTargetsResponse.TDescribeMaintenanceWindowTargetsResponse;
  TDescribeMaintenanceWindowTasksRequest = AWS.SSM.Model.DescribeMaintenanceWindowTasksRequest.TDescribeMaintenanceWindowTasksRequest;
  TDescribeMaintenanceWindowTasksResponse = AWS.SSM.Model.DescribeMaintenanceWindowTasksResponse.TDescribeMaintenanceWindowTasksResponse;
  TDescribeOpsItemsRequest = AWS.SSM.Model.DescribeOpsItemsRequest.TDescribeOpsItemsRequest;
  TDescribeOpsItemsResponse = AWS.SSM.Model.DescribeOpsItemsResponse.TDescribeOpsItemsResponse;
  TDescribeParametersRequest = AWS.SSM.Model.DescribeParametersRequest.TDescribeParametersRequest;
  TDescribeParametersResponse = AWS.SSM.Model.DescribeParametersResponse.TDescribeParametersResponse;
  TDescribePatchBaselinesRequest = AWS.SSM.Model.DescribePatchBaselinesRequest.TDescribePatchBaselinesRequest;
  TDescribePatchBaselinesResponse = AWS.SSM.Model.DescribePatchBaselinesResponse.TDescribePatchBaselinesResponse;
  TDescribePatchGroupsRequest = AWS.SSM.Model.DescribePatchGroupsRequest.TDescribePatchGroupsRequest;
  TDescribePatchGroupsResponse = AWS.SSM.Model.DescribePatchGroupsResponse.TDescribePatchGroupsResponse;
  TDescribePatchGroupStateRequest = AWS.SSM.Model.DescribePatchGroupStateRequest.TDescribePatchGroupStateRequest;
  TDescribePatchGroupStateResponse = AWS.SSM.Model.DescribePatchGroupStateResponse.TDescribePatchGroupStateResponse;
  TDescribePatchPropertiesRequest = AWS.SSM.Model.DescribePatchPropertiesRequest.TDescribePatchPropertiesRequest;
  TDescribePatchPropertiesResponse = AWS.SSM.Model.DescribePatchPropertiesResponse.TDescribePatchPropertiesResponse;
  TDescribeSessionsRequest = AWS.SSM.Model.DescribeSessionsRequest.TDescribeSessionsRequest;
  TDescribeSessionsResponse = AWS.SSM.Model.DescribeSessionsResponse.TDescribeSessionsResponse;
  TDisassociateOpsItemRelatedItemRequest = AWS.SSM.Model.DisassociateOpsItemRelatedItemRequest.TDisassociateOpsItemRelatedItemRequest;
  TDisassociateOpsItemRelatedItemResponse = AWS.SSM.Model.DisassociateOpsItemRelatedItemResponse.TDisassociateOpsItemRelatedItemResponse;
  TDocumentDefaultVersionDescription = AWS.SSM.Model.DocumentDefaultVersionDescription.TDocumentDefaultVersionDescription;
  TDocumentDescription = AWS.SSM.Model.DocumentDescription.TDocumentDescription;
  TDocumentFilter = AWS.SSM.Model.DocumentFilter.TDocumentFilter;
  TDocumentFilterKey = AWS.SSM.Enums.TDocumentFilterKey;
  TDocumentFormat = AWS.SSM.Enums.TDocumentFormat;
  TDocumentHashType = AWS.SSM.Enums.TDocumentHashType;
  TDocumentIdentifier = AWS.SSM.Model.DocumentIdentifier.TDocumentIdentifier;
  TDocumentKeyValuesFilter = AWS.SSM.Model.DocumentKeyValuesFilter.TDocumentKeyValuesFilter;
  TDocumentMetadataEnum = AWS.SSM.Enums.TDocumentMetadataEnum;
  TDocumentMetadataResponseInfo = AWS.SSM.Model.DocumentMetadataResponseInfo.TDocumentMetadataResponseInfo;
  TDocumentParameter = AWS.SSM.Model.DocumentParameter.TDocumentParameter;
  TDocumentParameterType = AWS.SSM.Enums.TDocumentParameterType;
  TDocumentPermissionType = AWS.SSM.Enums.TDocumentPermissionType;
  TDocumentRequires = AWS.SSM.Model.DocumentRequires.TDocumentRequires;
  TDocumentReviewAction = AWS.SSM.Enums.TDocumentReviewAction;
  TDocumentReviewCommentSource = AWS.SSM.Model.DocumentReviewCommentSource.TDocumentReviewCommentSource;
  TDocumentReviewCommentType = AWS.SSM.Enums.TDocumentReviewCommentType;
  TDocumentReviewerResponseSource = AWS.SSM.Model.DocumentReviewerResponseSource.TDocumentReviewerResponseSource;
  TDocumentReviews = AWS.SSM.Model.DocumentReviews.TDocumentReviews;
  TDocumentStatus = AWS.SSM.Enums.TDocumentStatus;
  TDocumentType = AWS.SSM.Enums.TDocumentType;
  TDocumentVersionInfo = AWS.SSM.Model.DocumentVersionInfo.TDocumentVersionInfo;
  TEffectivePatch = AWS.SSM.Model.EffectivePatch.TEffectivePatch;
  TExecutionMode = AWS.SSM.Enums.TExecutionMode;
  TFailedCreateAssociation = AWS.SSM.Model.FailedCreateAssociation.TFailedCreateAssociation;
  TFailureDetails = AWS.SSM.Model.FailureDetails.TFailureDetails;
  TFault = AWS.SSM.Enums.TFault;
  TGetAutomationExecutionRequest = AWS.SSM.Model.GetAutomationExecutionRequest.TGetAutomationExecutionRequest;
  TGetAutomationExecutionResponse = AWS.SSM.Model.GetAutomationExecutionResponse.TGetAutomationExecutionResponse;
  TGetCalendarStateRequest = AWS.SSM.Model.GetCalendarStateRequest.TGetCalendarStateRequest;
  TGetCalendarStateResponse = AWS.SSM.Model.GetCalendarStateResponse.TGetCalendarStateResponse;
  TGetCommandInvocationRequest = AWS.SSM.Model.GetCommandInvocationRequest.TGetCommandInvocationRequest;
  TGetCommandInvocationResponse = AWS.SSM.Model.GetCommandInvocationResponse.TGetCommandInvocationResponse;
  TGetConnectionStatusRequest = AWS.SSM.Model.GetConnectionStatusRequest.TGetConnectionStatusRequest;
  TGetConnectionStatusResponse = AWS.SSM.Model.GetConnectionStatusResponse.TGetConnectionStatusResponse;
  TGetDefaultPatchBaselineRequest = AWS.SSM.Model.GetDefaultPatchBaselineRequest.TGetDefaultPatchBaselineRequest;
  TGetDefaultPatchBaselineResponse = AWS.SSM.Model.GetDefaultPatchBaselineResponse.TGetDefaultPatchBaselineResponse;
  TGetDeployablePatchSnapshotForInstanceRequest = AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceRequest.TGetDeployablePatchSnapshotForInstanceRequest;
  TGetDeployablePatchSnapshotForInstanceResponse = AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceResponse.TGetDeployablePatchSnapshotForInstanceResponse;
  TGetDocumentRequest = AWS.SSM.Model.GetDocumentRequest.TGetDocumentRequest;
  TGetDocumentResponse = AWS.SSM.Model.GetDocumentResponse.TGetDocumentResponse;
  TGetInventoryRequest = AWS.SSM.Model.GetInventoryRequest.TGetInventoryRequest;
  TGetInventoryResponse = AWS.SSM.Model.GetInventoryResponse.TGetInventoryResponse;
  TGetInventorySchemaRequest = AWS.SSM.Model.GetInventorySchemaRequest.TGetInventorySchemaRequest;
  TGetInventorySchemaResponse = AWS.SSM.Model.GetInventorySchemaResponse.TGetInventorySchemaResponse;
  TGetMaintenanceWindowExecutionRequest = AWS.SSM.Model.GetMaintenanceWindowExecutionRequest.TGetMaintenanceWindowExecutionRequest;
  TGetMaintenanceWindowExecutionResponse = AWS.SSM.Model.GetMaintenanceWindowExecutionResponse.TGetMaintenanceWindowExecutionResponse;
  TGetMaintenanceWindowExecutionTaskInvocationRequest = AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationRequest.TGetMaintenanceWindowExecutionTaskInvocationRequest;
  TGetMaintenanceWindowExecutionTaskInvocationResponse = AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationResponse.TGetMaintenanceWindowExecutionTaskInvocationResponse;
  TGetMaintenanceWindowExecutionTaskRequest = AWS.SSM.Model.GetMaintenanceWindowExecutionTaskRequest.TGetMaintenanceWindowExecutionTaskRequest;
  TGetMaintenanceWindowExecutionTaskResponse = AWS.SSM.Model.GetMaintenanceWindowExecutionTaskResponse.TGetMaintenanceWindowExecutionTaskResponse;
  TGetMaintenanceWindowRequest = AWS.SSM.Model.GetMaintenanceWindowRequest.TGetMaintenanceWindowRequest;
  TGetMaintenanceWindowResponse = AWS.SSM.Model.GetMaintenanceWindowResponse.TGetMaintenanceWindowResponse;
  TGetMaintenanceWindowTaskRequest = AWS.SSM.Model.GetMaintenanceWindowTaskRequest.TGetMaintenanceWindowTaskRequest;
  TGetMaintenanceWindowTaskResponse = AWS.SSM.Model.GetMaintenanceWindowTaskResponse.TGetMaintenanceWindowTaskResponse;
  TGetOpsItemRequest = AWS.SSM.Model.GetOpsItemRequest.TGetOpsItemRequest;
  TGetOpsItemResponse = AWS.SSM.Model.GetOpsItemResponse.TGetOpsItemResponse;
  TGetOpsMetadataRequest = AWS.SSM.Model.GetOpsMetadataRequest.TGetOpsMetadataRequest;
  TGetOpsMetadataResponse = AWS.SSM.Model.GetOpsMetadataResponse.TGetOpsMetadataResponse;
  TGetOpsSummaryRequest = AWS.SSM.Model.GetOpsSummaryRequest.TGetOpsSummaryRequest;
  TGetOpsSummaryResponse = AWS.SSM.Model.GetOpsSummaryResponse.TGetOpsSummaryResponse;
  TGetParameterHistoryRequest = AWS.SSM.Model.GetParameterHistoryRequest.TGetParameterHistoryRequest;
  TGetParameterHistoryResponse = AWS.SSM.Model.GetParameterHistoryResponse.TGetParameterHistoryResponse;
  TGetParameterRequest = AWS.SSM.Model.GetParameterRequest.TGetParameterRequest;
  TGetParameterResponse = AWS.SSM.Model.GetParameterResponse.TGetParameterResponse;
  TGetParametersByPathRequest = AWS.SSM.Model.GetParametersByPathRequest.TGetParametersByPathRequest;
  TGetParametersByPathResponse = AWS.SSM.Model.GetParametersByPathResponse.TGetParametersByPathResponse;
  TGetParametersRequest = AWS.SSM.Model.GetParametersRequest.TGetParametersRequest;
  TGetParametersResponse = AWS.SSM.Model.GetParametersResponse.TGetParametersResponse;
  TGetPatchBaselineForPatchGroupRequest = AWS.SSM.Model.GetPatchBaselineForPatchGroupRequest.TGetPatchBaselineForPatchGroupRequest;
  TGetPatchBaselineForPatchGroupResponse = AWS.SSM.Model.GetPatchBaselineForPatchGroupResponse.TGetPatchBaselineForPatchGroupResponse;
  TGetPatchBaselineRequest = AWS.SSM.Model.GetPatchBaselineRequest.TGetPatchBaselineRequest;
  TGetPatchBaselineResponse = AWS.SSM.Model.GetPatchBaselineResponse.TGetPatchBaselineResponse;
  TGetServiceSettingRequest = AWS.SSM.Model.GetServiceSettingRequest.TGetServiceSettingRequest;
  TGetServiceSettingResponse = AWS.SSM.Model.GetServiceSettingResponse.TGetServiceSettingResponse;
  TInstanceAggregatedAssociationOverview = AWS.SSM.Model.InstanceAggregatedAssociationOverview.TInstanceAggregatedAssociationOverview;
  TInstanceAssociation = AWS.SSM.Model.InstanceAssociation.TInstanceAssociation;
  TInstanceAssociationOutputLocation = AWS.SSM.Model.InstanceAssociationOutputLocation.TInstanceAssociationOutputLocation;
  TInstanceAssociationOutputUrl = AWS.SSM.Model.InstanceAssociationOutputUrl.TInstanceAssociationOutputUrl;
  TInstanceAssociationStatusInfo = AWS.SSM.Model.InstanceAssociationStatusInfo.TInstanceAssociationStatusInfo;
  TInstanceInformation = AWS.SSM.Model.InstanceInformation.TInstanceInformation;
  TInstanceInformationFilter = AWS.SSM.Model.InstanceInformationFilter.TInstanceInformationFilter;
  TInstanceInformationFilterKey = AWS.SSM.Enums.TInstanceInformationFilterKey;
  TInstanceInformationStringFilter = AWS.SSM.Model.InstanceInformationStringFilter.TInstanceInformationStringFilter;
  TInstancePatchState = AWS.SSM.Model.InstancePatchState.TInstancePatchState;
  TInstancePatchStateFilter = AWS.SSM.Model.InstancePatchStateFilter.TInstancePatchStateFilter;
  TInstancePatchStateOperatorType = AWS.SSM.Enums.TInstancePatchStateOperatorType;
  TInventoryAggregator = AWS.SSM.Model.InventoryAggregator.TInventoryAggregator;
  TInventoryAttributeDataType = AWS.SSM.Enums.TInventoryAttributeDataType;
  TInventoryDeletionStatus = AWS.SSM.Enums.TInventoryDeletionStatus;
  TInventoryDeletionStatusItem = AWS.SSM.Model.InventoryDeletionStatusItem.TInventoryDeletionStatusItem;
  TInventoryDeletionSummary = AWS.SSM.Model.InventoryDeletionSummary.TInventoryDeletionSummary;
  TInventoryDeletionSummaryItem = AWS.SSM.Model.InventoryDeletionSummaryItem.TInventoryDeletionSummaryItem;
  TInventoryFilter = AWS.SSM.Model.InventoryFilter.TInventoryFilter;
  TInventoryGroup = AWS.SSM.Model.InventoryGroup.TInventoryGroup;
  TInventoryItem = AWS.SSM.Model.InventoryItem.TInventoryItem;
  TInventoryItemAttribute = AWS.SSM.Model.InventoryItemAttribute.TInventoryItemAttribute;
  TInventoryItemSchema = AWS.SSM.Model.InventoryItemSchema.TInventoryItemSchema;
  TInventoryQueryOperatorType = AWS.SSM.Enums.TInventoryQueryOperatorType;
  TInventoryResultEntity = AWS.SSM.Model.InventoryResultEntity.TInventoryResultEntity;
  TInventoryResultItem = AWS.SSM.Model.InventoryResultItem.TInventoryResultItem;
  TInventorySchemaDeleteOption = AWS.SSM.Enums.TInventorySchemaDeleteOption;
  TLabelParameterVersionRequest = AWS.SSM.Model.LabelParameterVersionRequest.TLabelParameterVersionRequest;
  TLabelParameterVersionResponse = AWS.SSM.Model.LabelParameterVersionResponse.TLabelParameterVersionResponse;
  TLastResourceDataSyncStatus = AWS.SSM.Enums.TLastResourceDataSyncStatus;
  TListAssociationsRequest = AWS.SSM.Model.ListAssociationsRequest.TListAssociationsRequest;
  TListAssociationsResponse = AWS.SSM.Model.ListAssociationsResponse.TListAssociationsResponse;
  TListAssociationVersionsRequest = AWS.SSM.Model.ListAssociationVersionsRequest.TListAssociationVersionsRequest;
  TListAssociationVersionsResponse = AWS.SSM.Model.ListAssociationVersionsResponse.TListAssociationVersionsResponse;
  TListCommandInvocationsRequest = AWS.SSM.Model.ListCommandInvocationsRequest.TListCommandInvocationsRequest;
  TListCommandInvocationsResponse = AWS.SSM.Model.ListCommandInvocationsResponse.TListCommandInvocationsResponse;
  TListCommandsRequest = AWS.SSM.Model.ListCommandsRequest.TListCommandsRequest;
  TListCommandsResponse = AWS.SSM.Model.ListCommandsResponse.TListCommandsResponse;
  TListComplianceItemsRequest = AWS.SSM.Model.ListComplianceItemsRequest.TListComplianceItemsRequest;
  TListComplianceItemsResponse = AWS.SSM.Model.ListComplianceItemsResponse.TListComplianceItemsResponse;
  TListComplianceSummariesRequest = AWS.SSM.Model.ListComplianceSummariesRequest.TListComplianceSummariesRequest;
  TListComplianceSummariesResponse = AWS.SSM.Model.ListComplianceSummariesResponse.TListComplianceSummariesResponse;
  TListDocumentMetadataHistoryRequest = AWS.SSM.Model.ListDocumentMetadataHistoryRequest.TListDocumentMetadataHistoryRequest;
  TListDocumentMetadataHistoryResponse = AWS.SSM.Model.ListDocumentMetadataHistoryResponse.TListDocumentMetadataHistoryResponse;
  TListDocumentsRequest = AWS.SSM.Model.ListDocumentsRequest.TListDocumentsRequest;
  TListDocumentsResponse = AWS.SSM.Model.ListDocumentsResponse.TListDocumentsResponse;
  TListDocumentVersionsRequest = AWS.SSM.Model.ListDocumentVersionsRequest.TListDocumentVersionsRequest;
  TListDocumentVersionsResponse = AWS.SSM.Model.ListDocumentVersionsResponse.TListDocumentVersionsResponse;
  TListInventoryEntriesRequest = AWS.SSM.Model.ListInventoryEntriesRequest.TListInventoryEntriesRequest;
  TListInventoryEntriesResponse = AWS.SSM.Model.ListInventoryEntriesResponse.TListInventoryEntriesResponse;
  TListOpsItemEventsRequest = AWS.SSM.Model.ListOpsItemEventsRequest.TListOpsItemEventsRequest;
  TListOpsItemEventsResponse = AWS.SSM.Model.ListOpsItemEventsResponse.TListOpsItemEventsResponse;
  TListOpsItemRelatedItemsRequest = AWS.SSM.Model.ListOpsItemRelatedItemsRequest.TListOpsItemRelatedItemsRequest;
  TListOpsItemRelatedItemsResponse = AWS.SSM.Model.ListOpsItemRelatedItemsResponse.TListOpsItemRelatedItemsResponse;
  TListOpsMetadataRequest = AWS.SSM.Model.ListOpsMetadataRequest.TListOpsMetadataRequest;
  TListOpsMetadataResponse = AWS.SSM.Model.ListOpsMetadataResponse.TListOpsMetadataResponse;
  TListResourceComplianceSummariesRequest = AWS.SSM.Model.ListResourceComplianceSummariesRequest.TListResourceComplianceSummariesRequest;
  TListResourceComplianceSummariesResponse = AWS.SSM.Model.ListResourceComplianceSummariesResponse.TListResourceComplianceSummariesResponse;
  TListResourceDataSyncRequest = AWS.SSM.Model.ListResourceDataSyncRequest.TListResourceDataSyncRequest;
  TListResourceDataSyncResponse = AWS.SSM.Model.ListResourceDataSyncResponse.TListResourceDataSyncResponse;
  TListTagsForResourceRequest = AWS.SSM.Model.ListTagsForResourceRequest.TListTagsForResourceRequest;
  TListTagsForResourceResponse = AWS.SSM.Model.ListTagsForResourceResponse.TListTagsForResourceResponse;
  TLoggingInfo = AWS.SSM.Model.LoggingInfo.TLoggingInfo;
  TMaintenanceWindowAutomationParameters = AWS.SSM.Model.MaintenanceWindowAutomationParameters.TMaintenanceWindowAutomationParameters;
  TMaintenanceWindowExecution = AWS.SSM.Model.MaintenanceWindowExecution.TMaintenanceWindowExecution;
  TMaintenanceWindowExecutionStatus = AWS.SSM.Enums.TMaintenanceWindowExecutionStatus;
  TMaintenanceWindowExecutionTaskIdentity = AWS.SSM.Model.MaintenanceWindowExecutionTaskIdentity.TMaintenanceWindowExecutionTaskIdentity;
  TMaintenanceWindowExecutionTaskInvocationIdentity = AWS.SSM.Model.MaintenanceWindowExecutionTaskInvocationIdentity.TMaintenanceWindowExecutionTaskInvocationIdentity;
  TMaintenanceWindowFilter = AWS.SSM.Model.MaintenanceWindowFilter.TMaintenanceWindowFilter;
  TMaintenanceWindowIdentity = AWS.SSM.Model.MaintenanceWindowIdentity.TMaintenanceWindowIdentity;
  TMaintenanceWindowIdentityForTarget = AWS.SSM.Model.MaintenanceWindowIdentityForTarget.TMaintenanceWindowIdentityForTarget;
  TMaintenanceWindowLambdaParameters = AWS.SSM.Model.MaintenanceWindowLambdaParameters.TMaintenanceWindowLambdaParameters;
  TMaintenanceWindowResourceType = AWS.SSM.Enums.TMaintenanceWindowResourceType;
  TMaintenanceWindowRunCommandParameters = AWS.SSM.Model.MaintenanceWindowRunCommandParameters.TMaintenanceWindowRunCommandParameters;
  TMaintenanceWindowStepFunctionsParameters = AWS.SSM.Model.MaintenanceWindowStepFunctionsParameters.TMaintenanceWindowStepFunctionsParameters;
  TMaintenanceWindowTarget = AWS.SSM.Model.MaintenanceWindowTarget.TMaintenanceWindowTarget;
  TMaintenanceWindowTask = AWS.SSM.Model.MaintenanceWindowTask.TMaintenanceWindowTask;
  TMaintenanceWindowTaskCutoffBehavior = AWS.SSM.Enums.TMaintenanceWindowTaskCutoffBehavior;
  TMaintenanceWindowTaskInvocationParameters = AWS.SSM.Model.MaintenanceWindowTaskInvocationParameters.TMaintenanceWindowTaskInvocationParameters;
  TMaintenanceWindowTaskParameterValueExpression = AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression.TMaintenanceWindowTaskParameterValueExpression;
  TMaintenanceWindowTaskType = AWS.SSM.Enums.TMaintenanceWindowTaskType;
  TMetadataValue = AWS.SSM.Model.MetadataValue.TMetadataValue;
  TModifyDocumentPermissionRequest = AWS.SSM.Model.ModifyDocumentPermissionRequest.TModifyDocumentPermissionRequest;
  TModifyDocumentPermissionResponse = AWS.SSM.Model.ModifyDocumentPermissionResponse.TModifyDocumentPermissionResponse;
  TNonCompliantSummary = AWS.SSM.Model.NonCompliantSummary.TNonCompliantSummary;
  TNotificationConfig = AWS.SSM.Model.NotificationConfig.TNotificationConfig;
  TNotificationEvent = AWS.SSM.Enums.TNotificationEvent;
  TNotificationType = AWS.SSM.Enums.TNotificationType;
  TOperatingSystem = AWS.SSM.Enums.TOperatingSystem;
  TOpsAggregator = AWS.SSM.Model.OpsAggregator.TOpsAggregator;
  TOpsEntity = AWS.SSM.Model.OpsEntity.TOpsEntity;
  TOpsEntityItem = AWS.SSM.Model.OpsEntityItem.TOpsEntityItem;
  TOpsFilter = AWS.SSM.Model.OpsFilter.TOpsFilter;
  TOpsFilterOperatorType = AWS.SSM.Enums.TOpsFilterOperatorType;
  TOpsItem = AWS.SSM.Model.OpsItem.TOpsItem;
  TOpsItemDataType = AWS.SSM.Enums.TOpsItemDataType;
  TOpsItemDataValue = AWS.SSM.Model.OpsItemDataValue.TOpsItemDataValue;
  TOpsItemEventFilter = AWS.SSM.Model.OpsItemEventFilter.TOpsItemEventFilter;
  TOpsItemEventFilterKey = AWS.SSM.Enums.TOpsItemEventFilterKey;
  TOpsItemEventFilterOperator = AWS.SSM.Enums.TOpsItemEventFilterOperator;
  TOpsItemEventSummary = AWS.SSM.Model.OpsItemEventSummary.TOpsItemEventSummary;
  TOpsItemFilter = AWS.SSM.Model.OpsItemFilter.TOpsItemFilter;
  TOpsItemFilterKey = AWS.SSM.Enums.TOpsItemFilterKey;
  TOpsItemFilterOperator = AWS.SSM.Enums.TOpsItemFilterOperator;
  TOpsItemIdentity = AWS.SSM.Model.OpsItemIdentity.TOpsItemIdentity;
  TOpsItemNotification = AWS.SSM.Model.OpsItemNotification.TOpsItemNotification;
  TOpsItemRelatedItemsFilter = AWS.SSM.Model.OpsItemRelatedItemsFilter.TOpsItemRelatedItemsFilter;
  TOpsItemRelatedItemsFilterKey = AWS.SSM.Enums.TOpsItemRelatedItemsFilterKey;
  TOpsItemRelatedItemsFilterOperator = AWS.SSM.Enums.TOpsItemRelatedItemsFilterOperator;
  TOpsItemRelatedItemSummary = AWS.SSM.Model.OpsItemRelatedItemSummary.TOpsItemRelatedItemSummary;
  TOpsItemStatus = AWS.SSM.Enums.TOpsItemStatus;
  TOpsItemSummary = AWS.SSM.Model.OpsItemSummary.TOpsItemSummary;
  TOpsMetadata = AWS.SSM.Model.OpsMetadata.TOpsMetadata;
  TOpsMetadataFilter = AWS.SSM.Model.OpsMetadataFilter.TOpsMetadataFilter;
  TOpsResultAttribute = AWS.SSM.Model.OpsResultAttribute.TOpsResultAttribute;
  TOutputSource = AWS.SSM.Model.OutputSource.TOutputSource;
  TParameter = AWS.SSM.Model.Parameter.TParameter;
  TParameterHistory = AWS.SSM.Model.ParameterHistory.TParameterHistory;
  TParameterInlinePolicy = AWS.SSM.Model.ParameterInlinePolicy.TParameterInlinePolicy;
  TParameterMetadata = AWS.SSM.Model.ParameterMetadata.TParameterMetadata;
  TParametersFilter = AWS.SSM.Model.ParametersFilter.TParametersFilter;
  TParametersFilterKey = AWS.SSM.Enums.TParametersFilterKey;
  TParameterStringFilter = AWS.SSM.Model.ParameterStringFilter.TParameterStringFilter;
  TParameterTier = AWS.SSM.Enums.TParameterTier;
  TParameterType = AWS.SSM.Enums.TParameterType;
  TPatch = AWS.SSM.Model.Patch.TPatch;
  TPatchAction = AWS.SSM.Enums.TPatchAction;
  TPatchBaselineIdentity = AWS.SSM.Model.PatchBaselineIdentity.TPatchBaselineIdentity;
  TPatchComplianceData = AWS.SSM.Model.PatchComplianceData.TPatchComplianceData;
  TPatchComplianceDataState = AWS.SSM.Enums.TPatchComplianceDataState;
  TPatchComplianceLevel = AWS.SSM.Enums.TPatchComplianceLevel;
  TPatchDeploymentStatus = AWS.SSM.Enums.TPatchDeploymentStatus;
  TPatchFilter = AWS.SSM.Model.PatchFilter.TPatchFilter;
  TPatchFilterGroup = AWS.SSM.Model.PatchFilterGroup.TPatchFilterGroup;
  TPatchFilterKey = AWS.SSM.Enums.TPatchFilterKey;
  TPatchGroupPatchBaselineMapping = AWS.SSM.Model.PatchGroupPatchBaselineMapping.TPatchGroupPatchBaselineMapping;
  TPatchOperationType = AWS.SSM.Enums.TPatchOperationType;
  TPatchOrchestratorFilter = AWS.SSM.Model.PatchOrchestratorFilter.TPatchOrchestratorFilter;
  TPatchProperty = AWS.SSM.Enums.TPatchProperty;
  TPatchRule = AWS.SSM.Model.PatchRule.TPatchRule;
  TPatchRuleGroup = AWS.SSM.Model.PatchRuleGroup.TPatchRuleGroup;
  TPatchSet = AWS.SSM.Enums.TPatchSet;
  TPatchSource = AWS.SSM.Model.PatchSource.TPatchSource;
  TPatchStatus = AWS.SSM.Model.PatchStatus.TPatchStatus;
  TPingStatus = AWS.SSM.Enums.TPingStatus;
  TPlatformType = AWS.SSM.Enums.TPlatformType;
  TProgressCounters = AWS.SSM.Model.ProgressCounters.TProgressCounters;
  TPutComplianceItemsRequest = AWS.SSM.Model.PutComplianceItemsRequest.TPutComplianceItemsRequest;
  TPutComplianceItemsResponse = AWS.SSM.Model.PutComplianceItemsResponse.TPutComplianceItemsResponse;
  TPutInventoryRequest = AWS.SSM.Model.PutInventoryRequest.TPutInventoryRequest;
  TPutInventoryResponse = AWS.SSM.Model.PutInventoryResponse.TPutInventoryResponse;
  TPutParameterRequest = AWS.SSM.Model.PutParameterRequest.TPutParameterRequest;
  TPutParameterResponse = AWS.SSM.Model.PutParameterResponse.TPutParameterResponse;
  TRebootOption = AWS.SSM.Enums.TRebootOption;
  TRegisterDefaultPatchBaselineRequest = AWS.SSM.Model.RegisterDefaultPatchBaselineRequest.TRegisterDefaultPatchBaselineRequest;
  TRegisterDefaultPatchBaselineResponse = AWS.SSM.Model.RegisterDefaultPatchBaselineResponse.TRegisterDefaultPatchBaselineResponse;
  TRegisterPatchBaselineForPatchGroupRequest = AWS.SSM.Model.RegisterPatchBaselineForPatchGroupRequest.TRegisterPatchBaselineForPatchGroupRequest;
  TRegisterPatchBaselineForPatchGroupResponse = AWS.SSM.Model.RegisterPatchBaselineForPatchGroupResponse.TRegisterPatchBaselineForPatchGroupResponse;
  TRegisterTargetWithMaintenanceWindowRequest = AWS.SSM.Model.RegisterTargetWithMaintenanceWindowRequest.TRegisterTargetWithMaintenanceWindowRequest;
  TRegisterTargetWithMaintenanceWindowResponse = AWS.SSM.Model.RegisterTargetWithMaintenanceWindowResponse.TRegisterTargetWithMaintenanceWindowResponse;
  TRegisterTaskWithMaintenanceWindowRequest = AWS.SSM.Model.RegisterTaskWithMaintenanceWindowRequest.TRegisterTaskWithMaintenanceWindowRequest;
  TRegisterTaskWithMaintenanceWindowResponse = AWS.SSM.Model.RegisterTaskWithMaintenanceWindowResponse.TRegisterTaskWithMaintenanceWindowResponse;
  TRegistrationMetadataItem = AWS.SSM.Model.RegistrationMetadataItem.TRegistrationMetadataItem;
  TRelatedOpsItem = AWS.SSM.Model.RelatedOpsItem.TRelatedOpsItem;
  TRemoveTagsFromResourceRequest = AWS.SSM.Model.RemoveTagsFromResourceRequest.TRemoveTagsFromResourceRequest;
  TRemoveTagsFromResourceResponse = AWS.SSM.Model.RemoveTagsFromResourceResponse.TRemoveTagsFromResourceResponse;
  TResetServiceSettingRequest = AWS.SSM.Model.ResetServiceSettingRequest.TResetServiceSettingRequest;
  TResetServiceSettingResponse = AWS.SSM.Model.ResetServiceSettingResponse.TResetServiceSettingResponse;
  TResolvedTargets = AWS.SSM.Model.ResolvedTargets.TResolvedTargets;
  TResourceComplianceSummaryItem = AWS.SSM.Model.ResourceComplianceSummaryItem.TResourceComplianceSummaryItem;
  TResourceDataSyncAwsOrganizationsSource = AWS.SSM.Model.ResourceDataSyncAwsOrganizationsSource.TResourceDataSyncAwsOrganizationsSource;
  TResourceDataSyncDestinationDataSharing = AWS.SSM.Model.ResourceDataSyncDestinationDataSharing.TResourceDataSyncDestinationDataSharing;
  TResourceDataSyncItem = AWS.SSM.Model.ResourceDataSyncItem.TResourceDataSyncItem;
  TResourceDataSyncOrganizationalUnit = AWS.SSM.Model.ResourceDataSyncOrganizationalUnit.TResourceDataSyncOrganizationalUnit;
  TResourceDataSyncS3Destination = AWS.SSM.Model.ResourceDataSyncS3Destination.TResourceDataSyncS3Destination;
  TResourceDataSyncS3Format = AWS.SSM.Enums.TResourceDataSyncS3Format;
  TResourceDataSyncSource = AWS.SSM.Model.ResourceDataSyncSource.TResourceDataSyncSource;
  TResourceDataSyncSourceWithState = AWS.SSM.Model.ResourceDataSyncSourceWithState.TResourceDataSyncSourceWithState;
  TResourceType = AWS.SSM.Enums.TResourceType;
  TResourceTypeForTagging = AWS.SSM.Enums.TResourceTypeForTagging;
  TResultAttribute = AWS.SSM.Model.ResultAttribute.TResultAttribute;
  TResumeSessionRequest = AWS.SSM.Model.ResumeSessionRequest.TResumeSessionRequest;
  TResumeSessionResponse = AWS.SSM.Model.ResumeSessionResponse.TResumeSessionResponse;
  TReviewInformation = AWS.SSM.Model.ReviewInformation.TReviewInformation;
  TReviewStatus = AWS.SSM.Enums.TReviewStatus;
  TRunbook = AWS.SSM.Model.Runbook.TRunbook;
  TS3OutputLocation = AWS.SSM.Model.S3OutputLocation.TS3OutputLocation;
  TS3OutputUrl = AWS.SSM.Model.S3OutputUrl.TS3OutputUrl;
  TScheduledWindowExecution = AWS.SSM.Model.ScheduledWindowExecution.TScheduledWindowExecution;
  TSendAutomationSignalRequest = AWS.SSM.Model.SendAutomationSignalRequest.TSendAutomationSignalRequest;
  TSendAutomationSignalResponse = AWS.SSM.Model.SendAutomationSignalResponse.TSendAutomationSignalResponse;
  TSendCommandRequest = AWS.SSM.Model.SendCommandRequest.TSendCommandRequest;
  TSendCommandResponse = AWS.SSM.Model.SendCommandResponse.TSendCommandResponse;
  TServiceSetting = AWS.SSM.Model.ServiceSetting.TServiceSetting;
  TSession = AWS.SSM.Model.Session.TSession;
  TSessionFilter = AWS.SSM.Model.SessionFilter.TSessionFilter;
  TSessionFilterKey = AWS.SSM.Enums.TSessionFilterKey;
  TSessionManagerOutputUrl = AWS.SSM.Model.SessionManagerOutputUrl.TSessionManagerOutputUrl;
  TSessionState = AWS.SSM.Enums.TSessionState;
  TSessionStatus = AWS.SSM.Enums.TSessionStatus;
  TSeveritySummary = AWS.SSM.Model.SeveritySummary.TSeveritySummary;
  TSignalType = AWS.SSM.Enums.TSignalType;
  TSourceType = AWS.SSM.Enums.TSourceType;
  TStartAssociationsOnceRequest = AWS.SSM.Model.StartAssociationsOnceRequest.TStartAssociationsOnceRequest;
  TStartAssociationsOnceResponse = AWS.SSM.Model.StartAssociationsOnceResponse.TStartAssociationsOnceResponse;
  TStartAutomationExecutionRequest = AWS.SSM.Model.StartAutomationExecutionRequest.TStartAutomationExecutionRequest;
  TStartAutomationExecutionResponse = AWS.SSM.Model.StartAutomationExecutionResponse.TStartAutomationExecutionResponse;
  TStartChangeRequestExecutionRequest = AWS.SSM.Model.StartChangeRequestExecutionRequest.TStartChangeRequestExecutionRequest;
  TStartChangeRequestExecutionResponse = AWS.SSM.Model.StartChangeRequestExecutionResponse.TStartChangeRequestExecutionResponse;
  TStartSessionRequest = AWS.SSM.Model.StartSessionRequest.TStartSessionRequest;
  TStartSessionResponse = AWS.SSM.Model.StartSessionResponse.TStartSessionResponse;
  TStepExecution = AWS.SSM.Model.StepExecution.TStepExecution;
  TStepExecutionFilter = AWS.SSM.Model.StepExecutionFilter.TStepExecutionFilter;
  TStepExecutionFilterKey = AWS.SSM.Enums.TStepExecutionFilterKey;
  TStopAutomationExecutionRequest = AWS.SSM.Model.StopAutomationExecutionRequest.TStopAutomationExecutionRequest;
  TStopAutomationExecutionResponse = AWS.SSM.Model.StopAutomationExecutionResponse.TStopAutomationExecutionResponse;
  TStopType = AWS.SSM.Enums.TStopType;
  TTag = AWS.SSM.Model.Tag.TTag;
  TTarget = AWS.SSM.Model.Target.TTarget;
  TTargetLocation = AWS.SSM.Model.TargetLocation.TTargetLocation;
  TTerminateSessionRequest = AWS.SSM.Model.TerminateSessionRequest.TTerminateSessionRequest;
  TTerminateSessionResponse = AWS.SSM.Model.TerminateSessionResponse.TTerminateSessionResponse;
  TUnlabelParameterVersionRequest = AWS.SSM.Model.UnlabelParameterVersionRequest.TUnlabelParameterVersionRequest;
  TUnlabelParameterVersionResponse = AWS.SSM.Model.UnlabelParameterVersionResponse.TUnlabelParameterVersionResponse;
  TUpdateAssociationRequest = AWS.SSM.Model.UpdateAssociationRequest.TUpdateAssociationRequest;
  TUpdateAssociationResponse = AWS.SSM.Model.UpdateAssociationResponse.TUpdateAssociationResponse;
  TUpdateAssociationStatusRequest = AWS.SSM.Model.UpdateAssociationStatusRequest.TUpdateAssociationStatusRequest;
  TUpdateAssociationStatusResponse = AWS.SSM.Model.UpdateAssociationStatusResponse.TUpdateAssociationStatusResponse;
  TUpdateDocumentDefaultVersionRequest = AWS.SSM.Model.UpdateDocumentDefaultVersionRequest.TUpdateDocumentDefaultVersionRequest;
  TUpdateDocumentDefaultVersionResponse = AWS.SSM.Model.UpdateDocumentDefaultVersionResponse.TUpdateDocumentDefaultVersionResponse;
  TUpdateDocumentMetadataRequest = AWS.SSM.Model.UpdateDocumentMetadataRequest.TUpdateDocumentMetadataRequest;
  TUpdateDocumentMetadataResponse = AWS.SSM.Model.UpdateDocumentMetadataResponse.TUpdateDocumentMetadataResponse;
  TUpdateDocumentRequest = AWS.SSM.Model.UpdateDocumentRequest.TUpdateDocumentRequest;
  TUpdateDocumentResponse = AWS.SSM.Model.UpdateDocumentResponse.TUpdateDocumentResponse;
  TUpdateMaintenanceWindowRequest = AWS.SSM.Model.UpdateMaintenanceWindowRequest.TUpdateMaintenanceWindowRequest;
  TUpdateMaintenanceWindowResponse = AWS.SSM.Model.UpdateMaintenanceWindowResponse.TUpdateMaintenanceWindowResponse;
  TUpdateMaintenanceWindowTargetRequest = AWS.SSM.Model.UpdateMaintenanceWindowTargetRequest.TUpdateMaintenanceWindowTargetRequest;
  TUpdateMaintenanceWindowTargetResponse = AWS.SSM.Model.UpdateMaintenanceWindowTargetResponse.TUpdateMaintenanceWindowTargetResponse;
  TUpdateMaintenanceWindowTaskRequest = AWS.SSM.Model.UpdateMaintenanceWindowTaskRequest.TUpdateMaintenanceWindowTaskRequest;
  TUpdateMaintenanceWindowTaskResponse = AWS.SSM.Model.UpdateMaintenanceWindowTaskResponse.TUpdateMaintenanceWindowTaskResponse;
  TUpdateManagedInstanceRoleRequest = AWS.SSM.Model.UpdateManagedInstanceRoleRequest.TUpdateManagedInstanceRoleRequest;
  TUpdateManagedInstanceRoleResponse = AWS.SSM.Model.UpdateManagedInstanceRoleResponse.TUpdateManagedInstanceRoleResponse;
  TUpdateOpsItemRequest = AWS.SSM.Model.UpdateOpsItemRequest.TUpdateOpsItemRequest;
  TUpdateOpsItemResponse = AWS.SSM.Model.UpdateOpsItemResponse.TUpdateOpsItemResponse;
  TUpdateOpsMetadataRequest = AWS.SSM.Model.UpdateOpsMetadataRequest.TUpdateOpsMetadataRequest;
  TUpdateOpsMetadataResponse = AWS.SSM.Model.UpdateOpsMetadataResponse.TUpdateOpsMetadataResponse;
  TUpdatePatchBaselineRequest = AWS.SSM.Model.UpdatePatchBaselineRequest.TUpdatePatchBaselineRequest;
  TUpdatePatchBaselineResponse = AWS.SSM.Model.UpdatePatchBaselineResponse.TUpdatePatchBaselineResponse;
  TUpdateResourceDataSyncRequest = AWS.SSM.Model.UpdateResourceDataSyncRequest.TUpdateResourceDataSyncRequest;
  TUpdateResourceDataSyncResponse = AWS.SSM.Model.UpdateResourceDataSyncResponse.TUpdateResourceDataSyncResponse;
  TUpdateServiceSettingRequest = AWS.SSM.Model.UpdateServiceSettingRequest.TUpdateServiceSettingRequest;
  TUpdateServiceSettingResponse = AWS.SSM.Model.UpdateServiceSettingResponse.TUpdateServiceSettingResponse;
  
implementation

end.
