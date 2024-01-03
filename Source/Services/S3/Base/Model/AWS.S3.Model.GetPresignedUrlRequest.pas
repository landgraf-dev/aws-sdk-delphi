unit AWS.S3.Model.GetPresignedUrlRequest;

interface

uses
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TGetPreSignedUrlRequest = class;
  
  IGetPreSignedUrlRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetExpires: TDateTime;
    procedure SetExpires(const Value: TDateTime);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function GetProtocol: TProtocol;
    procedure SetProtocol(const Value: TProtocol);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetResponseHeaderOverrides: TRequestPayer;
    procedure SetResponseHeaderOverrides(const Value: TRequestPayer);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetServerSideEncryptionCustomerMethod: TServerSideEncryption;
    procedure SetServerSideEncryptionCustomerMethod(const Value: TServerSideEncryption);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function GetVerb: TProtocol;
    procedure SetVerb(const Value: TProtocol);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TGetPreSignedUrlRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentType: Boolean;
    function IsSetExpires: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetResponseHeaderOverrides: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetServerSideEncryptionCustomerMethod: Boolean;
    function IsSetUploadId: Boolean;
    function IsSetVerb: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentType: string read GetContentType write SetContentType;
    property Expires: TDateTime read GetExpires write SetExpires;
    property Key: string read GetKey write SetKey;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property Protocol: TProtocol read GetProtocol write SetProtocol;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property ResponseHeaderOverrides: TRequestPayer read GetResponseHeaderOverrides write SetResponseHeaderOverrides;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property ServerSideEncryptionCustomerMethod: TServerSideEncryption read GetServerSideEncryptionCustomerMethod write SetServerSideEncryptionCustomerMethod;
    property UploadId: string read GetUploadId write SetUploadId;
    property Verb: TProtocol read GetVerb write SetVerb;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TGetPreSignedUrlRequest = class
  strict private
    FBucketName: Nullable<string>;
    FContentType: Nullable<string>;
    FExpires: Nullable<TDateTime>;
    FKey: Nullable<string>;
    FPartNumber: Nullable<Integer>;
    FProtocol: Nullable<TProtocol>;
    FRequestPayer: Nullable<TRequestPayer>;
    FResponseHeaderOverrides: Nullable<TRequestPayer>;
    FServerSideEncryption: Nullable<TServerSideEncryption>;
    FServerSideEncryptionCustomerMethod: Nullable<TServerSideEncryption>;
    FUploadId: Nullable<string>;
    FVerb: Nullable<TProtocol>;
    FVersionId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetExpires: TDateTime;
    procedure SetExpires(const Value: TDateTime);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function GetProtocol: TProtocol;
    procedure SetProtocol(const Value: TProtocol);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetResponseHeaderOverrides: TRequestPayer;
    procedure SetResponseHeaderOverrides(const Value: TRequestPayer);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetServerSideEncryptionCustomerMethod: TServerSideEncryption;
    procedure SetServerSideEncryptionCustomerMethod(const Value: TServerSideEncryption);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function GetVerb: TProtocol;
    procedure SetVerb(const Value: TProtocol);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TGetPreSignedUrlRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetContentType: Boolean;
    function IsSetExpires: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetResponseHeaderOverrides: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetServerSideEncryptionCustomerMethod: Boolean;
    function IsSetUploadId: Boolean;
    function IsSetVerb: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentType: string read GetContentType write SetContentType;
    property Expires: TDateTime read GetExpires write SetExpires;
    property Key: string read GetKey write SetKey;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property Protocol: TProtocol read GetProtocol write SetProtocol;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property ResponseHeaderOverrides: TRequestPayer read GetResponseHeaderOverrides write SetResponseHeaderOverrides;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property ServerSideEncryptionCustomerMethod: TServerSideEncryption read GetServerSideEncryptionCustomerMethod write SetServerSideEncryptionCustomerMethod;
    property UploadId: string read GetUploadId write SetUploadId;
    property Verb: TProtocol read GetVerb write SetVerb;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TGetPreSignedUrlRequest }

function TGetPreSignedUrlRequest.Obj: TGetPreSignedUrlRequest;
begin
  Result := Self;
end;

function TGetPreSignedUrlRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetPreSignedUrlRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetPreSignedUrlRequest.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TGetPreSignedUrlRequest.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TGetPreSignedUrlRequest.GetExpires: TDateTime;
begin
  Result := FExpires.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetExpires(const Value: TDateTime);
begin
  FExpires := Value;
end;

function TGetPreSignedUrlRequest.IsSetExpires: Boolean;
begin
  Result := FExpires.HasValue;
end;

function TGetPreSignedUrlRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TGetPreSignedUrlRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TGetPreSignedUrlRequest.GetPartNumber: Integer;
begin
  Result := FPartNumber.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetPartNumber(const Value: Integer);
begin
  FPartNumber := Value;
end;

function TGetPreSignedUrlRequest.IsSetPartNumber: Boolean;
begin
  Result := FPartNumber.HasValue;
end;

function TGetPreSignedUrlRequest.GetProtocol: TProtocol;
begin
  Result := FProtocol.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetProtocol(const Value: TProtocol);
begin
  FProtocol := Value;
end;

function TGetPreSignedUrlRequest.IsSetProtocol: Boolean;
begin
  Result := FProtocol.HasValue;
end;

function TGetPreSignedUrlRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TGetPreSignedUrlRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TGetPreSignedUrlRequest.GetResponseHeaderOverrides: TRequestPayer;
begin
  Result := FResponseHeaderOverrides.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetResponseHeaderOverrides(const Value: TRequestPayer);
begin
  FResponseHeaderOverrides := Value;
end;

function TGetPreSignedUrlRequest.IsSetResponseHeaderOverrides: Boolean;
begin
  Result := FResponseHeaderOverrides.HasValue;
end;

function TGetPreSignedUrlRequest.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TGetPreSignedUrlRequest.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TGetPreSignedUrlRequest.GetServerSideEncryptionCustomerMethod: TServerSideEncryption;
begin
  Result := FServerSideEncryptionCustomerMethod.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetServerSideEncryptionCustomerMethod(const Value: TServerSideEncryption);
begin
  FServerSideEncryptionCustomerMethod := Value;
end;

function TGetPreSignedUrlRequest.IsSetServerSideEncryptionCustomerMethod: Boolean;
begin
  Result := FServerSideEncryptionCustomerMethod.HasValue;
end;

function TGetPreSignedUrlRequest.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TGetPreSignedUrlRequest.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

function TGetPreSignedUrlRequest.GetVerb: TProtocol;
begin
  Result := FVerb.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetVerb(const Value: TProtocol);
begin
  FVerb := Value;
end;

function TGetPreSignedUrlRequest.IsSetVerb: Boolean;
begin
  Result := FVerb.HasValue;
end;

function TGetPreSignedUrlRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TGetPreSignedUrlRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
