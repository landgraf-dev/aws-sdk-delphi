unit AWS.S3.Model.CopyPartResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.S3.Model.CopyPartResult, 
  AWS.S3.Enums;

type
  TCopyPartResponse = class;
  
  ICopyPartResponse = interface(IAmazonWebServiceResponse)
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetCopyPartResult: TCopyPartResult;
    procedure SetCopyPartResult(const Value: TCopyPartResult);
    function GetKeepCopyPartResult: Boolean;
    procedure SetKeepCopyPartResult(const Value: Boolean);
    function GetCopySourceVersionId: string;
    procedure SetCopySourceVersionId(const Value: string);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function Obj: TCopyPartResponse;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCopyPartResult: Boolean;
    function IsSetCopySourceVersionId: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CopyPartResult: TCopyPartResult read GetCopyPartResult write SetCopyPartResult;
    property KeepCopyPartResult: Boolean read GetKeepCopyPartResult write SetKeepCopyPartResult;
    property CopySourceVersionId: string read GetCopySourceVersionId write SetCopySourceVersionId;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
  end;
  
  TCopyPartResponse = class(TAmazonWebServiceResponse, ICopyPartResponse)
  strict private
    FBucketKeyEnabled: Nullable<Boolean>;
    FCopyPartResult: TCopyPartResult;
    FKeepCopyPartResult: Boolean;
    FCopySourceVersionId: Nullable<string>;
    FRequestCharged: Nullable<TRequestCharged>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FSSEKMSKeyId: Nullable<string>;
    FServerSideEncryption: Nullable<TServerSideEncryption>;
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetCopyPartResult: TCopyPartResult;
    procedure SetCopyPartResult(const Value: TCopyPartResult);
    function GetKeepCopyPartResult: Boolean;
    procedure SetKeepCopyPartResult(const Value: Boolean);
    function GetCopySourceVersionId: string;
    procedure SetCopySourceVersionId(const Value: string);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
  strict protected
    function Obj: TCopyPartResponse;
  public
    destructor Destroy; override;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCopyPartResult: Boolean;
    function IsSetCopySourceVersionId: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CopyPartResult: TCopyPartResult read GetCopyPartResult write SetCopyPartResult;
    property KeepCopyPartResult: Boolean read GetKeepCopyPartResult write SetKeepCopyPartResult;
    property CopySourceVersionId: string read GetCopySourceVersionId write SetCopySourceVersionId;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
  end;
  
implementation

{ TCopyPartResponse }

destructor TCopyPartResponse.Destroy;
begin
  CopyPartResult := nil;
  inherited;
end;

function TCopyPartResponse.Obj: TCopyPartResponse;
begin
  Result := Self;
end;

function TCopyPartResponse.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TCopyPartResponse.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TCopyPartResponse.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TCopyPartResponse.GetCopyPartResult: TCopyPartResult;
begin
  Result := FCopyPartResult;
end;

procedure TCopyPartResponse.SetCopyPartResult(const Value: TCopyPartResult);
begin
  if FCopyPartResult <> Value then
  begin
    if not KeepCopyPartResult then
      FCopyPartResult.Free;
    FCopyPartResult := Value;
  end;
end;

function TCopyPartResponse.GetKeepCopyPartResult: Boolean;
begin
  Result := FKeepCopyPartResult;
end;

procedure TCopyPartResponse.SetKeepCopyPartResult(const Value: Boolean);
begin
  FKeepCopyPartResult := Value;
end;

function TCopyPartResponse.IsSetCopyPartResult: Boolean;
begin
  Result := FCopyPartResult <> nil;
end;

function TCopyPartResponse.GetCopySourceVersionId: string;
begin
  Result := FCopySourceVersionId.ValueOrDefault;
end;

procedure TCopyPartResponse.SetCopySourceVersionId(const Value: string);
begin
  FCopySourceVersionId := Value;
end;

function TCopyPartResponse.IsSetCopySourceVersionId: Boolean;
begin
  Result := FCopySourceVersionId.HasValue;
end;

function TCopyPartResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TCopyPartResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TCopyPartResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TCopyPartResponse.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TCopyPartResponse.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TCopyPartResponse.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TCopyPartResponse.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TCopyPartResponse.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TCopyPartResponse.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TCopyPartResponse.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TCopyPartResponse.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TCopyPartResponse.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TCopyPartResponse.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TCopyPartResponse.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TCopyPartResponse.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

end.
