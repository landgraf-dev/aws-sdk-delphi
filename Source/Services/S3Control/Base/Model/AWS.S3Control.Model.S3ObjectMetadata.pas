unit AWS.S3Control.Model.S3ObjectMetadata;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.S3Control.Enums;

type
  TS3ObjectMetadata = class;
  
  IS3ObjectMetadata = interface
    function GetCacheControl: string;
    procedure SetCacheControl(const Value: string);
    function GetContentDisposition: string;
    procedure SetContentDisposition(const Value: string);
    function GetContentEncoding: string;
    procedure SetContentEncoding(const Value: string);
    function GetContentLanguage: string;
    procedure SetContentLanguage(const Value: string);
    function GetContentLength: Int64;
    procedure SetContentLength(const Value: Int64);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetHttpExpiresDate: TDateTime;
    procedure SetHttpExpiresDate(const Value: TDateTime);
    function GetRequesterCharged: Boolean;
    procedure SetRequesterCharged(const Value: Boolean);
    function GetSSEAlgorithm: TS3SSEAlgorithm;
    procedure SetSSEAlgorithm(const Value: TS3SSEAlgorithm);
    function GetUserMetadata: TDictionary<string, string>;
    procedure SetUserMetadata(const Value: TDictionary<string, string>);
    function GetKeepUserMetadata: Boolean;
    procedure SetKeepUserMetadata(const Value: Boolean);
    function Obj: TS3ObjectMetadata;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentLength: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetContentType: Boolean;
    function IsSetHttpExpiresDate: Boolean;
    function IsSetRequesterCharged: Boolean;
    function IsSetSSEAlgorithm: Boolean;
    function IsSetUserMetadata: Boolean;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentLength: Int64 read GetContentLength write SetContentLength;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ContentType: string read GetContentType write SetContentType;
    property HttpExpiresDate: TDateTime read GetHttpExpiresDate write SetHttpExpiresDate;
    property RequesterCharged: Boolean read GetRequesterCharged write SetRequesterCharged;
    property SSEAlgorithm: TS3SSEAlgorithm read GetSSEAlgorithm write SetSSEAlgorithm;
    property UserMetadata: TDictionary<string, string> read GetUserMetadata write SetUserMetadata;
    property KeepUserMetadata: Boolean read GetKeepUserMetadata write SetKeepUserMetadata;
  end;
  
  TS3ObjectMetadata = class
  strict private
    FCacheControl: Nullable<string>;
    FContentDisposition: Nullable<string>;
    FContentEncoding: Nullable<string>;
    FContentLanguage: Nullable<string>;
    FContentLength: Nullable<Int64>;
    FContentMD5: Nullable<string>;
    FContentType: Nullable<string>;
    FHttpExpiresDate: Nullable<TDateTime>;
    FRequesterCharged: Nullable<Boolean>;
    FSSEAlgorithm: Nullable<TS3SSEAlgorithm>;
    FUserMetadata: TDictionary<string, string>;
    FKeepUserMetadata: Boolean;
    function GetCacheControl: string;
    procedure SetCacheControl(const Value: string);
    function GetContentDisposition: string;
    procedure SetContentDisposition(const Value: string);
    function GetContentEncoding: string;
    procedure SetContentEncoding(const Value: string);
    function GetContentLanguage: string;
    procedure SetContentLanguage(const Value: string);
    function GetContentLength: Int64;
    procedure SetContentLength(const Value: Int64);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetHttpExpiresDate: TDateTime;
    procedure SetHttpExpiresDate(const Value: TDateTime);
    function GetRequesterCharged: Boolean;
    procedure SetRequesterCharged(const Value: Boolean);
    function GetSSEAlgorithm: TS3SSEAlgorithm;
    procedure SetSSEAlgorithm(const Value: TS3SSEAlgorithm);
    function GetUserMetadata: TDictionary<string, string>;
    procedure SetUserMetadata(const Value: TDictionary<string, string>);
    function GetKeepUserMetadata: Boolean;
    procedure SetKeepUserMetadata(const Value: Boolean);
  strict protected
    function Obj: TS3ObjectMetadata;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentLength: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetContentType: Boolean;
    function IsSetHttpExpiresDate: Boolean;
    function IsSetRequesterCharged: Boolean;
    function IsSetSSEAlgorithm: Boolean;
    function IsSetUserMetadata: Boolean;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentLength: Int64 read GetContentLength write SetContentLength;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ContentType: string read GetContentType write SetContentType;
    property HttpExpiresDate: TDateTime read GetHttpExpiresDate write SetHttpExpiresDate;
    property RequesterCharged: Boolean read GetRequesterCharged write SetRequesterCharged;
    property SSEAlgorithm: TS3SSEAlgorithm read GetSSEAlgorithm write SetSSEAlgorithm;
    property UserMetadata: TDictionary<string, string> read GetUserMetadata write SetUserMetadata;
    property KeepUserMetadata: Boolean read GetKeepUserMetadata write SetKeepUserMetadata;
  end;
  
