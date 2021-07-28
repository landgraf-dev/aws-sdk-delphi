unit AWS.Runtime.ExceptionHandler;

interface

uses
  System.SysUtils,
  Bcl.Logging,
  AWS.Runtime.Contexts;

type
  /// <summary>
  /// The interface for an exception handler.
  /// </summary>
  IExceptionHandler = interface
    /// <summary>
    /// Handles an exception for the given execution context.
    /// </summary>
    /// <param name="AExecutionContext">The execution context, it contains the
    /// request and response context.</param>
    /// <param name="AException">The exception to handle.</param>
    /// <returns>
    /// Returns a boolean value which indicates if the original exception
    /// should be rethrown.
    /// This method can also throw a new exception to replace the original exception.
    /// </returns>
    function Handle(AExecutionContext: TExecutionContext; AException: Exception): Boolean;
  end;

  /// <summary>
  /// The interface for an exception handler with a generic parameter for the exception type.
  /// </summary>
  /// <typeparam name="T">The exception type.</typeparam>
  IExceptionHandler<T: Exception> = interface(IExceptionHandler)
    /// <summary>
    /// Handles an exception for the given execution context.
    /// </summary>
    /// <param name="executionContext">The execution context, it contains the
    /// request and response context.</param>
    /// <param name="exception">The exception to handle.</param>
    /// <returns>
    /// Returns a boolean value which indicates if the original exception
    /// should be rethrown.
    /// This method can also throw a new exception to replace the original exception.
    /// </returns>
    function HandleException(AExecutionContext: TExecutionContext; AException: T): Boolean;
  end;

  TExceptionHandler<T: Exception> = class(TInterfacedObject, IExceptionHandler<T>, IExceptionHandler)
  strict private
    FLogger: ILogger;
  strict protected
    property Logger: ILogger read FLogger;
  public
    constructor Create(ALogger: ILogger);
    function Handle(AExecutionContext: TExecutionContext; AException: Exception): Boolean;
    function HandleException(AExecutionContext: TExecutionContext; AException: T): Boolean; virtual; abstract;
  end;

implementation

{ TExceptionHandler<T> }

constructor TExceptionHandler<T>.Create(ALogger: ILogger);
begin
  inherited Create;
  FLogger := ALogger;
end;

function TExceptionHandler<T>.Handle(AExecutionContext: TExecutionContext; AException: Exception): Boolean;
begin
  Result := HandleException(AExecutionContext, T(AException));
end;

end.
