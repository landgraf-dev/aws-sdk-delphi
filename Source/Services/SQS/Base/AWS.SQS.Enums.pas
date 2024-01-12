unit AWS.SQS.Enums;

{$SCOPEDENUMS ON}

interface

type
  TMessageSystemAttributeName = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AWSTraceHeader: TMessageSystemAttributeName; static;
    class function ApproximateFirstReceiveTimestamp: TMessageSystemAttributeName; static;
    class function ApproximateReceiveCount: TMessageSystemAttributeName; static;
    class function MessageDeduplicationId: TMessageSystemAttributeName; static;
    class function MessageGroupId: TMessageSystemAttributeName; static;
    class function SenderId: TMessageSystemAttributeName; static;
    class function SentTimestamp: TMessageSystemAttributeName; static;
    class function SequenceNumber: TMessageSystemAttributeName; static;
    class operator Equal(a: TMessageSystemAttributeName; b: TMessageSystemAttributeName): Boolean;
    class operator NotEqual(a: TMessageSystemAttributeName; b: TMessageSystemAttributeName): Boolean;
    class operator Implicit(a: string): TMessageSystemAttributeName;
    property Value: string read FValue;
  end;
  
  TMessageSystemAttributeNameForSends = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AWSTraceHeader: TMessageSystemAttributeNameForSends; static;
    class operator Equal(a: TMessageSystemAttributeNameForSends; b: TMessageSystemAttributeNameForSends): Boolean;
    class operator NotEqual(a: TMessageSystemAttributeNameForSends; b: TMessageSystemAttributeNameForSends): Boolean;
    class operator Implicit(a: string): TMessageSystemAttributeNameForSends;
    property Value: string read FValue;
  end;
  
  TQueueAttributeName = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function All: TQueueAttributeName; static;
    class function ApproximateNumberOfMessages: TQueueAttributeName; static;
    class function ApproximateNumberOfMessagesDelayed: TQueueAttributeName; static;
    class function ApproximateNumberOfMessagesNotVisible: TQueueAttributeName; static;
    class function ContentBasedDeduplication: TQueueAttributeName; static;
    class function CreatedTimestamp: TQueueAttributeName; static;
    class function DeduplicationScope: TQueueAttributeName; static;
    class function DelaySeconds: TQueueAttributeName; static;
    class function FifoQueue: TQueueAttributeName; static;
    class function FifoThroughputLimit: TQueueAttributeName; static;
    class function KmsDataKeyReusePeriodSeconds: TQueueAttributeName; static;
    class function KmsMasterKeyId: TQueueAttributeName; static;
    class function LastModifiedTimestamp: TQueueAttributeName; static;
    class function MaximumMessageSize: TQueueAttributeName; static;
    class function MessageRetentionPeriod: TQueueAttributeName; static;
    class function Policy: TQueueAttributeName; static;
    class function QueueArn: TQueueAttributeName; static;
    class function ReceiveMessageWaitTimeSeconds: TQueueAttributeName; static;
    class function RedriveAllowPolicy: TQueueAttributeName; static;
    class function RedrivePolicy: TQueueAttributeName; static;
    class function SqsManagedSseEnabled: TQueueAttributeName; static;
    class function VisibilityTimeout: TQueueAttributeName; static;
    class operator Equal(a: TQueueAttributeName; b: TQueueAttributeName): Boolean;
    class operator NotEqual(a: TQueueAttributeName; b: TQueueAttributeName): Boolean;
    class operator Implicit(a: string): TQueueAttributeName;
    property Value: string read FValue;
  end;
  
implementation

{ TMessageSystemAttributeName }

constructor TMessageSystemAttributeName.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMessageSystemAttributeName.AWSTraceHeader: TMessageSystemAttributeName;
begin
  Result := TMessageSystemAttributeName.Create('AWSTraceHeader');
end;

class function TMessageSystemAttributeName.ApproximateFirstReceiveTimestamp: TMessageSystemAttributeName;
begin
  Result := TMessageSystemAttributeName.Create('ApproximateFirstReceiveTimestamp');
end;

class function TMessageSystemAttributeName.ApproximateReceiveCount: TMessageSystemAttributeName;
begin
  Result := TMessageSystemAttributeName.Create('ApproximateReceiveCount');
end;

class function TMessageSystemAttributeName.MessageDeduplicationId: TMessageSystemAttributeName;
begin
  Result := TMessageSystemAttributeName.Create('MessageDeduplicationId');
end;

