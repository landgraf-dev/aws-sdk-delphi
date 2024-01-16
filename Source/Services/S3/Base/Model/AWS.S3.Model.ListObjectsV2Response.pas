unit AWS.S3.Model.ListObjectsV2Response;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Model.ObjectTypes, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TListObjectsV2Response = class;
  
  IListObjectsV2Response = interface(IAmazonWebServiceResponse)
    function GetCommonPrefixes: TObjectList<TCommonPrefix>;
    procedure SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
    function GetKeepCommonPrefixes: Boolean;
    procedure SetKeepCommonPrefixes(const Value: Boolean);
    function GetContents: TObjectList<TS3Object>;
    procedure SetContents(const Value: TObjectList<TS3Object>);
    function GetKeepContents: Boolean;
    procedure SetKeepContents(const Value: Boolean);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetKeyCount: Integer;
    procedure SetKeyCount(const Value: Integer);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetStartAfter: string;
    procedure SetStartAfter(const Value: string);
    function Obj: TListObjectsV2Response;
    function IsSetCommonPrefixes: Boolean;
    function IsSetContents: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetKeyCount: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetName: Boolean;
    function IsSetNextContinuationToken: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetStartAfter: Boolean;
    property CommonPrefixes: TObjectList<TCommonPrefix> read GetCommonPrefixes write SetCommonPrefixes;
    property KeepCommonPrefixes: Boolean read GetKeepCommonPrefixes write SetKeepCommonPrefixes;
    property Contents: TObjectList<TS3Object> read GetContents write SetContents;
    property KeepContents: Boolean read GetKeepContents write SetKeepContents;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property KeyCount: Integer read GetKeyCount write SetKeyCount;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Name: string read GetName write SetName;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
    property Prefix: string read GetPrefix write SetPrefix;
    property StartAfter: string read GetStartAfter write SetStartAfter;
    property S3Objects: TObjectList<TS3Object> read GetContents write SetContents;
    property KeepS3Objects: Boolean read GetKeepContents write SetKeepContents;
    property IsSetS3Objects: Boolean read IsSetContents;
  end;
  
  TListObjectsV2Response = class(TAmazonWebServiceResponse, IListObjectsV2Response)
  strict private
    FCommonPrefixes: TObjectList<TCommonPrefix>;
    FKeepCommonPrefixes: Boolean;
    FContents: TObjectList<TS3Object>;
    FKeepContents: Boolean;
    FContinuationToken: Nullable<string>;
    FDelimiter: Nullable<string>;
    FEncodingType: Nullable<TEncodingType>;
    FIsTruncated: Nullable<Boolean>;
    FKeyCount: Nullable<Integer>;
    FMaxKeys: Nullable<Integer>;
    FName: Nullable<string>;
    FNextContinuationToken: Nullable<string>;
    FPrefix: Nullable<string>;
    FStartAfter: Nullable<string>;
    function GetCommonPrefixes: TObjectList<TCommonPrefix>;
    procedure SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
    function GetKeepCommonPrefixes: Boolean;
    procedure SetKeepCommonPrefixes(const Value: Boolean);
    function GetContents: TObjectList<TS3Object>;
    procedure SetContents(const Value: TObjectList<TS3Object>);
    function GetKeepContents: Boolean;
    procedure SetKeepContents(const Value: Boolean);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetKeyCount: Integer;
    procedure SetKeyCount(const Value: Integer);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetStartAfter: string;
    procedure SetStartAfter(const Value: string);
  strict protected
    function Obj: TListObjectsV2Response;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCommonPrefixes: Boolean;
    function IsSetContents: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetKeyCount: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetName: Boolean;
    function IsSetNextContinuationToken: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetStartAfter: Boolean;
    property CommonPrefixes: TObjectList<TCommonPrefix> read GetCommonPrefixes write SetCommonPrefixes;
    property KeepCommonPrefixes: Boolean read GetKeepCommonPrefixes write SetKeepCommonPrefixes;
    property Contents: TObjectList<TS3Object> read GetContents write SetContents;
    property KeepContents: Boolean read GetKeepContents write SetKeepContents;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property KeyCount: Integer read GetKeyCount write SetKeyCount;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Name: string read GetName write SetName;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
    property Prefix: string read GetPrefix write SetPrefix;
    property StartAfter: string read GetStartAfter write SetStartAfter;
    property S3Objects: TObjectList<TS3Object> read GetContents write SetContents;
    property KeepS3Objects: Boolean read GetKeepContents write SetKeepContents;
    property IsSetS3Objects: Boolean read IsSetContents;
  end;
  
