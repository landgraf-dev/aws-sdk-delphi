unit AWS.S3.Model.GetPresignedUrlRequest;

interface

uses
  AWS.S3.Model.Request,
  AWS.S3.Model.MetadataCollection,
  AWS.S3.Model.ParameterCollection,
  AWS.S3.Model.ResponseHeaderOverrides,
  AWS.Lib.HttpHeaders,
  AWS.Nullable,
  AWS.S3.Enums;

type
  TServerSideEncryptionCustomerMethod = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AES256: TServerSideEncryptionCustomerMethod; static;
    class operator Equal(a: TServerSideEncryptionCustomerMethod; b: TServerSideEncryptionCustomerMethod): Boolean;
    class operator NotEqual(a: TServerSideEncryptionCustomerMethod; b: TServerSideEncryptionCustomerMethod): Boolean;
    class operator Implicit(a: string): TServerSideEncryptionCustomerMethod;
    property Value: string read FValue;
  end;

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
    function GetResponseHeaderOverrides: TResponseHeaderOverrides;
    procedure SetResponseHeaderOverrides(const Value: TResponseHeaderOverrides);
    function GetKeepResponseHeaderOverrides: Boolean;
    procedure SetKeepResponseHeaderOverrides(const Value: Boolean);
    function GetServerSideEncryptionMethod: TServerSideEncryptionMethod;
    procedure SetServerSideEncryptionMethod(const Value: TServerSideEncryptionMethod);
    function GetServerSideEncryptionCustomerMethod: TServerSideEncryptionCustomerMethod;
    procedure SetServerSideEncryptionCustomerMethod(const Value: TServerSideEncryptionCustomerMethod);
    function GetServerSideEncryptionKeyManagementServiceKeyId: string;
    procedure SetServerSideEncryptionKeyManagementServiceKeyId(const Value: string);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function GetVerb: THttpVerb;
    procedure SetVerb(const Value: THttpVerb);
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
    function IsSetServerSideEncryptionMethod: Boolean;
    function IsSetServerSideEncryptionCustomerMethod: Boolean;
    function IsSetServerSideEncryptionKeyManagementServiceKeyId: Boolean;
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
    property ResponseHeaderOverrides: TResponseHeaderOverrides read GetResponseHeaderOverrides write SetResponseHeaderOverrides;
    property KeepResponseHeaderOverrides: Boolean read GetKeepResponseHeaderOverrides write SetKeepResponseHeaderOverrides;
    property ServerSideEncryptionMethod: TServerSideEncryptionMethod read GetServerSideEncryptionMethod write SetServerSideEncryptionMethod;
    property ServerSideEncryptionCustomerMethod: TServerSideEncryptionCustomerMethod read GetServerSideEncryptionCustomerMethod write SetServerSideEncryptionCustomerMethod;
    property ServerSideEncryptionKeyManagementServiceKeyId: string read GetServerSideEncryptionKeyManagementServiceKeyId write SetServerSideEncryptionKeyManagementServiceKeyId;
    property UploadId: string read GetUploadId write SetUploadId;
    property Verb: THttpVerb read GetVerb write SetVerb;
    property VersionId: string read GetVersionId write SetVersionId;

    function GetHeaders: THttpHeaders;
    property Headers: THttpHeaders read GetHeaders;
    function GetMetadata: TMetadataCollection;
    property Metadata: TMetadataCollection read GetMetadata;
    function GetParameters: TParameterCollection;
    property Parameters: TParameterCollection read GetParameters;
  end;

  TGetPreSignedUrlRequest = class(TAmazonS3Request, IGetPreSignedUrlRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentType: Nullable<string>;
    FExpires: Nullable<TDateTime>;
    FKey: Nullable<string>;
    FPartNumber: Nullable<Integer>;
    FProtocol: Nullable<TProtocol>;
    FRequestPayer: Nullable<TRequestPayer>;
    FResponseHeaderOverrides: TResponseHeaderOverrides;
    FKeepResponseHeaderOverrides: Boolean;
    FServerSideEncryptionMethod: Nullable<TServerSideEncryptionMethod>;
    FServerSideEncryptionCustomerMethod: Nullable<TServerSideEncryptionCustomerMethod>;
    FServerSideEncryptionKeyManagementServiceKeyId: Nullable<string>;
    FUploadId: Nullable<string>;
    FVerb: Nullable<THttpVerb>;
    FVersionId: Nullable<string>;
    FHeaders: THttpHeaders;
    FMetadata: TMetadataCollection;
    FParameters: TParameterCollection;
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
    function GetResponseHeaderOverrides: TResponseHeaderOverrides;
    procedure SetResponseHeaderOverrides(const Value: TResponseHeaderOverrides);
    function GetKeepResponseHeaderOverrides: Boolean;
    procedure SetKeepResponseHeaderOverrides(const Value: Boolean);
    function GetServerSideEncryptionMethod: TServerSideEncryptionMethod;
    procedure SetServerSideEncryptionMethod(const Value: TServerSideEncryptionMethod);
    function GetServerSideEncryptionCustomerMethod: TServerSideEncryptionCustomerMethod;
    procedure SetServerSideEncryptionCustomerMethod(const Value: TServerSideEncryptionCustomerMethod);
    function GetServerSideEncryptionKeyManagementServiceKeyId: string;
    procedure SetServerSideEncryptionKeyManagementServiceKeyId(const Value: string);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function GetVerb: THttpVerb;
    procedure SetVerb(const Value: THttpVerb);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function GetHeaders: THttpHeaders;
    function GetMetadata: TMetadataCollection;
    function GetParameters: TParameterCollection;
  strict protected
    function Obj: TGetPreSignedUrlRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentType: Boolean;
    function IsSetExpires: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetServerSideEncryptionMethod: Boolean;
    function IsSetServerSideEncryptionCustomerMethod: Boolean;
    function IsSetServerSideEncryptionKeyManagementServiceKeyId: Boolean;
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
    property ResponseHeaderOverrides: TResponseHeaderOverrides read GetResponseHeaderOverrides write SetResponseHeaderOverrides;
    property KeepResponseHeaderOverrides: Boolean read GetKeepResponseHeaderOverrides write SetKeepResponseHeaderOverrides;
    property ServerSideEncryptionMethod: TServerSideEncryptionMethod read GetServerSideEncryptionMethod write SetServerSideEncryptionMethod;
    property ServerSideEncryptionCustomerMethod: TServerSideEncryptionCustomerMethod read GetServerSideEncryptionCustomerMethod write SetServerSideEncryptionCustomerMethod;
    property ServerSideEncryptionKeyManagementServiceKeyId: string read GetServerSideEncryptionKeyManagementServiceKeyId write SetServerSideEncryptionKeyManagementServiceKeyId;
    property UploadId: string read GetUploadId write SetUploadId;
    property Verb: THttpVerb read GetVerb write SetVerb;
    property VersionId: string read GetVersionId write SetVersionId;

    property Headers: THttpHeaders read GetHeaders;
    property Metadata: TMetadataCollection read GetMetadata;
    property Parameters: TParameterCollection read GetParameters;
  end;

implementation

{ TServerSideEncryptionCustomerMethod }

constructor TServerSideEncryptionCustomerMethod.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TServerSideEncryptionCustomerMethod.AES256: TServerSideEncryptionCustomerMethod;
begin
  Result := TServerSideEncryptionCustomerMethod.Create('AES256');
end;

class operator TServerSideEncryptionCustomerMethod.Equal(a: TServerSideEncryptionCustomerMethod; b: TServerSideEncryptionCustomerMethod): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TServerSideEncryptionCustomerMethod.NotEqual(a: TServerSideEncryptionCustomerMethod; b: TServerSideEncryptionCustomerMethod): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TServerSideEncryptionCustomerMethod.Implicit(a: string): TServerSideEncryptionCustomerMethod;
begin
  Result.FValue := a;
end;

{ TGetPreSignedUrlRequest }

function TGetPreSignedUrlRequest.Obj: TGetPreSignedUrlRequest;
begin
  Result := Self;
end;

constructor TGetPreSignedUrlRequest.Create;
begin
  inherited;
  FHeaders := THttpHeaders.Create;
  FMetadata := TMetadataCollection.Create;
  FParameters := TParameterCollection.Create;
  FResponseHeaderOverrides := TResponseHeaderOverrides.Create;
end;

destructor TGetPreSignedUrlRequest.Destroy;
begin
  FHeaders.Free;
  FMetadata.Free;
  FParameters.Free;
  ResponseHeaderOverrides := nil;
  inherited;
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

function TGetPreSignedUrlRequest.GetHeaders: THttpHeaders;
begin
  Result := FHeaders;
end;

procedure TGetPreSignedUrlRequest.SetExpires(const Value: TDateTime);
begin
  FExpires := Value;
end;

function TGetPreSignedUrlRequest.IsSetExpires: Boolean;
begin
  Result := FExpires.HasValue;
end;

function TGetPreSignedUrlRequest.GetKeepResponseHeaderOverrides: Boolean;
begin
  Result := FKeepResponseHeaderOverrides;
end;

function TGetPreSignedUrlRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

function TGetPreSignedUrlRequest.GetMetadata: TMetadataCollection;
begin
  Result := FMetadata;
end;

procedure TGetPreSignedUrlRequest.SetKeepResponseHeaderOverrides(const Value: Boolean);
begin
  FKeepResponseHeaderOverrides := Value;
end;

procedure TGetPreSignedUrlRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TGetPreSignedUrlRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TGetPreSignedUrlRequest.GetParameters: TParameterCollection;
begin
  Result := FParameters;
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

function TGetPreSignedUrlRequest.GetResponseHeaderOverrides: TResponseHeaderOverrides;
begin
  Result := FResponseHeaderOverrides;
end;

procedure TGetPreSignedUrlRequest.SetResponseHeaderOverrides(const Value: TResponseHeaderOverrides);
begin
  if FResponseHeaderOverrides <> Value then
  begin
    if not KeepResponseHeaderOverrides then
      FResponseHeaderOverrides.Free;
    FResponseHeaderOverrides := Value;
  end;
end;

function TGetPreSignedUrlRequest.GetServerSideEncryptionMethod: TServerSideEncryptionMethod;
begin
  Result := FServerSideEncryptionMethod.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetServerSideEncryptionMethod(const Value: TServerSideEncryptionMethod);
begin
  FServerSideEncryptionMethod := Value;
end;

function TGetPreSignedUrlRequest.IsSetServerSideEncryptionMethod: Boolean;
begin
  Result := FServerSideEncryptionMethod.HasValue;
end;

function TGetPreSignedUrlRequest.GetServerSideEncryptionCustomerMethod: TServerSideEncryptionCustomerMethod;
begin
  Result := FServerSideEncryptionCustomerMethod.ValueOrDefault;
end;

function TGetPreSignedUrlRequest.GetServerSideEncryptionKeyManagementServiceKeyId: string;
begin
  Result := FServerSideEncryptionKeyManagementServiceKeyId.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetServerSideEncryptionCustomerMethod(const Value: TServerSideEncryptionCustomerMethod);
begin
  FServerSideEncryptionCustomerMethod := Value;
end;

procedure TGetPreSignedUrlRequest.SetServerSideEncryptionKeyManagementServiceKeyId(const Value: string);
begin
  FServerSideEncryptionKeyManagementServiceKeyId := Value;
end;

function TGetPreSignedUrlRequest.IsSetServerSideEncryptionCustomerMethod: Boolean;
begin
  Result := FServerSideEncryptionCustomerMethod.HasValue;
end;

function TGetPreSignedUrlRequest.IsSetServerSideEncryptionKeyManagementServiceKeyId: Boolean;
begin
  Result := FServerSideEncryptionKeyManagementServiceKeyId.HasValue;
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

function TGetPreSignedUrlRequest.GetVerb: THttpVerb;
begin
  Result := FVerb.ValueOrDefault;
end;

procedure TGetPreSignedUrlRequest.SetVerb(const Value: THttpVerb);
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
