unit AWS.Internal.InvokeOptions;

interface

uses
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Runtime.Model;

type
  TInvokeOptionsBase = class abstract
  strict private
    FRequestMarshaller: IMarshaller<IRequest, TAmazonWebServiceRequest>;
    FResponseUnmarshaller: IResponseUnmarshaller;
  public
    destructor Destroy; override;
    property RequestMarshaller: IMarshaller<IRequest, TAmazonWebServiceRequest>
      read FRequestMarshaller write FRequestMarshaller;
    property ResponseUnmarshaller: IResponseUnmarshaller read FResponseUnmarshaller write FResponseUnmarshaller;
  end;

  TInvokeOptions = class(TInvokeOptionsBase)
  end;

implementation

{ TInvokeOptionsBase }

destructor TInvokeOptionsBase.Destroy;
begin
//  FResponseUnmarshaller.Free;
  inherited;
end;

end.
