unit AWS.SQS.Model.MessageSystemAttributeValue;

interface

uses
  System.Generics.Collections, 
  System.Classes, 
  AWS.Nullable;

type
  TMessageSystemAttributeValue = class;
  
  IMessageSystemAttributeValue = interface
    function GetBinaryListValues: TObjectList<TBytesStream>;
    procedure SetBinaryListValues(const Value: TObjectList<TBytesStream>);
    function GetKeepBinaryListValues: Boolean;
    procedure SetKeepBinaryListValues(const Value: Boolean);
    function GetBinaryValue: TBytesStream;
    procedure SetBinaryValue(const Value: TBytesStream);
    function GetKeepBinaryValue: Boolean;
    procedure SetKeepBinaryValue(const Value: Boolean);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetStringListValues: TList<string>;
    procedure SetStringListValues(const Value: TList<string>);
    function GetKeepStringListValues: Boolean;
    procedure SetKeepStringListValues(const Value: Boolean);
    function GetStringValue: string;
    procedure SetStringValue(const Value: string);
    function Obj: TMessageSystemAttributeValue;
    function IsSetBinaryListValues: Boolean;
    function IsSetBinaryValue: Boolean;
    function IsSetDataType: Boolean;
    function IsSetStringListValues: Boolean;
    function IsSetStringValue: Boolean;
    property BinaryListValues: TObjectList<TBytesStream> read GetBinaryListValues write SetBinaryListValues;
    property KeepBinaryListValues: Boolean read GetKeepBinaryListValues write SetKeepBinaryListValues;
    property BinaryValue: TBytesStream read GetBinaryValue write SetBinaryValue;
    property KeepBinaryValue: Boolean read GetKeepBinaryValue write SetKeepBinaryValue;
    property DataType: string read GetDataType write SetDataType;
    property StringListValues: TList<string> read GetStringListValues write SetStringListValues;
    property KeepStringListValues: Boolean read GetKeepStringListValues write SetKeepStringListValues;
    property StringValue: string read GetStringValue write SetStringValue;
  end;
  
  TMessageSystemAttributeValue = class
  strict private
    FBinaryListValues: TObjectList<TBytesStream>;
    FKeepBinaryListValues: Boolean;
    FBinaryValue: TBytesStream;
    FKeepBinaryValue: Boolean;
    FDataType: Nullable<string>;
    FStringListValues: TList<string>;
    FKeepStringListValues: Boolean;
    FStringValue: Nullable<string>;
    function GetBinaryListValues: TObjectList<TBytesStream>;
    procedure SetBinaryListValues(const Value: TObjectList<TBytesStream>);
    function GetKeepBinaryListValues: Boolean;
    procedure SetKeepBinaryListValues(const Value: Boolean);
    function GetBinaryValue: TBytesStream;
    procedure SetBinaryValue(const Value: TBytesStream);
    function GetKeepBinaryValue: Boolean;
    procedure SetKeepBinaryValue(const Value: Boolean);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetStringListValues: TList<string>;
    procedure SetStringListValues(const Value: TList<string>);
    function GetKeepStringListValues: Boolean;
    procedure SetKeepStringListValues(const Value: Boolean);
    function GetStringValue: string;
    procedure SetStringValue(const Value: string);
  strict protected
    function Obj: TMessageSystemAttributeValue;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBinaryListValues: Boolean;
    function IsSetBinaryValue: Boolean;
    function IsSetDataType: Boolean;
    function IsSetStringListValues: Boolean;
    function IsSetStringValue: Boolean;
    property BinaryListValues: TObjectList<TBytesStream> read GetBinaryListValues write SetBinaryListValues;
    property KeepBinaryListValues: Boolean read GetKeepBinaryListValues write SetKeepBinaryListValues;
    property BinaryValue: TBytesStream read GetBinaryValue write SetBinaryValue;
    property KeepBinaryValue: Boolean read GetKeepBinaryValue write SetKeepBinaryValue;
    property DataType: string read GetDataType write SetDataType;
    property StringListValues: TList<string> read GetStringListValues write SetStringListValues;
    property KeepStringListValues: Boolean read GetKeepStringListValues write SetKeepStringListValues;
    property StringValue: string read GetStringValue write SetStringValue;
  end;
  
