unit AWS.S3Control.Model.JobManifestLocation;

interface

uses
  AWS.Nullable;

type
  TJobManifestLocation = class;
  
  IJobManifestLocation = interface
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetObjectArn: string;
    procedure SetObjectArn(const Value: string);
    function GetObjectVersionId: string;
    procedure SetObjectVersionId(const Value: string);
    function Obj: TJobManifestLocation;
    function IsSetETag: Boolean;
    function IsSetObjectArn: Boolean;
    function IsSetObjectVersionId: Boolean;
    property ETag: string read GetETag write SetETag;
    property ObjectArn: string read GetObjectArn write SetObjectArn;
    property ObjectVersionId: string read GetObjectVersionId write SetObjectVersionId;
  end;
  
  TJobManifestLocation = class
  strict private
    FETag: Nullable<string>;
    FObjectArn: Nullable<string>;
    FObjectVersionId: Nullable<string>;
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetObjectArn: string;
    procedure SetObjectArn(const Value: string);
    function GetObjectVersionId: string;
    procedure SetObjectVersionId(const Value: string);
  strict protected
    function Obj: TJobManifestLocation;
  public
    function IsSetETag: Boolean;
    function IsSetObjectArn: Boolean;
    function IsSetObjectVersionId: Boolean;
    property ETag: string read GetETag write SetETag;
    property ObjectArn: string read GetObjectArn write SetObjectArn;
    property ObjectVersionId: string read GetObjectVersionId write SetObjectVersionId;
  end;
  
implementation

{ TJobManifestLocation }

function TJobManifestLocation.Obj: TJobManifestLocation;
begin
  Result := Self;
end;

function TJobManifestLocation.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TJobManifestLocation.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TJobManifestLocation.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TJobManifestLocation.GetObjectArn: string;
begin
  Result := FObjectArn.ValueOrDefault;
end;

procedure TJobManifestLocation.SetObjectArn(const Value: string);
begin
  FObjectArn := Value;
end;

function TJobManifestLocation.IsSetObjectArn: Boolean;
begin
  Result := FObjectArn.HasValue;
end;

function TJobManifestLocation.GetObjectVersionId: string;
begin
  Result := FObjectVersionId.ValueOrDefault;
end;

procedure TJobManifestLocation.SetObjectVersionId(const Value: string);
begin
  FObjectVersionId := Value;
end;

function TJobManifestLocation.IsSetObjectVersionId: Boolean;
begin
  Result := FObjectVersionId.HasValue;
end;

end.
