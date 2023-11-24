unit AWS.S3.Model.DeletedObject;

interface

uses
  Bcl.Types.Nullable;

type
  TDeletedObject = class;
  
  IDeletedObject = interface
    function GetDeleteMarker: Boolean;
    procedure SetDeleteMarker(const Value: Boolean);
    function GetDeleteMarkerVersionId: string;
    procedure SetDeleteMarkerVersionId(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TDeletedObject;
    function IsSetDeleteMarker: Boolean;
    function IsSetDeleteMarkerVersionId: Boolean;
    function IsSetKey: Boolean;
    function IsSetVersionId: Boolean;
    property DeleteMarker: Boolean read GetDeleteMarker write SetDeleteMarker;
    property DeleteMarkerVersionId: string read GetDeleteMarkerVersionId write SetDeleteMarkerVersionId;
    property Key: string read GetKey write SetKey;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TDeletedObject = class
  strict private
    FDeleteMarker: Nullable<Boolean>;
    FDeleteMarkerVersionId: Nullable<string>;
    FKey: Nullable<string>;
    FVersionId: Nullable<string>;
    function GetDeleteMarker: Boolean;
    procedure SetDeleteMarker(const Value: Boolean);
    function GetDeleteMarkerVersionId: string;
    procedure SetDeleteMarkerVersionId(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TDeletedObject;
  public
    function IsSetDeleteMarker: Boolean;
    function IsSetDeleteMarkerVersionId: Boolean;
    function IsSetKey: Boolean;
    function IsSetVersionId: Boolean;
    property DeleteMarker: Boolean read GetDeleteMarker write SetDeleteMarker;
    property DeleteMarkerVersionId: string read GetDeleteMarkerVersionId write SetDeleteMarkerVersionId;
    property Key: string read GetKey write SetKey;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TDeletedObject }

function TDeletedObject.Obj: TDeletedObject;
begin
  Result := Self;
end;

function TDeletedObject.GetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.ValueOrDefault;
end;

procedure TDeletedObject.SetDeleteMarker(const Value: Boolean);
begin
  FDeleteMarker := Value;
end;

function TDeletedObject.IsSetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.HasValue;
end;

function TDeletedObject.GetDeleteMarkerVersionId: string;
begin
  Result := FDeleteMarkerVersionId.ValueOrDefault;
end;

procedure TDeletedObject.SetDeleteMarkerVersionId(const Value: string);
begin
  FDeleteMarkerVersionId := Value;
end;

function TDeletedObject.IsSetDeleteMarkerVersionId: Boolean;
begin
  Result := FDeleteMarkerVersionId.HasValue;
end;

function TDeletedObject.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TDeletedObject.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TDeletedObject.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TDeletedObject.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TDeletedObject.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TDeletedObject.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
