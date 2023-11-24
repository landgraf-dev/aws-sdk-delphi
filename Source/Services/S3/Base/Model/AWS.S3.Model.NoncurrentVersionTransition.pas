unit AWS.S3.Model.NoncurrentVersionTransition;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TNoncurrentVersionTransition = class;
  
  INoncurrentVersionTransition = interface
    function GetNoncurrentDays: Integer;
    procedure SetNoncurrentDays(const Value: Integer);
    function GetStorageClass: TTransitionStorageClass;
    procedure SetStorageClass(const Value: TTransitionStorageClass);
    function Obj: TNoncurrentVersionTransition;
    function IsSetNoncurrentDays: Boolean;
    function IsSetStorageClass: Boolean;
    property NoncurrentDays: Integer read GetNoncurrentDays write SetNoncurrentDays;
    property StorageClass: TTransitionStorageClass read GetStorageClass write SetStorageClass;
  end;
  
  TNoncurrentVersionTransition = class
  strict private
    FNoncurrentDays: Nullable<Integer>;
    FStorageClass: Nullable<TTransitionStorageClass>;
    function GetNoncurrentDays: Integer;
    procedure SetNoncurrentDays(const Value: Integer);
    function GetStorageClass: TTransitionStorageClass;
    procedure SetStorageClass(const Value: TTransitionStorageClass);
  strict protected
    function Obj: TNoncurrentVersionTransition;
  public
    function IsSetNoncurrentDays: Boolean;
    function IsSetStorageClass: Boolean;
    property NoncurrentDays: Integer read GetNoncurrentDays write SetNoncurrentDays;
    property StorageClass: TTransitionStorageClass read GetStorageClass write SetStorageClass;
  end;
  
implementation

{ TNoncurrentVersionTransition }

function TNoncurrentVersionTransition.Obj: TNoncurrentVersionTransition;
begin
  Result := Self;
end;

function TNoncurrentVersionTransition.GetNoncurrentDays: Integer;
begin
  Result := FNoncurrentDays.ValueOrDefault;
end;

procedure TNoncurrentVersionTransition.SetNoncurrentDays(const Value: Integer);
begin
  FNoncurrentDays := Value;
end;

function TNoncurrentVersionTransition.IsSetNoncurrentDays: Boolean;
begin
  Result := FNoncurrentDays.HasValue;
end;

function TNoncurrentVersionTransition.GetStorageClass: TTransitionStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TNoncurrentVersionTransition.SetStorageClass(const Value: TTransitionStorageClass);
begin
  FStorageClass := Value;
end;

function TNoncurrentVersionTransition.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

end.
