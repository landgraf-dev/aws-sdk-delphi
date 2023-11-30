unit AWS.S3Control.Model.PutBucketTaggingRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable, 
  AWS.S3Control.Model.Tagging;

type
  TPutBucketTaggingRequest = class;
  
  IPutBucketTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetTagging: TTagging;
    procedure SetTagging(const Value: TTagging);
    function GetKeepTagging: Boolean;
    procedure SetKeepTagging(const Value: Boolean);
    function Obj: TPutBucketTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetTagging: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property Tagging: TTagging read GetTagging write SetTagging;
    property KeepTagging: Boolean read GetKeepTagging write SetKeepTagging;
  end;
  
  TPutBucketTaggingRequest = class(TAmazonS3ControlRequest, IPutBucketTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    FTagging: TTagging;
    FKeepTagging: Boolean;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetTagging: TTagging;
    procedure SetTagging(const Value: TTagging);
    function GetKeepTagging: Boolean;
    procedure SetKeepTagging(const Value: Boolean);
  strict protected
    function Obj: TPutBucketTaggingRequest;
  public
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetTagging: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property Tagging: TTagging read GetTagging write SetTagging;
    property KeepTagging: Boolean read GetKeepTagging write SetKeepTagging;
  end;
  
implementation

{ TPutBucketTaggingRequest }

destructor TPutBucketTaggingRequest.Destroy;
begin
  Tagging := nil;
  inherited;
end;

function TPutBucketTaggingRequest.Obj: TPutBucketTaggingRequest;
begin
  Result := Self;
end;

function TPutBucketTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutBucketTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutBucketTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutBucketTaggingRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TPutBucketTaggingRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TPutBucketTaggingRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TPutBucketTaggingRequest.GetTagging: TTagging;
begin
  Result := FTagging;
end;

procedure TPutBucketTaggingRequest.SetTagging(const Value: TTagging);
begin
  if FTagging <> Value then
  begin
    if not KeepTagging then
      FTagging.Free;
    FTagging := Value;
  end;
end;

function TPutBucketTaggingRequest.GetKeepTagging: Boolean;
begin
  Result := FKeepTagging;
end;

procedure TPutBucketTaggingRequest.SetKeepTagging(const Value: Boolean);
begin
  FKeepTagging := Value;
end;

function TPutBucketTaggingRequest.IsSetTagging: Boolean;
begin
  Result := FTagging <> nil;
end;

end.
