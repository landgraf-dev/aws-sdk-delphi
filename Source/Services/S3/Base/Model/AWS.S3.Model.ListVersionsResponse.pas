unit AWS.S3.Model.ListVersionsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Model.DeleteMarkerEntry, 
  AWS.S3.Enums, 
  AWS.S3.Model.ObjectVersion;

type
  TListVersionsResponse = class;
  
  IListVersionsResponse = interface(IAmazonWebServiceResponse)
    function GetCommonPrefixes: TObjectList<TCommonPrefix>;
    procedure SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
    function GetKeepCommonPrefixes: Boolean;
    procedure SetKeepCommonPrefixes(const Value: Boolean);
    function GetDeleteMarkers: TObjectList<TDeleteMarkerEntry>;
    procedure SetDeleteMarkers(const Value: TObjectList<TDeleteMarkerEntry>);
    function GetKeepDeleteMarkers: Boolean;
    procedure SetKeepDeleteMarkers(const Value: Boolean);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetKeyMarker: string;
    procedure SetKeyMarker(const Value: string);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextKeyMarker: string;
    procedure SetNextKeyMarker(const Value: string);
    function GetNextVersionIdMarker: string;
    procedure SetNextVersionIdMarker(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetVersionIdMarker: string;
    procedure SetVersionIdMarker(const Value: string);
    function GetVersions: TObjectList<TObjectVersion>;
    procedure SetVersions(const Value: TObjectList<TObjectVersion>);
    function GetKeepVersions: Boolean;
    procedure SetKeepVersions(const Value: Boolean);
    function Obj: TListVersionsResponse;
    function IsSetCommonPrefixes: Boolean;
    function IsSetDeleteMarkers: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetKeyMarker: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetName: Boolean;
    function IsSetNextKeyMarker: Boolean;
    function IsSetNextVersionIdMarker: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetVersionIdMarker: Boolean;
    function IsSetVersions: Boolean;
    property CommonPrefixes: TObjectList<TCommonPrefix> read GetCommonPrefixes write SetCommonPrefixes;
    property KeepCommonPrefixes: Boolean read GetKeepCommonPrefixes write SetKeepCommonPrefixes;
    property DeleteMarkers: TObjectList<TDeleteMarkerEntry> read GetDeleteMarkers write SetDeleteMarkers;
    property KeepDeleteMarkers: Boolean read GetKeepDeleteMarkers write SetKeepDeleteMarkers;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property KeyMarker: string read GetKeyMarker write SetKeyMarker;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Name: string read GetName write SetName;
    property NextKeyMarker: string read GetNextKeyMarker write SetNextKeyMarker;
    property NextVersionIdMarker: string read GetNextVersionIdMarker write SetNextVersionIdMarker;
    property Prefix: string read GetPrefix write SetPrefix;
    property VersionIdMarker: string read GetVersionIdMarker write SetVersionIdMarker;
    property Versions: TObjectList<TObjectVersion> read GetVersions write SetVersions;
    property KeepVersions: Boolean read GetKeepVersions write SetKeepVersions;
  end;
  
  TListVersionsResponse = class(TAmazonWebServiceResponse, IListVersionsResponse)
  strict private
    FCommonPrefixes: TObjectList<TCommonPrefix>;
    FKeepCommonPrefixes: Boolean;
    FDeleteMarkers: TObjectList<TDeleteMarkerEntry>;
    FKeepDeleteMarkers: Boolean;
    FDelimiter: Nullable<string>;
    FEncodingType: Nullable<TEncodingType>;
    FIsTruncated: Nullable<Boolean>;
    FKeyMarker: Nullable<string>;
    FMaxKeys: Nullable<Integer>;
    FName: Nullable<string>;
    FNextKeyMarker: Nullable<string>;
    FNextVersionIdMarker: Nullable<string>;
    FPrefix: Nullable<string>;
    FVersionIdMarker: Nullable<string>;
    FVersions: TObjectList<TObjectVersion>;
    FKeepVersions: Boolean;
    function GetCommonPrefixes: TObjectList<TCommonPrefix>;
    procedure SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
    function GetKeepCommonPrefixes: Boolean;
    procedure SetKeepCommonPrefixes(const Value: Boolean);
    function GetDeleteMarkers: TObjectList<TDeleteMarkerEntry>;
    procedure SetDeleteMarkers(const Value: TObjectList<TDeleteMarkerEntry>);
    function GetKeepDeleteMarkers: Boolean;
    procedure SetKeepDeleteMarkers(const Value: Boolean);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetKeyMarker: string;
    procedure SetKeyMarker(const Value: string);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextKeyMarker: string;
    procedure SetNextKeyMarker(const Value: string);
    function GetNextVersionIdMarker: string;
    procedure SetNextVersionIdMarker(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetVersionIdMarker: string;
    procedure SetVersionIdMarker(const Value: string);
    function GetVersions: TObjectList<TObjectVersion>;
    procedure SetVersions(const Value: TObjectList<TObjectVersion>);
    function GetKeepVersions: Boolean;
    procedure SetKeepVersions(const Value: Boolean);
  strict protected
    function Obj: TListVersionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCommonPrefixes: Boolean;
    function IsSetDeleteMarkers: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetKeyMarker: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetName: Boolean;
    function IsSetNextKeyMarker: Boolean;
    function IsSetNextVersionIdMarker: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetVersionIdMarker: Boolean;
    function IsSetVersions: Boolean;
    property CommonPrefixes: TObjectList<TCommonPrefix> read GetCommonPrefixes write SetCommonPrefixes;
    property KeepCommonPrefixes: Boolean read GetKeepCommonPrefixes write SetKeepCommonPrefixes;
    property DeleteMarkers: TObjectList<TDeleteMarkerEntry> read GetDeleteMarkers write SetDeleteMarkers;
    property KeepDeleteMarkers: Boolean read GetKeepDeleteMarkers write SetKeepDeleteMarkers;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property KeyMarker: string read GetKeyMarker write SetKeyMarker;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Name: string read GetName write SetName;
    property NextKeyMarker: string read GetNextKeyMarker write SetNextKeyMarker;
    property NextVersionIdMarker: string read GetNextVersionIdMarker write SetNextVersionIdMarker;
    property Prefix: string read GetPrefix write SetPrefix;
    property VersionIdMarker: string read GetVersionIdMarker write SetVersionIdMarker;
    property Versions: TObjectList<TObjectVersion> read GetVersions write SetVersions;
    property KeepVersions: Boolean read GetKeepVersions write SetKeepVersions;
  end;
  
implementation

{ TListVersionsResponse }

constructor TListVersionsResponse.Create;
begin
  inherited;
  FCommonPrefixes := TObjectList<TCommonPrefix>.Create;
  FDeleteMarkers := TObjectList<TDeleteMarkerEntry>.Create;
  FVersions := TObjectList<TObjectVersion>.Create;
end;

destructor TListVersionsResponse.Destroy;
begin
  Versions := nil;
  DeleteMarkers := nil;
  CommonPrefixes := nil;
  inherited;
end;

function TListVersionsResponse.Obj: TListVersionsResponse;
begin
  Result := Self;
end;

function TListVersionsResponse.GetCommonPrefixes: TObjectList<TCommonPrefix>;
begin
  Result := FCommonPrefixes;
end;

procedure TListVersionsResponse.SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
begin
  if FCommonPrefixes <> Value then
  begin
    if not KeepCommonPrefixes then
      FCommonPrefixes.Free;
    FCommonPrefixes := Value;
  end;
end;

function TListVersionsResponse.GetKeepCommonPrefixes: Boolean;
begin
  Result := FKeepCommonPrefixes;
end;

procedure TListVersionsResponse.SetKeepCommonPrefixes(const Value: Boolean);
begin
  FKeepCommonPrefixes := Value;
end;

function TListVersionsResponse.IsSetCommonPrefixes: Boolean;
begin
  Result := (FCommonPrefixes <> nil) and (FCommonPrefixes.Count > 0);
end;

function TListVersionsResponse.GetDeleteMarkers: TObjectList<TDeleteMarkerEntry>;
begin
  Result := FDeleteMarkers;
end;

procedure TListVersionsResponse.SetDeleteMarkers(const Value: TObjectList<TDeleteMarkerEntry>);
begin
  if FDeleteMarkers <> Value then
  begin
    if not KeepDeleteMarkers then
      FDeleteMarkers.Free;
    FDeleteMarkers := Value;
  end;
end;

function TListVersionsResponse.GetKeepDeleteMarkers: Boolean;
begin
  Result := FKeepDeleteMarkers;
end;

procedure TListVersionsResponse.SetKeepDeleteMarkers(const Value: Boolean);
begin
  FKeepDeleteMarkers := Value;
end;

function TListVersionsResponse.IsSetDeleteMarkers: Boolean;
begin
  Result := (FDeleteMarkers <> nil) and (FDeleteMarkers.Count > 0);
end;

function TListVersionsResponse.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TListVersionsResponse.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TListVersionsResponse.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TListVersionsResponse.GetEncodingType: TEncodingType;
begin
  Result := FEncodingType.ValueOrDefault;
end;

procedure TListVersionsResponse.SetEncodingType(const Value: TEncodingType);
begin
  FEncodingType := Value;
end;

function TListVersionsResponse.IsSetEncodingType: Boolean;
begin
  Result := FEncodingType.HasValue;
end;

function TListVersionsResponse.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListVersionsResponse.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListVersionsResponse.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListVersionsResponse.GetKeyMarker: string;
begin
  Result := FKeyMarker.ValueOrDefault;
end;

procedure TListVersionsResponse.SetKeyMarker(const Value: string);
begin
  FKeyMarker := Value;
end;

function TListVersionsResponse.IsSetKeyMarker: Boolean;
begin
  Result := FKeyMarker.HasValue;
end;

function TListVersionsResponse.GetMaxKeys: Integer;
begin
  Result := FMaxKeys.ValueOrDefault;
end;

procedure TListVersionsResponse.SetMaxKeys(const Value: Integer);
begin
  FMaxKeys := Value;
end;

function TListVersionsResponse.IsSetMaxKeys: Boolean;
begin
  Result := FMaxKeys.HasValue;
end;

function TListVersionsResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TListVersionsResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TListVersionsResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TListVersionsResponse.GetNextKeyMarker: string;
begin
  Result := FNextKeyMarker.ValueOrDefault;
end;

procedure TListVersionsResponse.SetNextKeyMarker(const Value: string);
begin
  FNextKeyMarker := Value;
end;

function TListVersionsResponse.IsSetNextKeyMarker: Boolean;
begin
  Result := FNextKeyMarker.HasValue;
end;

function TListVersionsResponse.GetNextVersionIdMarker: string;
begin
  Result := FNextVersionIdMarker.ValueOrDefault;
end;

procedure TListVersionsResponse.SetNextVersionIdMarker(const Value: string);
begin
  FNextVersionIdMarker := Value;
end;

function TListVersionsResponse.IsSetNextVersionIdMarker: Boolean;
begin
  Result := FNextVersionIdMarker.HasValue;
end;

function TListVersionsResponse.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TListVersionsResponse.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TListVersionsResponse.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TListVersionsResponse.GetVersionIdMarker: string;
begin
  Result := FVersionIdMarker.ValueOrDefault;
end;

procedure TListVersionsResponse.SetVersionIdMarker(const Value: string);
begin
  FVersionIdMarker := Value;
end;

function TListVersionsResponse.IsSetVersionIdMarker: Boolean;
begin
  Result := FVersionIdMarker.HasValue;
end;

function TListVersionsResponse.GetVersions: TObjectList<TObjectVersion>;
begin
  Result := FVersions;
end;

procedure TListVersionsResponse.SetVersions(const Value: TObjectList<TObjectVersion>);
begin
  if FVersions <> Value then
  begin
    if not KeepVersions then
      FVersions.Free;
    FVersions := Value;
  end;
end;

function TListVersionsResponse.GetKeepVersions: Boolean;
begin
  Result := FKeepVersions;
end;

procedure TListVersionsResponse.SetKeepVersions(const Value: Boolean);
begin
  FKeepVersions := Value;
end;

function TListVersionsResponse.IsSetVersions: Boolean;
begin
  Result := (FVersions <> nil) and (FVersions.Count > 0);
end;

end.
