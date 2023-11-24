unit AWS.S3.Model.AbortMultipartUploadResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Enums;

type
  TAbortMultipartUploadResponse = class;
  
  IAbortMultipartUploadResponse = interface(IAmazonWebServiceResponse)
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function Obj: TAbortMultipartUploadResponse;
    function IsSetRequestCharged: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
  TAbortMultipartUploadResponse = class(TAmazonWebServiceResponse, IAbortMultipartUploadResponse)
  strict private
    FRequestCharged: Nullable<TRequestCharged>;
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
  strict protected
    function Obj: TAbortMultipartUploadResponse;
  public
    function IsSetRequestCharged: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
implementation

{ TAbortMultipartUploadResponse }

function TAbortMultipartUploadResponse.Obj: TAbortMultipartUploadResponse;
begin
  Result := Self;
end;

function TAbortMultipartUploadResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TAbortMultipartUploadResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TAbortMultipartUploadResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

end.
