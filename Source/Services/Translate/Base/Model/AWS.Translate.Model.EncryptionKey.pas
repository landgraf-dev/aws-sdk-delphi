unit AWS.Translate.Model.EncryptionKey;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Translate.Enums;

type
  TEncryptionKey = class;
  
  IEncryptionKey = interface
    function GetId: string;
    procedure SetId(const Value: string);
    function GetType: TEncryptionKeyType;
    procedure SetType(const Value: TEncryptionKeyType);
    function Obj: TEncryptionKey;
    function IsSetId: Boolean;
    function IsSetType: Boolean;
    property Id: string read GetId write SetId;
    property &Type: TEncryptionKeyType read GetType write SetType;
  end;
  
  TEncryptionKey = class
  strict private
    FId: Nullable<string>;
    FType: Nullable<TEncryptionKeyType>;
    function GetId: string;
    procedure SetId(const Value: string);
    function GetType: TEncryptionKeyType;
    procedure SetType(const Value: TEncryptionKeyType);
  strict protected
    function Obj: TEncryptionKey;
  public
    function IsSetId: Boolean;
    function IsSetType: Boolean;
    property Id: string read GetId write SetId;
    property &Type: TEncryptionKeyType read GetType write SetType;
  end;
  
implementation

{ TEncryptionKey }

function TEncryptionKey.Obj: TEncryptionKey;
begin
  Result := Self;
end;

function TEncryptionKey.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TEncryptionKey.SetId(const Value: string);
begin
  FId := Value;
end;

function TEncryptionKey.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TEncryptionKey.GetType: TEncryptionKeyType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TEncryptionKey.SetType(const Value: TEncryptionKeyType);
begin
  FType := Value;
end;

function TEncryptionKey.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