implementation

{ TS3ObjectMetadata }

constructor TS3ObjectMetadata.Create;
begin
  inherited;
  FUserMetadata := TDictionary<string, string>.Create;
end;

destructor TS3ObjectMetadata.Destroy;
begin
  UserMetadata := nil;
  inherited;
end;

function TS3ObjectMetadata.Obj: TS3ObjectMetadata;
begin
  Result := Self;
end;

function TS3ObjectMetadata.GetCacheControl: string;
begin
  Result := FCacheControl.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetCacheControl(const Value: string);
begin
  FCacheControl := Value;
end;

function TS3ObjectMetadata.IsSetCacheControl: Boolean;
begin
  Result := FCacheControl.HasValue;
end;

function TS3ObjectMetadata.GetContentDisposition: string;
begin
  Result := FContentDisposition.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetContentDisposition(const Value: string);
begin
  FContentDisposition := Value;
end;

function TS3ObjectMetadata.IsSetContentDisposition: Boolean;
begin
  Result := FContentDisposition.HasValue;
end;

function TS3ObjectMetadata.GetContentEncoding: string;
begin
  Result := FContentEncoding.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetContentEncoding(const Value: string);
begin
  FContentEncoding := Value;
end;

function TS3ObjectMetadata.IsSetContentEncoding: Boolean;
begin
  Result := FContentEncoding.HasValue;
end;

function TS3ObjectMetadata.GetContentLanguage: string;
begin
  Result := FContentLanguage.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetContentLanguage(const Value: string);
begin
  FContentLanguage := Value;
end;

function TS3ObjectMetadata.IsSetContentLanguage: Boolean;
begin
  Result := FContentLanguage.HasValue;
end;

function TS3ObjectMetadata.GetContentLength: Int64;
begin
  Result := FContentLength.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetContentLength(const Value: Int64);
begin
  FContentLength := Value;
end;

function TS3ObjectMetadata.IsSetContentLength: Boolean;
begin
  Result := FContentLength.HasValue;
end;

function TS3ObjectMetadata.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TS3ObjectMetadata.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TS3ObjectMetadata.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TS3ObjectMetadata.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TS3ObjectMetadata.GetHttpExpiresDate: TDateTime;
begin
  Result := FHttpExpiresDate.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetHttpExpiresDate(const Value: TDateTime);
begin
  FHttpExpiresDate := Value;
end;

function TS3ObjectMetadata.IsSetHttpExpiresDate: Boolean;
begin
  Result := FHttpExpiresDate.HasValue;
end;

function TS3ObjectMetadata.GetRequesterCharged: Boolean;
begin
  Result := FRequesterCharged.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetRequesterCharged(const Value: Boolean);
begin
  FRequesterCharged := Value;
end;

function TS3ObjectMetadata.IsSetRequesterCharged: Boolean;
begin
  Result := FRequesterCharged.HasValue;
end;

function TS3ObjectMetadata.GetSSEAlgorithm: TS3SSEAlgorithm;
begin
  Result := FSSEAlgorithm.ValueOrDefault;
end;

procedure TS3ObjectMetadata.SetSSEAlgorithm(const Value: TS3SSEAlgorithm);
begin
  FSSEAlgorithm := Value;
end;

function TS3ObjectMetadata.IsSetSSEAlgorithm: Boolean;
begin
  Result := FSSEAlgorithm.HasValue;
end;

function TS3ObjectMetadata.GetUserMetadata: TDictionary<string, string>;
begin
  Result := FUserMetadata;
end;

procedure TS3ObjectMetadata.SetUserMetadata(const Value: TDictionary<string, string>);
begin
  if FUserMetadata <> Value then
  begin
    if not KeepUserMetadata then
      FUserMetadata.Free;
    FUserMetadata := Value;
  end;
end;

function TS3ObjectMetadata.GetKeepUserMetadata: Boolean;
begin
  Result := FKeepUserMetadata;
end;

procedure TS3ObjectMetadata.SetKeepUserMetadata(const Value: Boolean);
begin
  FKeepUserMetadata := Value;
end;

function TS3ObjectMetadata.IsSetUserMetadata: Boolean;
begin
  Result := (FUserMetadata <> nil) and (FUserMetadata.Count > 0);
end;

end.
