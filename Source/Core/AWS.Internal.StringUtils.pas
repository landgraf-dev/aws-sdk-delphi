unit AWS.Internal.StringUtils;

interface

uses
  Bcl.Types.Nullable, System.SysUtils, System.DateUtils,
  System.Classes;

type
  TStringUtils = class
  strict private
    class var FFormatSettings: TFormatSettings;
    class constructor Create;
  public
    class function FromString(const Value: string): string; static;
    class function FromStringWithSlashEncoding(const Value: string): string; static;
//    class function FromTMemoryStream(const Value: TMemoryStream): string; static;
    class function FromTBytesStream(const Value: TBytesStream): string; static;
    class function FromInteger(const Value: Integer): string; overload; static;
//    class function FromInteger(const Value: Nullable<Integer>): string; overload; static;
    class function FromInt64(const Value: Int64): string; static;
    class function FromBoolean(const Value: Boolean): string; static;
    class function FromDateTimeToISO8601(const Value: TDateTime): string; static;
    class function FromDateTimeToRFC822(const Value: TDateTime): string; static;
//    class function FromDateTimeToUnixTimestamp(const Value: TDateTime): string; static;
    class function FromDouble(const Value: Double): string; static;
//    class function FromDecimal(const Value: Double): string; static;
    class function Utf8ByteLength(const Value: string): Integer; static;
  end;

implementation

uses
  Bcl.Utils,
  AWS.SDKUtils;

{ TStringUtils }

class constructor TStringUtils.Create;
begin
  FFormatSettings := TFormatSettings.Create;
  FFormatSettings.DecimalSeparator := '.';
end;

class function TStringUtils.FromBoolean(const Value: Boolean): string;
begin
  if Value then
    Result := 'true'
  else
    Result := 'false';
end;

class function TStringUtils.FromDateTimeToISO8601(const Value: TDateTime): string;
begin
  Result := FormatDateTime(TAWSSDKUtils.ISO8601DateFormat, TTimeZone.Local.ToUniversalTime(Value));
end;

class function TStringUtils.FromDateTimeToRFC822(const Value: TDateTime): string;
begin
  Result := FormatDateTime(TAWSSDKUtils.RFC822DateFormat, TTimeZone.Local.ToUniversalTime(Value));
end;

class function TStringUtils.FromDouble(const Value: Double): string;
begin
  Result := FloatToStr(Value);
end;

class function TStringUtils.FromInt64(const Value: Int64): string;
begin
  Result := IntToStr(Value);
end;

class function TStringUtils.FromInteger(const Value: Integer): string;
begin
  Result := IntToStr(Value);
end;

class function TStringUtils.FromString(const Value: string): string;
begin
  Result := Value;
end;

class function TStringUtils.FromStringWithSlashEncoding(const Value: string): string;
begin
  Result := TAWSSDKUtils.UrlEncodeSlash(FromString(Value));
end;

class function TStringUtils.FromTBytesStream(const Value: TBytesStream): string;
begin
  Result := TBclUtils.EncodeBase64(Copy(Value.Bytes, 0, Value.Size));
end;

//class function TStringUtils.FromTMemoryStream(const Value: TMemoryStream): string;
//var
//  Bytes: TArray<Byte>;
//  BytesWritten: Integer;
//begin
//  SetLength(Bytes, Value.Size);
//  BytesWritten := Value.Write(Bytes[0], Value.Size);
//  SetLength(Bytes, BytesWritten);
//  Result := TEncoding.UTF8.GetString(Bytes);
//end;

class function TStringUtils.Utf8ByteLength(const Value: string): Integer;
begin
  Result := TEncoding.UTF8.GetByteCount(Value);
end;

end.
