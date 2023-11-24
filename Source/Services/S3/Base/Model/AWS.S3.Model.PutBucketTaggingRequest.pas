unit AWS.S3.Model.PutBucketTaggingRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.Tag;

type
  TPutBucketTaggingRequest = class;
  
  IPutBucketTaggingRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetTagSet: TObjectList<TTag>;
    procedure SetTagSet(const Value: TObjectList<TTag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
    function Obj: TPutBucketTaggingRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetTagSet: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property TagSet: TObjectList<TTag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
  TPutBucketTaggingRequest = class(TAmazonS3Request, IPutBucketTaggingRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FTagSet: TObjectList<TTag>;
    FKeepTagSet: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetTagSet: TObjectList<TTag>;
    procedure SetTagSet(const Value: TObjectList<TTag>);
    function GetKeepTagSet: Boolean;
    procedure SetKeepTagSet(const Value: Boolean);
  strict protected
    function Obj: TPutBucketTaggingRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetTagSet: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property TagSet: TObjectList<TTag> read GetTagSet write SetTagSet;
    property KeepTagSet: Boolean read GetKeepTagSet write SetKeepTagSet;
  end;
  
implementation

{ TPutBucketTaggingRequest }

constructor TPutBucketTaggingRequest.Create;
begin
  inherited;
  FTagSet := TObjectList<TTag>.Create;
end;

destructor TPutBucketTaggingRequest.Destroy;
begin
  TagSet := nil;
  inherited;
end;

function TPutBucketTaggingRequest.Obj: TPutBucketTaggingRequest;
begin
  Result := Self;
end;

function TPutBucketTaggingRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketTaggingRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketTaggingRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketTaggingRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketTaggingRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketTaggingRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketTaggingRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketTaggingRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketTaggingRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketTaggingRequest.GetTagSet: TObjectList<TTag>;
begin
  Result := FTagSet;
end;

procedure TPutBucketTaggingRequest.SetTagSet(const Value: TObjectList<TTag>);
begin
  if FTagSet <> Value then
  begin
    if not KeepTagSet then
      FTagSet.Free;
    FTagSet := Value;
  end;
end;

function TPutBucketTaggingRequest.GetKeepTagSet: Boolean;
begin
  Result := FKeepTagSet;
end;

procedure TPutBucketTaggingRequest.SetKeepTagSet(const Value: Boolean);
begin
  FKeepTagSet := Value;
end;

function TPutBucketTaggingRequest.IsSetTagSet: Boolean;
begin
  Result := (FTagSet <> nil) and (FTagSet.Count > 0);
end;

end.
