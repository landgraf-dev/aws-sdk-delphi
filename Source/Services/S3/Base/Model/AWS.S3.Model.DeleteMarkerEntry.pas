unit AWS.S3.Model.DeleteMarkerEntry;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Owner;

type
  TDeleteMarkerEntry = class;
  
  IDeleteMarkerEntry = interface
    function GetIsLatest: Boolean;
    procedure SetIsLatest(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TDeleteMarkerEntry;
    function IsSetIsLatest: Boolean;
    function IsSetKey: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetOwner: Boolean;
    function IsSetVersionId: Boolean;
    property IsLatest: Boolean read GetIsLatest write SetIsLatest;
    property Key: string read GetKey write SetKey;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TDeleteMarkerEntry = class
  strict private
    FIsLatest: Nullable<Boolean>;
    FKey: Nullable<string>;
    FLastModified: Nullable<TDateTime>;
    FOwner: TOwner;
    FKeepOwner: Boolean;
    FVersionId: Nullable<string>;
    function GetIsLatest: Boolean;
    procedure SetIsLatest(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TDeleteMarkerEntry;
  public
    destructor Destroy; override;
    function IsSetIsLatest: Boolean;
    function IsSetKey: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetOwner: Boolean;
    function IsSetVersionId: Boolean;
    property IsLatest: Boolean read GetIsLatest write SetIsLatest;
    property Key: string read GetKey write SetKey;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TDeleteMarkerEntry }

destructor TDeleteMarkerEntry.Destroy;
begin
  Owner := nil;
  inherited;
end;

function TDeleteMarkerEntry.Obj: TDeleteMarkerEntry;
begin
  Result := Self;
end;

function TDeleteMarkerEntry.GetIsLatest: Boolean;
begin
  Result := FIsLatest.ValueOrDefault;
end;

procedure TDeleteMarkerEntry.SetIsLatest(const Value: Boolean);
begin
  FIsLatest := Value;
end;

function TDeleteMarkerEntry.IsSetIsLatest: Boolean;
begin
  Result := FIsLatest.HasValue;
end;

function TDeleteMarkerEntry.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TDeleteMarkerEntry.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TDeleteMarkerEntry.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TDeleteMarkerEntry.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TDeleteMarkerEntry.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TDeleteMarkerEntry.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TDeleteMarkerEntry.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TDeleteMarkerEntry.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TDeleteMarkerEntry.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TDeleteMarkerEntry.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TDeleteMarkerEntry.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

function TDeleteMarkerEntry.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TDeleteMarkerEntry.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TDeleteMarkerEntry.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
