unit AWS.SSM.Model.DocumentFilter;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDocumentFilter = class;
  
  IDocumentFilter = interface
    function GetKey: TDocumentFilterKey;
    procedure SetKey(const Value: TDocumentFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TDocumentFilter;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TDocumentFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TDocumentFilter = class
  strict private
    FKey: Nullable<TDocumentFilterKey>;
    FValue: Nullable<string>;
    function GetKey: TDocumentFilterKey;
    procedure SetKey(const Value: TDocumentFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TDocumentFilter;
  public
    constructor Create(const AKey: TDocumentFilterKey; const AValue: string); overload;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TDocumentFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TDocumentFilter }

function TDocumentFilter.Obj: TDocumentFilter;
begin
  Result := Self;
end;

constructor TDocumentFilter.Create(const AKey: TDocumentFilterKey; const AValue: string);
begin
  Create;
  Key := AKey;
  Value := AValue;
end;

function TDocumentFilter.GetKey: TDocumentFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TDocumentFilter.SetKey(const Value: TDocumentFilterKey);
begin
  FKey := Value;
end;

function TDocumentFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TDocumentFilter.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TDocumentFilter.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TDocumentFilter.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
