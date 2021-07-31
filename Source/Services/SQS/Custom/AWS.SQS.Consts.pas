unit AWS.SQS.Consts;

interface

type
  TSQSConsts = class
  public const
    /// <summary>
    /// Used in <c>GetQueueAttributes</c> to return all values.
    /// </summary>
    ATTRIBUTE_ALL = 'All';

    /// <summary>
    /// The length of time (in seconds) that a message received from a queue will be invisible to other receiving components when they ask to receive messages.
    /// </summary>
    ATTRIBUTE_VISIBILITY_TIMEOUT = 'VisibilityTimeout';

    /// <summary>
    /// The approximate number of visible messages in a queue
    /// </summary>
    ATTRIBUTE_APPROXIMATE_NUMBER_OF_MESSAGES = 'ApproximateNumberOfMessages';

    /// <summary>
    /// The approximate number of messages that are not timed-out and not deleted.
    /// </summary>
    ATTRIBUTE_APPROXIMATE_NUMBER_OF_MESSAGES_NOT_VISIBLE = 'ApproximateNumberOfMessagesNotVisible';

    /// <summary>
    /// The approximate number of messages that are delayed from delivery.
    /// </summary>
    ATTRIBUTE_APPROXIMATE_NUMBER_OF_MESSAGES_DELAYED = 'ApproximateNumberOfMessagesDelayed';

    /// <summary>
    /// The time when the queue was created (epoch time in seconds).
    /// </summary>
    ATTRIBUTE_CREATED_TIMESTAMP = 'CreatedTimestamp';

    /// <summary>
    /// The time when the queue was last changed (epoch time in seconds).
    /// </summary>
    ATTRIBUTE_LAST_MODIFIED_TIMESTAMP = 'LastModifiedTimestamp';

    /// <summary>
    /// The queue's Amazon resource name (ARN).
    /// </summary>
    ATTRIBUTE_QUEUE_ARN = 'QueueArn';

    /// <summary>
    /// The limit of how many bytes a message can contain before Amazon SQS rejects it.
    /// </summary>
    ATTRIBUTE_MAXIMUM_MESSAGE_SIZE = 'MaximumMessageSize';

    /// <summary>
    /// The number of seconds Amazon SQS retains a message.
    /// </summary>
    ATTRIBUTE_MESSAGE_RETENTION_PERIOD = 'MessageRetentionPeriod';

    /// <summary>
    /// The queue's policy.
    /// </summary>
    ATTRIBUTE_POLICY = 'Policy';

    /// <summary>
    /// The number of seconds to delay a message from being available to be processed.
    /// </summary>
    ATTRIBUTE_DELAY_SECONDS = 'DelaySeconds';

    /// <summary>
    /// The number of milliseconds the oldest message has been on the queue.
    /// </summary>
    ATTRIBUTE_OLDEST_MESSAGE_AGE = 'OldestMessageAge';

    /// <summary>
    /// The time for which a ReceiveMessage call will wait for a message to arrive. An integer from 0 to 20 (seconds). The default for this attribute is 0.
    /// </summary>
    ATTRIBUTE_RECEIEVE_MESSAGE_WAIT_TIME_SECONDS = 'ReceiveMessageWaitTimeSeconds';

    /// <summary>
    /// The parameters for dead letter queue functionality of the source queue. For more information about RedrivePolicy and dead letter queues, see <a href='http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html'>Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>.
    /// </summary>
    ATTRIBUTE_REDRIVE_POLICY = 'RedrivePolicy';

    /// <summary>
    /// Enables content-based deduplication on a First-In-First-Out (FIFO) queue. For more information see <a href='http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing'>Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>.
    /// </summary>
    ATTRIBUTE_CONTENT_BASED_DEDUPLICATION = 'ContentBasedDeduplication';

    /// <summary>
    /// Designates a queue as a First-In-First-Out (FIFO) queue. You can provide this attribute only during queue creation. You can't change it for an existing queue. When you set this attribute, you must also provide the <code>MessageGroupId</code> for your messages explicitly.
    /// </summary>
    ATTRIBUTE_FIFO_QUEUE = 'FifoQueue';
  end;

implementation

end.
