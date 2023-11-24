unit AWS.S3.Model.CopyObjectResult;

interface

uses
  Bcl.Types.Nullable;

type
  TCopyObjectResult = class;
  
  ICopyObjectResult = interface
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function Obj: TCopyObjectResult;
    function IsSetETag: Boolean;
    function IsSetLastModified: Boolean;
    property ETag: string read GetETag write SetETag;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
  end;
  
  TCopyObjectResult = class
  strict private
    FETag: Nullable<string>;
    FLastModified: Nullable<TDateTime>;
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
  strict protected
    function Obj: TCopyObjectResult;
  public
    function IsSetETag: Boolean;
    function IsSetLastModified: Boolean;
    property ETag: string read GetETag write SetETag;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
  end;
  
implementation

{ TCopyObjectResult }

function TCopyObjectResult.Obj: TCopyObjectResult;
begin
  Result := Self;
end;

function TCopyObjectResult.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TCopyObjectResult.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TCopyObjectResult.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TCopyObjectResult.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TCopyObjectResult.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TCopyObjectResult.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

end.