implementation

{ TListObjectsV2Response }

constructor TListObjectsV2Response.Create;
begin
  inherited;
  FCommonPrefixes := TObjectList<TCommonPrefix>.Create;
  FContents := TObjectList<TS3Object>.Create;
end;

destructor TListObjectsV2Response.Destroy;
begin
  Contents := nil;
  CommonPrefixes := nil;
  inherited;
end;

function TListObjectsV2Response.Obj: TListObjectsV2Response;
begin
  Result := Self;
end;

function TListObjectsV2Response.GetCommonPrefixes: TObjectList<TCommonPrefix>;
begin
  Result := FCommonPrefixes;
end;

procedure TListObjectsV2Response.SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
begin
  if FCommonPrefixes <> Value then
  begin
    if not KeepCommonPrefixes then
      FCommonPrefixes.Free;
    FCommonPrefixes := Value;
  end;
end;

function TListObjectsV2Response.GetKeepCommonPrefixes: Boolean;
begin
  Result := FKeepCommonPrefixes;
end;

procedure TListObjectsV2Response.SetKeepCommonPrefixes(const Value: Boolean);
begin
  FKeepCommonPrefixes := Value;
end;

function TListObjectsV2Response.IsSetCommonPrefixes: Boolean;
begin
  Result := (FCommonPrefixes <> nil) and (FCommonPrefixes.Count > 0);
end;

function TListObjectsV2Response.GetContents: TObjectList<TS3Object>;
begin
  Result := FContents;
end;

procedure TListObjectsV2Response.SetContents(const Value: TObjectList<TS3Object>);
begin
  if FContents <> Value then
  begin
    if not KeepContents then
      FContents.Free;
    FContents := Value;
  end;
end;

function TListObjectsV2Response.GetKeepContents: Boolean;
begin
  Result := FKeepContents;
end;

procedure TListObjectsV2Response.SetKeepContents(const Value: Boolean);
begin
  FKeepContents := Value;
end;

function TListObjectsV2Response.IsSetContents: Boolean;
begin
  Result := (FContents <> nil) and (FContents.Count > 0);
end;

function TListObjectsV2Response.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListObjectsV2Response.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListObjectsV2Response.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TListObjectsV2Response.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TListObjectsV2Response.GetEncodingType: TEncodingType;
begin
  Result := FEncodingType.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetEncodingType(const Value: TEncodingType);
begin
  FEncodingType := Value;
end;

function TListObjectsV2Response.IsSetEncodingType: Boolean;
begin
  Result := FEncodingType.HasValue;
end;

function TListObjectsV2Response.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListObjectsV2Response.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListObjectsV2Response.GetKeyCount: Integer;
begin
  Result := FKeyCount.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetKeyCount(const Value: Integer);
begin
  FKeyCount := Value;
end;

function TListObjectsV2Response.IsSetKeyCount: Boolean;
begin
  Result := FKeyCount.HasValue;
end;

function TListObjectsV2Response.GetMaxKeys: Integer;
begin
  Result := FMaxKeys.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetMaxKeys(const Value: Integer);
begin
  FMaxKeys := Value;
end;

function TListObjectsV2Response.IsSetMaxKeys: Boolean;
begin
  Result := FMaxKeys.HasValue;
end;

function TListObjectsV2Response.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetName(const Value: string);
begin
  FName := Value;
end;

function TListObjectsV2Response.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TListObjectsV2Response.GetNextContinuationToken: string;
begin
  Result := FNextContinuationToken.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetNextContinuationToken(const Value: string);
begin
  FNextContinuationToken := Value;
end;

function TListObjectsV2Response.IsSetNextContinuationToken: Boolean;
begin
  Result := FNextContinuationToken.HasValue;
end;

function TListObjectsV2Response.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TListObjectsV2Response.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TListObjectsV2Response.GetStartAfter: string;
begin
  Result := FStartAfter.ValueOrDefault;
end;

procedure TListObjectsV2Response.SetStartAfter(const Value: string);
begin
  FStartAfter := Value;
end;

function TListObjectsV2Response.IsSetStartAfter: Boolean;
begin
  Result := FStartAfter.HasValue;
end;

end.
