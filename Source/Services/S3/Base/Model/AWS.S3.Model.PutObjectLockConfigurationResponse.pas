unit AWS.S3.Model.PutObjectLockConfigurationResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Enums;

type
  TPutObjectLockConfigurationResponse = class;
  
  IPutObjectLockConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function Obj: TPutObjectLockConfigurationResponse;
    function IsSetRequestCharged: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
  TPutObjectLockConfigurationResponse = class(TAmazonWebServiceResponse, IPutObjectLockConfigurationResponse)
  strict private
    FRequestCharged: Nullable<TRequestCharged>;
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
  strict protected
    function Obj: TPutObjectLockConfigurationResponse;
  public
    function IsSetRequestCharged: Boolean;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
  end;
  
implementation

{ TPutObjectLockConfigurationResponse }

function TPutObjectLockConfigurationResponse.Obj: TPutObjectLockConfigurationResponse;
begin
  Result := Self;
end;

function TPutObjectLockConfigurationResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TPutObjectLockConfigurationResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TPutObjectLockConfigurationResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

end.
