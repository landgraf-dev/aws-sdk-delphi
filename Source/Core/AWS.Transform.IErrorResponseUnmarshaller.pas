unit AWS.Transform.IErrorResponseUnmarshaller;

interface

uses
  AWS.Transform.ResponseUnmarshaller,
  AWS.Internal.ErrorResponse;

type
  IErrorResponseUnmarshaller<TUnmarshaller, TUnmarshalleContext> = interface(IUnmarshaller<TUnmarshaller, TUnmarshalleContext>)
    function Unmarshall(AInput: TUnmarshalleContext; AErrorResponse: TErrorResponse): TUnmarshaller;
  end;

implementation

end.
