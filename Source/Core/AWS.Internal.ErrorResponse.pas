unit AWS.Internal.ErrorResponse;

interface

uses
  System.SysUtils,
  AWS.Runtime.Exceptions;

type
  TErrorResponse = class
  strict private
    FErrorType: TErrorType;
    FCode: string;
    FMessage: string;
    FRequestId: string;
    FInnerException: Exception;
    FStatusCode: Integer;
  public
    property ErrorType: TErrorType read FErrorType write FErrorType;
    property Code: string read FCode write FCode;
    property Message: string read FMessage write FMessage;
    property RequestId: string read FRequestId write FRequestId;
    property InnerException: Exception read FInnerException write FInnerException;
    property StatusCode: Integer read FStatusCode write FStatusCode;
  end;

implementation

end.
