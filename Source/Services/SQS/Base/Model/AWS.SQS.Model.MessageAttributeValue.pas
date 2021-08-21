unit AWS.SQS.Model.MessageAttributeValue;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  System.Classes;

type
  TMessageAttributeValue = class;
  
  IMessageAttributeValue = interface
    function GetBinaryListValues: TObjectList<TBytesStream>;
    procedure SetBinaryListValues(const Value: TObjectList<TBytesStream>);
    function GetBinaryValue: TBytesStream;
    procedure SetBinaryValue(const Value: TBytesStream);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetStringListValues: TList<string>;
    procedure SetStringListValues(const Value: TList<string>);
    function GetStringValue: string;
    procedure SetStringValue(const Value: string);
    function Obj: TMessageAttributeValue;
    function IsSetBinaryListValues: Boolean;
    function IsSetBinaryValue: Boolean;
    function IsSetDataType: Boolean;
    function IsSetStringListValues: Boolean;
    function IsSetStringValue: Boolean;
    property BinaryListValues: TObjectList<TBytesStream> read GetBinaryListValues write SetBinaryListValues;
    property BinaryValue: TBytesStream read GetBinaryValue write SetBinaryValue;
    property DataType: string read GetDataType write SetDataType;
    property StringListValues: TList<string> read GetStringListValues write SetStringListValues;
    property StringValue: string read GetStringValue write SetStringValue;
  end;
  
  TMessageAttributeValue = class
  strict private
    FBinaryListValues: TObjectList<TBytesStream>;
    FBinaryValue: TBytesStream;
    FDataType: Nullable<string>;
    FStringListValues: TList<string>;
    FStringValue: Nullable<string>;
    function GetBinaryListValues: TObjectList<TBytesStream>;
    procedure SetBinaryListValues(const Value: TObjectList<TBytesStream>);
    function GetBinaryValue: TBytesStream;
    procedure SetBinaryValue(const Value: TBytesStream);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetStringListValues: TList<string>;
    procedure SetStringListValues(const Value: TList<string>);
    function GetStringValue: string;
    procedure SetStringValue(const Value: string);
  strict protected
    function Obj: TMessageAttributeValue;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBinaryListValues: Boolean;
    function IsSetBinaryValue: Boolean;
    function IsSetDataType: Boolean;
    function IsSetStringListValues: Boolean;
    function IsSetStringValue: Boolean;
    property BinaryListValues: TObjectList<TBytesStream> read GetBinaryListValues write SetBinaryListValues;
    property BinaryValue: TBytesStream read GetBinaryValue write SetBinaryValue;
    property DataType: string read GetDataType write SetDataType;
    property StringListValues: TList<string> read GetStringListValues write SetStringListValues;
    property StringValue: string read GetStringValue write SetStringValue;
  end;
  
implementation

{ TMessageAttributeValue }

constructor TMessageAttributeValue.Create;
begin
  inherited;
  FBinaryListValues := TObjectList<TBytesStream>.Create;
  FStringListValues := TList<string>.Create;
end;

destructor TMessageAttributeValue.Destroy;
begin
  StringListValues := nil;
  BinaryValue := nil;
  BinaryListValues := nil;
  inherited;
end;

function TMessageAttributeValue.Obj: TMessageAttributeValue;
begin
  Result := Self;
end;

function TMessageAttributeValue.GetBinaryListValues: TObjectList<TBytesStream>;
begin
  Result := FBinaryListValues;
end;

procedure TMessageAttributeValue.SetBinaryListValues(const Value: TObjectList<TBytesStream>);
begin
  if FBinaryListValues <> Value then
  begin
    FBinaryListValues.Free;
    FBinaryListValues := Value;
  end;
end;

function TMessageAttributeValue.IsSetBinaryListValues: Boolean;
begin
  Result := (FBinaryListValues <> nil) and (FBinaryListValues.Count > 0);
end;

function TMessageAttributeValue.GetBinaryValue: TBytesStream;
begin
  Result := FBinaryValue;
end;

procedure TMessageAttributeValue.SetBinaryValue(const Value: TBytesStream);
begin
  if FBinaryValue <> Value then
  begin
    FBinaryValue.Free;
    FBinaryValue := Value;
  end;
end;

function TMessageAttributeValue.IsSetBinaryValue: Boolean;
begin
  Result := FBinaryValue <> nil;
end;

function TMessageAttributeValue.GetDataType: string;
begin
  Result := FDataType.ValueOrDefault;
end;

procedure TMessageAttributeValue.SetDataType(const Value: string);
begin
  FDataType := Value;
end;

function TMessageAttributeValue.IsSetDataType: Boolean;
begin
  Result := FDataType.HasValue;
end;

function TMessageAttributeValue.GetStringListValues: TList<string>;
begin
  Result := FStringListValues;
end;

procedure TMessageAttributeValue.SetStringListValues(const Value: TList<string>);
begin
  if FStringListValues <> Value then
  begin
    FStringListValues.Free;
    FStringListValues := Value;
  end;
end;

function TMessageAttributeValue.IsSetStringListValues: Boolean;
begin
  Result := (FStringListValues <> nil) and (FStringListValues.Count > 0);
end;

function TMessageAttributeValue.GetStringValue: string;
begin
  Result := FStringValue.ValueOrDefault;
end;

procedure TMessageAttributeValue.SetStringValue(const Value: string);
begin
  FStringValue := Value;
end;

function TMessageAttributeValue.IsSetStringValue: Boolean;
begin
  Result := FStringValue.HasValue;
end;

end.
