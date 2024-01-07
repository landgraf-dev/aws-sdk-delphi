unit AWS.S3.Model.CopyPartResult;

interface

uses
  AWS.Nullable;

type
  TCopyPartResult = class;
  
  ICopyPartResult = interface
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function Obj: TCopyPartResult;
    function IsSetETag: Boolean;
    function IsSetLastModified: Boolean;
    property ETag: string read GetETag write SetETag;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
  end;
  
  TCopyPartResult = class
  strict private
    FETag: Nullable<string>;
    FLastModified: Nullable<TDateTime>;
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
  strict protected
    function Obj: TCopyPartResult;
  public
    function IsSetETag: Boolean;
    function IsSetLastModified: Boolean;
    property ETag: string read GetETag write SetETag;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
  end;
  
implementation

{ TCopyPartResult }

function TCopyPartResult.Obj: TCopyPartResult;
begin
  Result := Self;
end;

function TCopyPartResult.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TCopyPartResult.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TCopyPartResult.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TCopyPartResult.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TCopyPartResult.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TCopyPartResult.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

end.
