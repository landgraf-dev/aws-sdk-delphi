unit AWS.S3.Model.CompleteMultipartUploadRequest;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  AWS.S3.Model.CompletedPart, 
  AWS.S3.Enums;

type
  TCompleteMultipartUploadRequest = class;
  
  ICompleteMultipartUploadRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetPartETags: TObjectList<TCompletedPart>;
    procedure SetPartETags(const Value: TObjectList<TCompletedPart>);
    function GetKeepPartETags: Boolean;
    procedure SetKeepPartETags(const Value: Boolean);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function Obj: TCompleteMultipartUploadRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartETags: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetUploadId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property PartETags: TObjectList<TCompletedPart> read GetPartETags write SetPartETags;
    property KeepPartETags: Boolean read GetKeepPartETags write SetKeepPartETags;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property UploadId: string read GetUploadId write SetUploadId;
    property Parts: TObjectList<TCompletedPart> read GetPartETags write SetPartETags;
    property KeepParts: Boolean read GetKeepPartETags write SetKeepPartETags;
    property IsSetParts: Boolean read IsSetPartETags;
  end;
  
  TCompleteMultipartUploadRequest = class(TAmazonS3Request, ICompleteMultipartUploadRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FPartETags: TObjectList<TCompletedPart>;
    FKeepPartETags: Boolean;
    FRequestPayer: Nullable<TRequestPayer>;
    FUploadId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetPartETags: TObjectList<TCompletedPart>;
    procedure SetPartETags(const Value: TObjectList<TCompletedPart>);
    function GetKeepPartETags: Boolean;
    procedure SetKeepPartETags(const Value: Boolean);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
  strict protected
    function Obj: TCompleteMultipartUploadRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartETags: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetUploadId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property PartETags: TObjectList<TCompletedPart> read GetPartETags write SetPartETags;
    property KeepPartETags: Boolean read GetKeepPartETags write SetKeepPartETags;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property UploadId: string read GetUploadId write SetUploadId;
    property Parts: TObjectList<TCompletedPart> read GetPartETags write SetPartETags;
    property KeepParts: Boolean read GetKeepPartETags write SetKeepPartETags;
    property IsSetParts: Boolean read IsSetPartETags;
  end;
  
implementation

{ TCompleteMultipartUploadRequest }

constructor TCompleteMultipartUploadRequest.Create;
begin
  inherited;
  FPartETags := TObjectList<TCompletedPart>.Create;
end;

destructor TCompleteMultipartUploadRequest.Destroy;
begin
  PartETags := nil;
  inherited;
end;

function TCompleteMultipartUploadRequest.Obj: TCompleteMultipartUploadRequest;
begin
  Result := Self;
end;

function TCompleteMultipartUploadRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TCompleteMultipartUploadRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TCompleteMultipartUploadRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TCompleteMultipartUploadRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TCompleteMultipartUploadRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TCompleteMultipartUploadRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TCompleteMultipartUploadRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TCompleteMultipartUploadRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TCompleteMultipartUploadRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TCompleteMultipartUploadRequest.GetPartETags: TObjectList<TCompletedPart>;
begin
  Result := FPartETags;
end;

procedure TCompleteMultipartUploadRequest.SetPartETags(const Value: TObjectList<TCompletedPart>);
begin
  if FPartETags <> Value then
  begin
    if not KeepPartETags then
      FPartETags.Free;
    FPartETags := Value;
  end;
end;

function TCompleteMultipartUploadRequest.GetKeepPartETags: Boolean;
begin
  Result := FKeepPartETags;
end;

procedure TCompleteMultipartUploadRequest.SetKeepPartETags(const Value: Boolean);
begin
  FKeepPartETags := Value;
end;

function TCompleteMultipartUploadRequest.IsSetPartETags: Boolean;
begin
  Result := (FPartETags <> nil) and (FPartETags.Count > 0);
end;

function TCompleteMultipartUploadRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TCompleteMultipartUploadRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TCompleteMultipartUploadRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TCompleteMultipartUploadRequest.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TCompleteMultipartUploadRequest.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TCompleteMultipartUploadRequest.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

end.
