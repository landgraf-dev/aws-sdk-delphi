unit AWS.S3.Model.ListObjectsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Model.ObjectTypes, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TListObjectsResponse = class;
  
  IListObjectsResponse = interface(IAmazonWebServiceResponse)
    function GetCommonPrefixes: TObjectList<TCommonPrefix>;
    procedure SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
    function GetKeepCommonPrefixes: Boolean;
    procedure SetKeepCommonPrefixes(const Value: Boolean);
    function GetContents: TObjectList<TObject>;
    procedure SetContents(const Value: TObjectList<TObject>);
    function GetKeepContents: Boolean;
    procedure SetKeepContents(const Value: Boolean);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetMarker: string;
    procedure SetMarker(const Value: string);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextMarker: string;
    procedure SetNextMarker(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function Obj: TListObjectsResponse;
    function IsSetCommonPrefixes: Boolean;
    function IsSetContents: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetMarker: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetName: Boolean;
    function IsSetNextMarker: Boolean;
    function IsSetPrefix: Boolean;
    property CommonPrefixes: TObjectList<TCommonPrefix> read GetCommonPrefixes write SetCommonPrefixes;
    property KeepCommonPrefixes: Boolean read GetKeepCommonPrefixes write SetKeepCommonPrefixes;
    property Contents: TObjectList<TObject> read GetContents write SetContents;
    property KeepContents: Boolean read GetKeepContents write SetKeepContents;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property Marker: string read GetMarker write SetMarker;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Name: string read GetName write SetName;
    property NextMarker: string read GetNextMarker write SetNextMarker;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
  TListObjectsResponse = class(TAmazonWebServiceResponse, IListObjectsResponse)
  strict private
    FCommonPrefixes: TObjectList<TCommonPrefix>;
    FKeepCommonPrefixes: Boolean;
    FContents: TObjectList<TObject>;
    FKeepContents: Boolean;
    FDelimiter: Nullable<string>;
    FEncodingType: Nullable<TEncodingType>;
    FIsTruncated: Nullable<Boolean>;
    FMarker: Nullable<string>;
    FMaxKeys: Nullable<Integer>;
    FName: Nullable<string>;
    FNextMarker: Nullable<string>;
    FPrefix: Nullable<string>;
    function GetCommonPrefixes: TObjectList<TCommonPrefix>;
    procedure SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
    function GetKeepCommonPrefixes: Boolean;
    procedure SetKeepCommonPrefixes(const Value: Boolean);
    function GetContents: TObjectList<TObject>;
    procedure SetContents(const Value: TObjectList<TObject>);
    function GetKeepContents: Boolean;
    procedure SetKeepContents(const Value: Boolean);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetMarker: string;
    procedure SetMarker(const Value: string);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextMarker: string;
    procedure SetNextMarker(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
  strict protected
    function Obj: TListObjectsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCommonPrefixes: Boolean;
    function IsSetContents: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetMarker: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetName: Boolean;
    function IsSetNextMarker: Boolean;
    function IsSetPrefix: Boolean;
    property CommonPrefixes: TObjectList<TCommonPrefix> read GetCommonPrefixes write SetCommonPrefixes;
    property KeepCommonPrefixes: Boolean read GetKeepCommonPrefixes write SetKeepCommonPrefixes;
    property Contents: TObjectList<TObject> read GetContents write SetContents;
    property KeepContents: Boolean read GetKeepContents write SetKeepContents;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property Marker: string read GetMarker write SetMarker;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Name: string read GetName write SetName;
    property NextMarker: string read GetNextMarker write SetNextMarker;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
implementation

{ TListObjectsResponse }

constructor TListObjectsResponse.Create;
begin
  inherited;
  FCommonPrefixes := TObjectList<TCommonPrefix>.Create;
  FContents := TObjectList<TObject>.Create;
end;

destructor TListObjectsResponse.Destroy;
begin
  Contents := nil;
  CommonPrefixes := nil;
  inherited;
end;

function TListObjectsResponse.Obj: TListObjectsResponse;
begin
  Result := Self;
end;

function TListObjectsResponse.GetCommonPrefixes: TObjectList<TCommonPrefix>;
begin
  Result := FCommonPrefixes;
end;

procedure TListObjectsResponse.SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
begin
  if FCommonPrefixes <> Value then
  begin
    if not KeepCommonPrefixes then
      FCommonPrefixes.Free;
    FCommonPrefixes := Value;
  end;
end;

function TListObjectsResponse.GetKeepCommonPrefixes: Boolean;
begin
  Result := FKeepCommonPrefixes;
end;

procedure TListObjectsResponse.SetKeepCommonPrefixes(const Value: Boolean);
begin
  FKeepCommonPrefixes := Value;
end;

function TListObjectsResponse.IsSetCommonPrefixes: Boolean;
begin
  Result := (FCommonPrefixes <> nil) and (FCommonPrefixes.Count > 0);
end;

function TListObjectsResponse.GetContents: TObjectList<TObject>;
begin
  Result := FContents;
end;

procedure TListObjectsResponse.SetContents(const Value: TObjectList<TObject>);
begin
  if FContents <> Value then
  begin
    if not KeepContents then
      FContents.Free;
    FContents := Value;
  end;
end;

function TListObjectsResponse.GetKeepContents: Boolean;
begin
  Result := FKeepContents;
end;

procedure TListObjectsResponse.SetKeepContents(const Value: Boolean);
begin
  FKeepContents := Value;
end;

function TListObjectsResponse.IsSetContents: Boolean;
begin
  Result := (FContents <> nil) and (FContents.Count > 0);
end;

function TListObjectsResponse.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TListObjectsResponse.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TListObjectsResponse.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TListObjectsResponse.GetEncodingType: TEncodingType;
begin
  Result := FEncodingType.ValueOrDefault;
end;

procedure TListObjectsResponse.SetEncodingType(const Value: TEncodingType);
begin
  FEncodingType := Value;
end;

function TListObjectsResponse.IsSetEncodingType: Boolean;
begin
  Result := FEncodingType.HasValue;
end;

function TListObjectsResponse.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListObjectsResponse.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListObjectsResponse.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListObjectsResponse.GetMarker: string;
begin
  Result := FMarker.ValueOrDefault;
end;

procedure TListObjectsResponse.SetMarker(const Value: string);
begin
  FMarker := Value;
end;

function TListObjectsResponse.IsSetMarker: Boolean;
begin
  Result := FMarker.HasValue;
end;

function TListObjectsResponse.GetMaxKeys: Integer;
begin
  Result := FMaxKeys.ValueOrDefault;
end;

procedure TListObjectsResponse.SetMaxKeys(const Value: Integer);
begin
  FMaxKeys := Value;
end;

function TListObjectsResponse.IsSetMaxKeys: Boolean;
begin
  Result := FMaxKeys.HasValue;
end;

function TListObjectsResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TListObjectsResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TListObjectsResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TListObjectsResponse.GetNextMarker: string;
begin
  Result := FNextMarker.ValueOrDefault;
end;

procedure TListObjectsResponse.SetNextMarker(const Value: string);
begin
  FNextMarker := Value;
end;

function TListObjectsResponse.IsSetNextMarker: Boolean;
begin
  Result := FNextMarker.HasValue;
end;

function TListObjectsResponse.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TListObjectsResponse.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TListObjectsResponse.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

end.
