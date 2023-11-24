unit AWS.S3.Model.CompletedPart;

interface

uses
  Bcl.Types.Nullable;

type
  TCompletedPart = class;
  
  ICompletedPart = interface
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function Obj: TCompletedPart;
    function IsSetETag: Boolean;
    function IsSetPartNumber: Boolean;
    property ETag: string read GetETag write SetETag;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
  end;
  
  TCompletedPart = class
  strict private
    FETag: Nullable<string>;
    FPartNumber: Nullable<Integer>;
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
  strict protected
    function Obj: TCompletedPart;
  public
    function IsSetETag: Boolean;
    function IsSetPartNumber: Boolean;
    property ETag: string read GetETag write SetETag;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
  end;
  
implementation

{ TCompletedPart }

function TCompletedPart.Obj: TCompletedPart;
begin
  Result := Self;
end;

function TCompletedPart.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TCompletedPart.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TCompletedPart.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TCompletedPart.GetPartNumber: Integer;
begin
  Result := FPartNumber.ValueOrDefault;
end;

procedure TCompletedPart.SetPartNumber(const Value: Integer);
begin
  FPartNumber := Value;
end;

function TCompletedPart.IsSetPartNumber: Boolean;
begin
  Result := FPartNumber.HasValue;
end;

end.
