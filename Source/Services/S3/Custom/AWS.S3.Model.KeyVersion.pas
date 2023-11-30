unit AWS.S3.Model.KeyVersion;

interface

uses
  Bcl.Types.Nullable;

type
  TKeyVersion = class
  private
    FKey: Nullable<string>;
    FVersionId: Nullable<string>;
    function GetKey: string;
    function GetVersionId: string;
    procedure SetKey(const Value: string);
    procedure SetVersionId(const Value: string);
  public
    constructor Create(const AKey, AVersionId: string);
    function IsSetKey: Boolean;
    function IsSetVersionId: Boolean;
    property Key: string read GetKey write SetKey;
    property VersionId: string read GetVersionId write SetVersionId;
  end;

implementation

{ TKeyVersion }

constructor TKeyVersion.Create(const AKey, AVersionId: string);
begin
  FKey := AKey;
  FVersionId := AVersionId;
end;

function TKeyVersion.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

function TKeyVersion.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

function TKeyVersion.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TKeyVersion.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

procedure TKeyVersion.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TKeyVersion.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

end.
