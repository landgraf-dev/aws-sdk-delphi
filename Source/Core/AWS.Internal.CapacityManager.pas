unit AWS.Internal.CapacityManager;

{$I AWS.inc}

interface

type
  /// <summary>
  /// CapacityType determines the type of capacity to obtain or use.
  /// </summary>
  TCapacityType = (
    /// <summary>
    /// The increment capacity type adds capacity.
    /// </summary>
    Increment,
    /// <summary>
    /// The default retry capacity type uses the default capacity amount.
    /// </summary>
    Retry,
    /// <summary>
    /// The timeout capacity type uses the timeout capacity amount.
    /// </summary>
    Timeout
  );


  TRetryCapacity = class
  strict private
    FMaxCapacity: Integer;
  private
    FAvailableCapacity: Integer;
  public
    constructor Create(AMaxCapacity: Integer);
    property MaxCapacity: Integer read FMaxCapacity;
    property AvailableCapacity: Integer read FAvailableCapacity write FAvailableCapacity;
  end;

implementation

{ TRetryCapacity }

constructor TRetryCapacity.Create(AMaxCapacity: Integer);
begin
  FMaxCapacity := AMaxCapacity;
  FAvailableCapacity := AMaxCapacity;
end;

end.
