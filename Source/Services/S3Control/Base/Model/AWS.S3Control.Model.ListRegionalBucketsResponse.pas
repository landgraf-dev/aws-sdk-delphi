unit AWS.S3Control.Model.ListRegionalBucketsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.RegionalBucket;

type
  TListRegionalBucketsResponse = class;
  
  IListRegionalBucketsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetRegionalBucketList: TObjectList<TRegionalBucket>;
    procedure SetRegionalBucketList(const Value: TObjectList<TRegionalBucket>);
    function GetKeepRegionalBucketList: Boolean;
    procedure SetKeepRegionalBucketList(const Value: Boolean);
    function Obj: TListRegionalBucketsResponse;
    function IsSetNextToken: Boolean;
    function IsSetRegionalBucketList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property RegionalBucketList: TObjectList<TRegionalBucket> read GetRegionalBucketList write SetRegionalBucketList;
    property KeepRegionalBucketList: Boolean read GetKeepRegionalBucketList write SetKeepRegionalBucketList;
  end;
  
  TListRegionalBucketsResponse = class(TAmazonWebServiceResponse, IListRegionalBucketsResponse)
  strict private
    FNextToken: Nullable<string>;
    FRegionalBucketList: TObjectList<TRegionalBucket>;
    FKeepRegionalBucketList: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetRegionalBucketList: TObjectList<TRegionalBucket>;
    procedure SetRegionalBucketList(const Value: TObjectList<TRegionalBucket>);
    function GetKeepRegionalBucketList: Boolean;
    procedure SetKeepRegionalBucketList(const Value: Boolean);
  strict protected
    function Obj: TListRegionalBucketsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetRegionalBucketList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property RegionalBucketList: TObjectList<TRegionalBucket> read GetRegionalBucketList write SetRegionalBucketList;
    property KeepRegionalBucketList: Boolean read GetKeepRegionalBucketList write SetKeepRegionalBucketList;
  end;
  
implementation

{ TListRegionalBucketsResponse }

constructor TListRegionalBucketsResponse.Create;
begin
  inherited;
  FRegionalBucketList := TObjectList<TRegionalBucket>.Create;
end;

destructor TListRegionalBucketsResponse.Destroy;
begin
  RegionalBucketList := nil;
  inherited;
end;

function TListRegionalBucketsResponse.Obj: TListRegionalBucketsResponse;
begin
  Result := Self;
end;

function TListRegionalBucketsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListRegionalBucketsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListRegionalBucketsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListRegionalBucketsResponse.GetRegionalBucketList: TObjectList<TRegionalBucket>;
begin
  Result := FRegionalBucketList;
end;

procedure TListRegionalBucketsResponse.SetRegionalBucketList(const Value: TObjectList<TRegionalBucket>);
begin
  if FRegionalBucketList <> Value then
  begin
    if not KeepRegionalBucketList then
      FRegionalBucketList.Free;
    FRegionalBucketList := Value;
  end;
end;

function TListRegionalBucketsResponse.GetKeepRegionalBucketList: Boolean;
begin
  Result := FKeepRegionalBucketList;
end;

procedure TListRegionalBucketsResponse.SetKeepRegionalBucketList(const Value: Boolean);
begin
  FKeepRegionalBucketList := Value;
end;

function TListRegionalBucketsResponse.IsSetRegionalBucketList: Boolean;
begin
  Result := (FRegionalBucketList <> nil) and (FRegionalBucketList.Count > 0);
end;

end.
