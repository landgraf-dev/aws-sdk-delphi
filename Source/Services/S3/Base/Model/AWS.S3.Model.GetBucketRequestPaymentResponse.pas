unit AWS.S3.Model.GetBucketRequestPaymentResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Enums;

type
  TGetBucketRequestPaymentResponse = class;
  
  IGetBucketRequestPaymentResponse = interface(IAmazonWebServiceResponse)
    function GetPayer: TPayer;
    procedure SetPayer(const Value: TPayer);
    function Obj: TGetBucketRequestPaymentResponse;
    function IsSetPayer: Boolean;
    property Payer: TPayer read GetPayer write SetPayer;
  end;
  
  TGetBucketRequestPaymentResponse = class(TAmazonWebServiceResponse, IGetBucketRequestPaymentResponse)
  strict private
    FPayer: Nullable<TPayer>;
    function GetPayer: TPayer;
    procedure SetPayer(const Value: TPayer);
  strict protected
    function Obj: TGetBucketRequestPaymentResponse;
  public
    function IsSetPayer: Boolean;
    property Payer: TPayer read GetPayer write SetPayer;
  end;
  
implementation

{ TGetBucketRequestPaymentResponse }

function TGetBucketRequestPaymentResponse.Obj: TGetBucketRequestPaymentResponse;
begin
  Result := Self;
end;

function TGetBucketRequestPaymentResponse.GetPayer: TPayer;
begin
  Result := FPayer.ValueOrDefault;
end;

procedure TGetBucketRequestPaymentResponse.SetPayer(const Value: TPayer);
begin
  FPayer := Value;
end;

function TGetBucketRequestPaymentResponse.IsSetPayer: Boolean;
begin
  Result := FPayer.HasValue;
end;

end.
