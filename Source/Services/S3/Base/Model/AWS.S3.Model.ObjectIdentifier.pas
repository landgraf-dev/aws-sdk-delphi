unit AWS.S3.Model.ObjectIdentifier;

interface

uses
  AWS.Nullable;

type
  TObjectIdentifier = class;
  
  IObjectIdentifier = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TObjectIdentifier;
    function IsSetKey: Boolean;
    function IsSetVersionId: Boolean;
    property Key: string read GetKey write SetKey;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TObjectIdentifier = class
  strict private
    FKey: Nullable<string>;
    FVersionId: Nullable<string>;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TObjectIdentifier;
  public
    function IsSetKey: Boolean;
    function IsSetVersionId: Boolean;
    property Key: string read GetKey write SetKey;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TKeyVersion = TObjectIdentifier;
  
implementation

{ TObjectIdentifier }

function TObjectIdentifier.Obj: TObjectIdentifier;
begin
  Result := Self;
end;

function TObjectIdentifier.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TObjectIdentifier.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TObjectIdentifier.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TObjectIdentifier.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TObjectIdentifier.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TObjectIdentifier.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
