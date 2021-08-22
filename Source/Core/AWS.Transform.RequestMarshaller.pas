unit AWS.Transform.RequestMarshaller;

interface

uses
  Bcl.Json.Writer,
  AWS.Internal.Request;

type
  IMarshaller<T, R> = interface
    function Marshall(AInput: R): T;
  end;

  TMarshallerContext = class abstract
  strict private
    FRequest: IRequest;
  public
    constructor Create(ARequest: IRequest);
    property Request: IRequest read FRequest;
  end;

  IRequestMarshaller<R; T: TMarshallerContext> = interface
    procedure Marshall(ARequestObject: R; AContext: T);
  end;

  TJsonMarshallerContext = class(TMarshallerContext)
  private
    FWriter: TJsonWriter;
  public
    constructor Create(ARequest: IRequest; AWriter: TJsonWriter);
    property Writer: TJsonWriter read FWriter;
  end;

implementation

{ TMarshallerContext }

constructor TMarshallerContext.Create(ARequest: IRequest);
begin
  inherited Create;
  FRequest := ARequest;
end;

{ TJsonMarshallerContext }

constructor TJsonMarshallerContext.Create(ARequest: IRequest; AWriter: TJsonWriter);
begin
  inherited Create(ARequest);
  FWriter := AWriter;
end;

end.
