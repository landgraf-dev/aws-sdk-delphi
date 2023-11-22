unit AWS.S3Control.Model.S3SetObjectAclOperation;

interface

uses
  AWS.S3Control.Model.S3AccessControlPolicy;

type
  TS3SetObjectAclOperation = class;
  
  IS3SetObjectAclOperation = interface
    function GetAccessControlPolicy: TS3AccessControlPolicy;
    procedure SetAccessControlPolicy(const Value: TS3AccessControlPolicy);
    function GetKeepAccessControlPolicy: Boolean;
    procedure SetKeepAccessControlPolicy(const Value: Boolean);
    function Obj: TS3SetObjectAclOperation;
    function IsSetAccessControlPolicy: Boolean;
    property AccessControlPolicy: TS3AccessControlPolicy read GetAccessControlPolicy write SetAccessControlPolicy;
    property KeepAccessControlPolicy: Boolean read GetKeepAccessControlPolicy write SetKeepAccessControlPolicy;
  end;
  
  TS3SetObjectAclOperation = class
  strict private
    FAccessControlPolicy: TS3AccessControlPolicy;
    FKeepAccessControlPolicy: Boolean;
    function GetAccessControlPolicy: TS3AccessControlPolicy;
    procedure SetAccessControlPolicy(const Value: TS3AccessControlPolicy);
    function GetKeepAccessControlPolicy: Boolean;
    procedure SetKeepAccessControlPolicy(const Value: Boolean);
  strict protected
    function Obj: TS3SetObjectAclOperation;
  public
    destructor Destroy; override;
    function IsSetAccessControlPolicy: Boolean;
    property AccessControlPolicy: TS3AccessControlPolicy read GetAccessControlPolicy write SetAccessControlPolicy;
    property KeepAccessControlPolicy: Boolean read GetKeepAccessControlPolicy write SetKeepAccessControlPolicy;
  end;
  
implementation

{ TS3SetObjectAclOperation }

destructor TS3SetObjectAclOperation.Destroy;
begin
  AccessControlPolicy := nil;
  inherited;
end;

function TS3SetObjectAclOperation.Obj: TS3SetObjectAclOperation;
begin
  Result := Self;
end;

function TS3SetObjectAclOperation.GetAccessControlPolicy: TS3AccessControlPolicy;
begin
  Result := FAccessControlPolicy;
end;

procedure TS3SetObjectAclOperation.SetAccessControlPolicy(const Value: TS3AccessControlPolicy);
begin
  if FAccessControlPolicy <> Value then
  begin
    if not KeepAccessControlPolicy then
      FAccessControlPolicy.Free;
    FAccessControlPolicy := Value;
  end;
end;

function TS3SetObjectAclOperation.GetKeepAccessControlPolicy: Boolean;
begin
  Result := FKeepAccessControlPolicy;
end;

procedure TS3SetObjectAclOperation.SetKeepAccessControlPolicy(const Value: Boolean);
begin
  FKeepAccessControlPolicy := Value;
end;

function TS3SetObjectAclOperation.IsSetAccessControlPolicy: Boolean;
begin
  Result := FAccessControlPolicy <> nil;
end;

end.
