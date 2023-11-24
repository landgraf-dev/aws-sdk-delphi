unit AWS.S3.Model.Part;

interface

uses
  Bcl.Types.Nullable;

type
  TPart = class;
  
  IPart = interface
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function GetSize: Integer;
    procedure SetSize(const Value: Integer);
    function Obj: TPart;
    function IsSetETag: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetSize: Boolean;
    property ETag: string read GetETag write SetETag;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property Size: Integer read GetSize write SetSize;
  end;
  
  TPart = class
  strict private
    FETag: Nullable<string>;
    FLastModified: Nullable<TDateTime>;
    FPartNumber: Nullable<Integer>;
    FSize: Nullable<Integer>;
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function GetSize: Integer;
    procedure SetSize(const Value: Integer);
  strict protected
    function Obj: TPart;
  public
    function IsSetETag: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetSize: Boolean;
    property ETag: string read GetETag write SetETag;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property Size: Integer read GetSize write SetSize;
  end;
  
implementation

{ TPart }

function TPart.Obj: TPart;
begin
  Result := Self;
end;

function TPart.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TPart.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TPart.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TPart.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TPart.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TPart.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TPart.GetPartNumber: Integer;
begin
  Result := FPartNumber.ValueOrDefault;
end;

procedure TPart.SetPartNumber(const Value: Integer);
begin
  FPartNumber := Value;
end;

function TPart.IsSetPartNumber: Boolean;
begin
  Result := FPartNumber.HasValue;
end;

function TPart.GetSize: Integer;
begin
  Result := FSize.ValueOrDefault;
end;

procedure TPart.SetSize(const Value: Integer);
begin
  FSize := Value;
end;

function TPart.IsSetSize: Boolean;
begin
  Result := FSize.HasValue;
end;

end.
