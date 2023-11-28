unit AWS.S3.Model.ByteRange;

interface

uses
  System.SysUtils;

type
  TByteRange = class
  strict private
    FStart: Int64;
    FEnd: Int64;
    FFormattedByteRange: string;
    function GetFormattedByteRange: string;
    procedure SetFormattedByteRange(const Value: string);
  public
    constructor Create(const AStart, AEnd: Int64); overload;
    constructor Create(const AByteRangeValue: string); overload;

    property Start: Int64 read FStart write FStart;
    property &End: Int64 read FEnd write FEnd;
    property FormattedByteRange: string read GetFormattedByteRange write SetFormattedByteRange;
  end;

implementation

{ TByteRange }

constructor TByteRange.Create(const AByteRangeValue: string);
begin
  FFormattedByteRange := AByteRangeValue;
end;

function TByteRange.GetFormattedByteRange: string;
begin
  if FFormattedByteRange <> '' then
    Result := FFormattedByteRange
  else
    Result := Format('bytes=%d-%d', [FStart, FEnd]);
end;

procedure TByteRange.SetFormattedByteRange(const Value: string);
begin
  FFormattedByteRange := Value;
end;

constructor TByteRange.Create(const AStart, AEnd: Int64);
begin
  FStart := AStart;
  FEnd := AEnd;
end;

end.
