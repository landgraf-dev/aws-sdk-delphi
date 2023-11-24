unit AWS.S3.Model.PutObjectLegalHoldResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Enums;

type
  TPutObjectLegalHoldResponse = class;
  
  IPutObjectLegalHoldResponse = interface(IAmazonWebServiceResponse)
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function Obj: TPutObjectLegalHoldResponse;
    function IsSetRequestCharged: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
  TPutObjectLegalHoldResponse = class(TAmazonWebServiceResponse, IPutObjectLegalHoldResponse)
  strict private
    FRequestCharged: Nullable<TRequestCharged>;
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
  strict protected
    function Obj: TPutObjectLegalHoldResponse;
  public
    function IsSetRequestCharged: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
implementation

{ TPutObjectLegalHoldResponse }

function TPutObjectLegalHoldResponse.Obj: TPutObjectLegalHoldResponse;
begin
  Result := Self;
end;

function TPutObjectLegalHoldResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TPutObjectLegalHoldResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TPutObjectLegalHoldResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

end.