implementation

{ TMessageSystemAttributeValue }

constructor TMessageSystemAttributeValue.Create;
begin
  inherited;
  FBinaryListValues := TObjectList<TBytesStream>.Create;
  FStringListValues := TList<string>.Create;
end;

destructor TMessageSystemAttributeValue.Destroy;
begin
  StringListValues := nil;
  BinaryValue := nil;
  BinaryListValues := nil;
  inherited;
end;

function TMessageSystemAttributeValue.Obj: TMessageSystemAttributeValue;
begin
  Result := Self;
end;

function TMessageSystemAttributeValue.GetBinaryListValues: TObjectList<TBytesStream>;
begin
  Result := FBinaryListValues;
end;

procedure TMessageSystemAttributeValue.SetBinaryListValues(const Value: TObjectList<TBytesStream>);
begin
  if FBinaryListValues <> Value then
  begin
    if not KeepBinaryListValues then
      FBinaryListValues.Free;
    FBinaryListValues := Value;
  end;
end;

function TMessageSystemAttributeValue.GetKeepBinaryListValues: Boolean;
begin
  Result := FKeepBinaryListValues;
end;

procedure TMessageSystemAttributeValue.SetKeepBinaryListValues(const Value: Boolean);
begin
  FKeepBinaryListValues := Value;
end;

function TMessageSystemAttributeValue.IsSetBinaryListValues: Boolean;
begin
  Result := (FBinaryListValues <> nil) and (FBinaryListValues.Count > 0);
end;

function TMessageSystemAttributeValue.GetBinaryValue: TBytesStream;
begin
  Result := FBinaryValue;
end;

procedure TMessageSystemAttributeValue.SetBinaryValue(const Value: TBytesStream);
begin
  if FBinaryValue <> Value then
  begin
    if not KeepBinaryValue then
      FBinaryValue.Free;
    FBinaryValue := Value;
  end;
end;

function TMessageSystemAttributeValue.GetKeepBinaryValue: Boolean;
begin
  Result := FKeepBinaryValue;
end;

procedure TMessageSystemAttributeValue.SetKeepBinaryValue(const Value: Boolean);
begin
  FKeepBinaryValue := Value;
end;

function TMessageSystemAttributeValue.IsSetBinaryValue: Boolean;
begin
  Result := FBinaryValue <> nil;
end;

function TMessageSystemAttributeValue.GetDataType: string;
begin
  Result := FDataType.ValueOrDefault;
end;

procedure TMessageSystemAttributeValue.SetDataType(const Value: string);
begin
  FDataType := Value;
end;

function TMessageSystemAttributeValue.IsSetDataType: Boolean;
begin
  Result := FDataType.HasValue;
end;

function TMessageSystemAttributeValue.GetStringListValues: TList<string>;
begin
  Result := FStringListValues;
end;

procedure TMessageSystemAttributeValue.SetStringListValues(const Value: TList<string>);
begin
  if FStringListValues <> Value then
  begin
    if not KeepStringListValues then
      FStringListValues.Free;
    FStringListValues := Value;
  end;
end;

function TMessageSystemAttributeValue.GetKeepStringListValues: Boolean;
begin
  Result := FKeepStringListValues;
end;

procedure TMessageSystemAttributeValue.SetKeepStringListValues(const Value: Boolean);
begin
  FKeepStringListValues := Value;
end;

function TMessageSystemAttributeValue.IsSetStringListValues: Boolean;
begin
  Result := (FStringListValues <> nil) and (FStringListValues.Count > 0);
end;

function TMessageSystemAttributeValue.GetStringValue: string;
begin
  Result := FStringValue.ValueOrDefault;
end;

procedure TMessageSystemAttributeValue.SetStringValue(const Value: string);
begin
  FStringValue := Value;
end;

function TMessageSystemAttributeValue.IsSetStringValue: Boolean;
begin
  Result := FStringValue.HasValue;
end;

end.