class function TMessageSystemAttributeName.MessageGroupId: TMessageSystemAttributeName;
begin
  Result := TMessageSystemAttributeName.Create('MessageGroupId');
end;

class function TMessageSystemAttributeName.SenderId: TMessageSystemAttributeName;
begin
  Result := TMessageSystemAttributeName.Create('SenderId');
end;

class function TMessageSystemAttributeName.SentTimestamp: TMessageSystemAttributeName;
begin
  Result := TMessageSystemAttributeName.Create('SentTimestamp');
end;

class function TMessageSystemAttributeName.SequenceNumber: TMessageSystemAttributeName;
begin
  Result := TMessageSystemAttributeName.Create('SequenceNumber');
end;

class operator TMessageSystemAttributeName.Equal(a: TMessageSystemAttributeName; b: TMessageSystemAttributeName): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMessageSystemAttributeName.NotEqual(a: TMessageSystemAttributeName; b: TMessageSystemAttributeName): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMessageSystemAttributeName.Implicit(a: string): TMessageSystemAttributeName;
begin
  Result.FValue := a;;
end;

{ TMessageSystemAttributeNameForSends }

constructor TMessageSystemAttributeNameForSends.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMessageSystemAttributeNameForSends.AWSTraceHeader: TMessageSystemAttributeNameForSends;
begin
  Result := TMessageSystemAttributeNameForSends.Create('AWSTraceHeader');
end;

class operator TMessageSystemAttributeNameForSends.Equal(a: TMessageSystemAttributeNameForSends; b: TMessageSystemAttributeNameForSends): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMessageSystemAttributeNameForSends.NotEqual(a: TMessageSystemAttributeNameForSends; b: TMessageSystemAttributeNameForSends): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMessageSystemAttributeNameForSends.Implicit(a: string): TMessageSystemAttributeNameForSends;
begin
  Result.FValue := a;;
end;

{ TQueueAttributeName }

constructor TQueueAttributeName.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TQueueAttributeName.All: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('All');
end;

class function TQueueAttributeName.ApproximateNumberOfMessages: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('ApproximateNumberOfMessages');
end;

class function TQueueAttributeName.ApproximateNumberOfMessagesDelayed: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('ApproximateNumberOfMessagesDelayed');
end;

class function TQueueAttributeName.ApproximateNumberOfMessagesNotVisible: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('ApproximateNumberOfMessagesNotVisible');
end;

class function TQueueAttributeName.ContentBasedDeduplication: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('ContentBasedDeduplication');
end;

class function TQueueAttributeName.CreatedTimestamp: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('CreatedTimestamp');
end;

class function TQueueAttributeName.DeduplicationScope: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('DeduplicationScope');
end;

class function TQueueAttributeName.DelaySeconds: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('DelaySeconds');
end;

class function TQueueAttributeName.FifoQueue: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('FifoQueue');
end;

class function TQueueAttributeName.FifoThroughputLimit: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('FifoThroughputLimit');
end;

class function TQueueAttributeName.KmsDataKeyReusePeriodSeconds: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('KmsDataKeyReusePeriodSeconds');
end;

class function TQueueAttributeName.KmsMasterKeyId: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('KmsMasterKeyId');
end;

class function TQueueAttributeName.LastModifiedTimestamp: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('LastModifiedTimestamp');
end;

class function TQueueAttributeName.MaximumMessageSize: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('MaximumMessageSize');
end;

class function TQueueAttributeName.MessageRetentionPeriod: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('MessageRetentionPeriod');
end;

class function TQueueAttributeName.Policy: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('Policy');
end;

class function TQueueAttributeName.QueueArn: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('QueueArn');
end;

class function TQueueAttributeName.ReceiveMessageWaitTimeSeconds: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('ReceiveMessageWaitTimeSeconds');
end;

class function TQueueAttributeName.RedriveAllowPolicy: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('RedriveAllowPolicy');
end;

class function TQueueAttributeName.RedrivePolicy: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('RedrivePolicy');
end;

class function TQueueAttributeName.SqsManagedSseEnabled: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('SqsManagedSseEnabled');
end;

class function TQueueAttributeName.VisibilityTimeout: TQueueAttributeName;
begin
  Result := TQueueAttributeName.Create('VisibilityTimeout');
end;

class operator TQueueAttributeName.Equal(a: TQueueAttributeName; b: TQueueAttributeName): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TQueueAttributeName.NotEqual(a: TQueueAttributeName; b: TQueueAttributeName): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TQueueAttributeName.Implicit(a: string): TQueueAttributeName;
begin
  Result.FValue := a;;
end;

end.
