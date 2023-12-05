unit AWS.S3.Model.InvalidObjectStateException;

interface

uses
  AWS.S3.Exception, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  EInvalidObjectStateException = class(EAmazonS3Exception)
  strict private
    FAccessTier: Nullable<TIntelligentTieringAccessTier>;
    FStorageClass: Nullable<TStorageClass>;
    function GetAccessTier: TIntelligentTieringAccessTier;
    procedure SetAccessTier(const Value: TIntelligentTieringAccessTier);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
  public
    function IsSetAccessTier: Boolean;
    function IsSetStorageClass: Boolean;
    property AccessTier: TIntelligentTieringAccessTier read GetAccessTier write SetAccessTier;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
  end;
  
implementation

{ EInvalidObjectStateException }

function EInvalidObjectStateException.GetAccessTier: TIntelligentTieringAccessTier;
begin
  Result := FAccessTier.ValueOrDefault;
end;

procedure EInvalidObjectStateException.SetAccessTier(const Value: TIntelligentTieringAccessTier);
begin
  FAccessTier := Value;
end;

function EInvalidObjectStateException.IsSetAccessTier: Boolean;
begin
  Result := FAccessTier.HasValue;
end;

function EInvalidObjectStateException.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure EInvalidObjectStateException.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function EInvalidObjectStateException.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

end.
