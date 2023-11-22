unit AWS.S3Control.Model.RegionalBucket;

interface

uses
  Bcl.Types.Nullable;

type
  TRegionalBucket = class;
  
  IRegionalBucket = interface
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetBucketArn: string;
    procedure SetBucketArn(const Value: string);
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetOutpostId: string;
    procedure SetOutpostId(const Value: string);
    function GetPublicAccessBlockEnabled: Boolean;
    procedure SetPublicAccessBlockEnabled(const Value: Boolean);
    function Obj: TRegionalBucket;
    function IsSetBucket: Boolean;
    function IsSetBucketArn: Boolean;
    function IsSetCreationDate: Boolean;
    function IsSetOutpostId: Boolean;
    function IsSetPublicAccessBlockEnabled: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property BucketArn: string read GetBucketArn write SetBucketArn;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property OutpostId: string read GetOutpostId write SetOutpostId;
    property PublicAccessBlockEnabled: Boolean read GetPublicAccessBlockEnabled write SetPublicAccessBlockEnabled;
  end;
  
  TRegionalBucket = class
  strict private
    FBucket: Nullable<string>;
    FBucketArn: Nullable<string>;
    FCreationDate: Nullable<TDateTime>;
    FOutpostId: Nullable<string>;
    FPublicAccessBlockEnabled: Nullable<Boolean>;
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetBucketArn: string;
    procedure SetBucketArn(const Value: string);
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetOutpostId: string;
    procedure SetOutpostId(const Value: string);
    function GetPublicAccessBlockEnabled: Boolean;
    procedure SetPublicAccessBlockEnabled(const Value: Boolean);
  strict protected
    function Obj: TRegionalBucket;
  public
    function IsSetBucket: Boolean;
    function IsSetBucketArn: Boolean;
    function IsSetCreationDate: Boolean;
    function IsSetOutpostId: Boolean;
    function IsSetPublicAccessBlockEnabled: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property BucketArn: string read GetBucketArn write SetBucketArn;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property OutpostId: string read GetOutpostId write SetOutpostId;
    property PublicAccessBlockEnabled: Boolean read GetPublicAccessBlockEnabled write SetPublicAccessBlockEnabled;
  end;
  
implementation

{ TRegionalBucket }

function TRegionalBucket.Obj: TRegionalBucket;
begin
  Result := Self;
end;

function TRegionalBucket.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TRegionalBucket.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TRegionalBucket.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TRegionalBucket.GetBucketArn: string;
begin
  Result := FBucketArn.ValueOrDefault;
end;

procedure TRegionalBucket.SetBucketArn(const Value: string);
begin
  FBucketArn := Value;
end;

function TRegionalBucket.IsSetBucketArn: Boolean;
begin
  Result := FBucketArn.HasValue;
end;

function TRegionalBucket.GetCreationDate: TDateTime;
begin
  Result := FCreationDate.ValueOrDefault;
end;

procedure TRegionalBucket.SetCreationDate(const Value: TDateTime);
begin
  FCreationDate := Value;
end;

function TRegionalBucket.IsSetCreationDate: Boolean;
begin
  Result := FCreationDate.HasValue;
end;

function TRegionalBucket.GetOutpostId: string;
begin
  Result := FOutpostId.ValueOrDefault;
end;

procedure TRegionalBucket.SetOutpostId(const Value: string);
begin
  FOutpostId := Value;
end;

function TRegionalBucket.IsSetOutpostId: Boolean;
begin
  Result := FOutpostId.HasValue;
end;

function TRegionalBucket.GetPublicAccessBlockEnabled: Boolean;
begin
  Result := FPublicAccessBlockEnabled.ValueOrDefault;
end;

procedure TRegionalBucket.SetPublicAccessBlockEnabled(const Value: Boolean);
begin
  FPublicAccessBlockEnabled := Value;
end;

function TRegionalBucket.IsSetPublicAccessBlockEnabled: Boolean;
begin
  Result := FPublicAccessBlockEnabled.HasValue;
end;

end.
