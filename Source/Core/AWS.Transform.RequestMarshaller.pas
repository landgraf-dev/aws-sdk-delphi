unit AWS.Transform.RequestMarshaller;

interface

type
  IMarshaller<T, R> = interface
    function Marshall(AInput: R): T;
  end;

implementation

end.
