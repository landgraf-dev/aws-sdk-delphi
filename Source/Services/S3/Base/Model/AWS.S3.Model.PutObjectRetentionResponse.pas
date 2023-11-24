unit AWS.S3.Model.PutObjectRetentionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Enums;

type
  TPutObjectRetentionResponse = class;
  
  IPutObjectRetentionResponse = interface(IAmazonWebServiceResponse)
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function Obj: TPutObjectRetentionResponse;
    function IsSetRequestCharged: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
  TPutObjectRetentionResponse = class(TAmazonWebServiceResponse, IPutObjectRetentionResponse)
  strict private
    FRequestCharged: Nullable<TRequestCharged>;
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
  strict protected
    function Obj: TPutObjectRetentionResponse;
  public
    function IsSetRequestCharged: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
implementation

{ TPutObjectRetentionResponse }

function TPutObjectRetentionResponse.Obj: TPutObjectRetentionResponse;
begin
  Result := Self;
end;

function TPutObjectRetentionResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TPutObjectRetentionResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TPutObjectRetentionResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

end.
