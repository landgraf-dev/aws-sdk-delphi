unit AWS.S3Control.Model.DeletePublicAccessBlockRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeletePublicAccessBlockRequest = class;
  
  IDeletePublicAccessBlockRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function Obj: TDeletePublicAccessBlockRequest;
    function IsSetAccountId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
  end;
  
  TDeletePublicAccessBlockRequest = class(TAmazonS3ControlRequest, IDeletePublicAccessBlockRequest)
  strict private
    FAccountId: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
  strict protected
    function Obj: TDeletePublicAccessBlockRequest;
  public
    function IsSetAccountId: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
  end;
  
implementation

{ TDeletePublicAccessBlockRequest }

function TDeletePublicAccessBlockRequest.Obj: TDeletePublicAccessBlockRequest;
begin
  Result := Self;
end;

function TDeletePublicAccessBlockRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeletePublicAccessBlockRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeletePublicAccessBlockRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

end.
