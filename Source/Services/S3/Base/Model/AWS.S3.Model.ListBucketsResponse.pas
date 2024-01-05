unit AWS.S3.Model.ListBucketsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.Bucket, 
  AWS.S3.Model.Owner;

type
  TListBucketsResponse = class;
  
  IListBucketsResponse = interface(IAmazonWebServiceResponse)
    function GetBuckets: TObjectList<TBucket>;
    procedure SetBuckets(const Value: TObjectList<TBucket>);
    function GetKeepBuckets: Boolean;
    procedure SetKeepBuckets(const Value: Boolean);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function Obj: TListBucketsResponse;
    function IsSetBuckets: Boolean;
    function IsSetOwner: Boolean;
    property Buckets: TObjectList<TBucket> read GetBuckets write SetBuckets;
    property KeepBuckets: Boolean read GetKeepBuckets write SetKeepBuckets;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
  end;
  
  TListBucketsResponse = class(TAmazonWebServiceResponse, IListBucketsResponse)
  strict private
    FBuckets: TObjectList<TBucket>;
    FKeepBuckets: Boolean;
    FOwner: TOwner;
    FKeepOwner: Boolean;
    function GetBuckets: TObjectList<TBucket>;
    procedure SetBuckets(const Value: TObjectList<TBucket>);
    function GetKeepBuckets: Boolean;
    procedure SetKeepBuckets(const Value: Boolean);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
  strict protected
    function Obj: TListBucketsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBuckets: Boolean;
    function IsSetOwner: Boolean;
    property Buckets: TObjectList<TBucket> read GetBuckets write SetBuckets;
    property KeepBuckets: Boolean read GetKeepBuckets write SetKeepBuckets;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
  end;
  
implementation

{ TListBucketsResponse }

constructor TListBucketsResponse.Create;
begin
  inherited;
  FBuckets := TObjectList<TBucket>.Create;
end;

destructor TListBucketsResponse.Destroy;
begin
  Owner := nil;
  Buckets := nil;
  inherited;
end;

function TListBucketsResponse.Obj: TListBucketsResponse;
begin
  Result := Self;
end;

function TListBucketsResponse.GetBuckets: TObjectList<TBucket>;
begin
  Result := FBuckets;
end;

procedure TListBucketsResponse.SetBuckets(const Value: TObjectList<TBucket>);
begin
  if FBuckets <> Value then
  begin
    if not KeepBuckets then
      FBuckets.Free;
    FBuckets := Value;
  end;
end;

function TListBucketsResponse.GetKeepBuckets: Boolean;
begin
  Result := FKeepBuckets;
end;

procedure TListBucketsResponse.SetKeepBuckets(const Value: Boolean);
begin
  FKeepBuckets := Value;
end;

function TListBucketsResponse.IsSetBuckets: Boolean;
begin
  Result := (FBuckets <> nil) and (FBuckets.Count > 0);
end;

function TListBucketsResponse.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TListBucketsResponse.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TListBucketsResponse.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TListBucketsResponse.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TListBucketsResponse.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

end.
