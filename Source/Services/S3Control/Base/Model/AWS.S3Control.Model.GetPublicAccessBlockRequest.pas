unit AWS.S3Control.Model.GetPublicAccessBlockRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TGetPublicAccessBlockRequest = class;
  
  IGetPublicAccessBlockRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function Obj: TGetPublicAccessBlockRequest;
    function IsSetAccountId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
  end;
  
  TGetPublicAccessBlockRequest = class(TAmazonS3ControlRequest, IGetPublicAccessBlockRequest)
  strict private
    FAccountId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
  strict protected
    function Obj: TGetPublicAccessBlockRequest;
  public
    function IsSetAccountId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
  end;
  
implementation

{ TGetPublicAccessBlockRequest }

function TGetPublicAccessBlockRequest.Obj: TGetPublicAccessBlockRequest;
begin
  Result := Self;
end;

function TGetPublicAccessBlockRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetPublicAccessBlockRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetPublicAccessBlockRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

end.
