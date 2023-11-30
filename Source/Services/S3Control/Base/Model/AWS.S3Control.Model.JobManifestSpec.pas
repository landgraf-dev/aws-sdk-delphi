unit AWS.S3Control.Model.JobManifestSpec;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.S3Control.Enums;

type
  TJobManifestSpec = class;
  
  IJobManifestSpec = interface
    function GetFields: TList<string>;
    procedure SetFields(const Value: TList<string>);
    function GetKeepFields: Boolean;
    procedure SetKeepFields(const Value: Boolean);
    function GetFormat: TJobManifestFormat;
    procedure SetFormat(const Value: TJobManifestFormat);
    function Obj: TJobManifestSpec;
    function IsSetFields: Boolean;
    function IsSetFormat: Boolean;
    property Fields: TList<string> read GetFields write SetFields;
    property KeepFields: Boolean read GetKeepFields write SetKeepFields;
    property Format: TJobManifestFormat read GetFormat write SetFormat;
  end;
  
  TJobManifestSpec = class
  strict private
    FFields: TList<string>;
    FKeepFields: Boolean;
    FFormat: Nullable<TJobManifestFormat>;
    function GetFields: TList<string>;
    procedure SetFields(const Value: TList<string>);
    function GetKeepFields: Boolean;
    procedure SetKeepFields(const Value: Boolean);
    function GetFormat: TJobManifestFormat;
    procedure SetFormat(const Value: TJobManifestFormat);
  strict protected
    function Obj: TJobManifestSpec;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFields: Boolean;
    function IsSetFormat: Boolean;
    property Fields: TList<string> read GetFields write SetFields;
    property KeepFields: Boolean read GetKeepFields write SetKeepFields;
    property Format: TJobManifestFormat read GetFormat write SetFormat;
  end;
  
implementation

{ TJobManifestSpec }

constructor TJobManifestSpec.Create;
begin
  inherited;
  FFields := TList<string>.Create;
end;

destructor TJobManifestSpec.Destroy;
begin
  Fields := nil;
  inherited;
end;

function TJobManifestSpec.Obj: TJobManifestSpec;
begin
  Result := Self;
end;

function TJobManifestSpec.GetFields: TList<string>;
begin
  Result := FFields;
end;

procedure TJobManifestSpec.SetFields(const Value: TList<string>);
begin
  if FFields <> Value then
  begin
    if not KeepFields then
      FFields.Free;
    FFields := Value;
  end;
end;

function TJobManifestSpec.GetKeepFields: Boolean;
begin
  Result := FKeepFields;
end;

procedure TJobManifestSpec.SetKeepFields(const Value: Boolean);
begin
  FKeepFields := Value;
end;

function TJobManifestSpec.IsSetFields: Boolean;
begin
  Result := (FFields <> nil) and (FFields.Count > 0);
end;

function TJobManifestSpec.GetFormat: TJobManifestFormat;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TJobManifestSpec.SetFormat(const Value: TJobManifestFormat);
begin
  FFormat := Value;
end;

function TJobManifestSpec.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

end.
