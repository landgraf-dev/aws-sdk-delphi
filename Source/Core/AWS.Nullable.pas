unit AWS.Nullable;

{$I AWS.inc}

interface

uses
  System.SysUtils, System.TypInfo, Generics.Defaults;

type
  TNullRecord = record
  end;

  {$RTTI EXPLICIT FIELDS([vcPrivate])}
  Nullable<T> = record
  private
    FValue: T;
    FHasValue: Boolean;
    procedure Clear;
    class procedure CheckNullOperation(Left, Right: Nullable<T>); static;
    function GetIsNull: Boolean;
    function GetValue: T;
    procedure SetValue(const Value: T);
    function GetValueOrDefault: T;
    class function GetEmpty: Nullable<T>; static;
  public
    constructor Create(Value: T); overload;

    property HasValue: Boolean read FHasValue;
    property IsNull: Boolean read GetIsNull;
    property Value: T read GetValue write SetValue;
    property ValueOrDefault: T read GetValueOrDefault;

    class property Empty: Nullable<T> read GetEmpty;

    class operator Implicit(Value: TNullRecord): Nullable<T>;

    class operator Implicit(Value: T): Nullable<T>;
    class operator Implicit(Value: Nullable<T>): T;

    class operator Equal(Left, Right: Nullable<T>): Boolean;
    class operator NotEqual(Left, Right: Nullable<T>): Boolean;

    class operator GreaterThan(Left, Right: Nullable<T>): Boolean;
    class operator GreaterThanOrEqual(Left, Right: Nullable<T>): Boolean;

    class operator LessThan(Left, Right: Nullable<T>): Boolean;
    class operator LessThanOrEqual(Left, Right: Nullable<T>): Boolean;
  end;

  NullableString = Nullable<string>;
  NullableInteger = Nullable<Integer>;
  NullableBoolean = Nullable<Boolean>;
  NullableDouble = Nullable<Double>;
  NullableDateTime = Nullable<TDateTime>;
  NullableDate = Nullable<TDate>;
  NullableTime = Nullable<TTime>;
  NullableInt64 = Nullable<Int64>;
  NullableCurrency = Nullable<Currency>;
  NullableGuid = Nullable<TGUID>;
{$IFNDEF NEXTGEN}
  NullableWideString = Nullable<WideString>;
{$ENDIF}

  ENullValueException = class(Exception)
  public
    constructor Create;
  end;

  ENullConvertException = class(Exception)
  public
    constructor Create(ATypeInfo: PTypeInfo);
  end;

var
  SNull: TNullRecord;

implementation

{ ENullValueException }

constructor ENullValueException.Create;
begin
  inherited Create('Nullable: Cannot operate with SNull value.');
end;

{ ENullConvertException<T> }

constructor ENullConvertException.Create(ATypeInfo: PTypeInfo);
begin
  inherited Create('Nullable: Cannot convert SNull into ' + GetTypeName(ATypeInfo));;
end;

{ Nullable<T> }

class procedure Nullable<T>.CheckNullOperation(Left, Right: Nullable<T>);
begin
  if not Left.FHasValue or not Right.FHasValue then
    raise ENullValueException.Create;
end;

procedure Nullable<T>.Clear;
begin
  FHasValue := False;
  FValue := Default(T);
end;

constructor Nullable<T>.Create(Value: T);
begin
  FHasValue := True;
  FValue := Value;
end;

class operator Nullable<T>.Implicit(Value: T): Nullable<T>;
begin
  Result.FValue := Value;
  Result.FHasValue := True;
end;

class operator Nullable<T>.Implicit(Value: Nullable<T>): T;
begin
  Result := Value.GetValue;
end;

class operator Nullable<T>.Equal(Left, Right: Nullable<T>): Boolean;
begin
  if Left.FHasValue and Right.FHasValue then
    Result := TEqualityComparer<T>.Default.Equals(Left.FValue, Right.FValue)
  else
    Result := Left.FHasValue = Right.FHasValue;
end;

class function Nullable<T>.GetEmpty: Nullable<T>;
begin
  Result.Clear;
end;

function Nullable<T>.GetIsNull: Boolean;
begin
  Result := not FHasValue;
end;

function Nullable<T>.GetValue: T;
begin
  if not FHasValue then
    raise ENullConvertException.Create(TypeInfo(T));

  Result := FValue;
end;

function Nullable<T>.GetValueOrDefault: T;
begin
  if FHasValue then
    Result := FValue
  else
    Result := Default(T);
end;

class operator Nullable<T>.GreaterThan(Left, Right: Nullable<T>): Boolean;
begin
  CheckNullOperation(Left, Right);
  Result := TComparer<T>.Default.Compare(Left, Right) > 0;
end;

class operator Nullable<T>.GreaterThanOrEqual(Left, Right: Nullable<T>): Boolean;
begin
  CheckNullOperation(Left, Right);
  Result := TComparer<T>.Default.Compare(Left, Right) >= 0;
end;

class operator Nullable<T>.LessThanOrEqual(Left, Right: Nullable<T>): Boolean;
begin
  CheckNullOperation(Left, Right);
  Result := TComparer<T>.Default.Compare(Left, Right) <= 0;
end;

class operator Nullable<T>.LessThan(Left, Right: Nullable<T>): Boolean;
begin
  CheckNullOperation(Left, Right);
  Result := TComparer<T>.Default.Compare(Left, Right) < 0;
end;

class operator Nullable<T>.NotEqual(Left, Right: Nullable<T>): Boolean;
begin
  if Left.FHasValue and Right.FHasValue then
    Result := not TEqualityComparer<T>.Default.Equals(Left.FValue, Right.FValue)
  else
    Result := Left.FHasValue <> Right.FHasValue;
end;

procedure Nullable<T>.SetValue(const Value: T);
begin
  FValue := Value;
  FHasValue := True;
end;

class operator Nullable<T>.Implicit(Value: TNullRecord): Nullable<T>;
begin
  Result.FHasValue := False;
end;

end.
