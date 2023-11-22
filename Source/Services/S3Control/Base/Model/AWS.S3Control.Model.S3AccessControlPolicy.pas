unit AWS.S3Control.Model.S3AccessControlPolicy;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.S3AccessControlList, 
  AWS.S3Control.Enums;

type
  TS3AccessControlPolicy = class;
  
  IS3AccessControlPolicy = interface
    function GetAccessControlList: TS3AccessControlList;
    procedure SetAccessControlList(const Value: TS3AccessControlList);
    function GetKeepAccessControlList: Boolean;
    procedure SetKeepAccessControlList(const Value: Boolean);
    function GetCannedAccessControlList: TS3CannedAccessControlList;
    procedure SetCannedAccessControlList(const Value: TS3CannedAccessControlList);
    function Obj: TS3AccessControlPolicy;
    function IsSetAccessControlList: Boolean;
    function IsSetCannedAccessControlList: Boolean;
    property AccessControlList: TS3AccessControlList read GetAccessControlList write SetAccessControlList;
    property KeepAccessControlList: Boolean read GetKeepAccessControlList write SetKeepAccessControlList;
    property CannedAccessControlList: TS3CannedAccessControlList read GetCannedAccessControlList write SetCannedAccessControlList;
  end;
  
  TS3AccessControlPolicy = class
  strict private
    FAccessControlList: TS3AccessControlList;
    FKeepAccessControlList: Boolean;
    FCannedAccessControlList: Nullable<TS3CannedAccessControlList>;
    function GetAccessControlList: TS3AccessControlList;
    procedure SetAccessControlList(const Value: TS3AccessControlList);
    function GetKeepAccessControlList: Boolean;
    procedure SetKeepAccessControlList(const Value: Boolean);
    function GetCannedAccessControlList: TS3CannedAccessControlList;
    procedure SetCannedAccessControlList(const Value: TS3CannedAccessControlList);
  strict protected
    function Obj: TS3AccessControlPolicy;
  public
    destructor Destroy; override;
    function IsSetAccessControlList: Boolean;
    function IsSetCannedAccessControlList: Boolean;
    property AccessControlList: TS3AccessControlList read GetAccessControlList write SetAccessControlList;
    property KeepAccessControlList: Boolean read GetKeepAccessControlList write SetKeepAccessControlList;
    property CannedAccessControlList: TS3CannedAccessControlList read GetCannedAccessControlList write SetCannedAccessControlList;
  end;
  
implementation

{ TS3AccessControlPolicy }

destructor TS3AccessControlPolicy.Destroy;
begin
  AccessControlList := nil;
  inherited;
end;

function TS3AccessControlPolicy.Obj: TS3AccessControlPolicy;
begin
  Result := Self;
end;

function TS3AccessControlPolicy.GetAccessControlList: TS3AccessControlList;
begin
  Result := FAccessControlList;
end;

procedure TS3AccessControlPolicy.SetAccessControlList(const Value: TS3AccessControlList);
begin
  if FAccessControlList <> Value then
  begin
    if not KeepAccessControlList then
      FAccessControlList.Free;
    FAccessControlList := Value;
  end;
end;

function TS3AccessControlPolicy.GetKeepAccessControlList: Boolean;
begin
  Result := FKeepAccessControlList;
end;

procedure TS3AccessControlPolicy.SetKeepAccessControlList(const Value: Boolean);
begin
  FKeepAccessControlList := Value;
end;

function TS3AccessControlPolicy.IsSetAccessControlList: Boolean;
begin
  Result := FAccessControlList <> nil;
end;

function TS3AccessControlPolicy.GetCannedAccessControlList: TS3CannedAccessControlList;
begin
  Result := FCannedAccessControlList.ValueOrDefault;
end;

procedure TS3AccessControlPolicy.SetCannedAccessControlList(const Value: TS3CannedAccessControlList);
begin
  FCannedAccessControlList := Value;
end;

function TS3AccessControlPolicy.IsSetCannedAccessControlList: Boolean;
begin
  Result := FCannedAccessControlList.HasValue;
end;

end.
