unit AWS.S3Control.Model.S3SetObjectLegalHoldOperation;

interface

uses
  AWS.S3Control.Model.S3ObjectLockLegalHold;

type
  TS3SetObjectLegalHoldOperation = class;
  
  IS3SetObjectLegalHoldOperation = interface
    function GetLegalHold: TS3ObjectLockLegalHold;
    procedure SetLegalHold(const Value: TS3ObjectLockLegalHold);
    function GetKeepLegalHold: Boolean;
    procedure SetKeepLegalHold(const Value: Boolean);
    function Obj: TS3SetObjectLegalHoldOperation;
    function IsSetLegalHold: Boolean;
    property LegalHold: TS3ObjectLockLegalHold read GetLegalHold write SetLegalHold;
    property KeepLegalHold: Boolean read GetKeepLegalHold write SetKeepLegalHold;
  end;
  
  TS3SetObjectLegalHoldOperation = class
  strict private
    FLegalHold: TS3ObjectLockLegalHold;
    FKeepLegalHold: Boolean;
    function GetLegalHold: TS3ObjectLockLegalHold;
    procedure SetLegalHold(const Value: TS3ObjectLockLegalHold);
    function GetKeepLegalHold: Boolean;
    procedure SetKeepLegalHold(const Value: Boolean);
  strict protected
    function Obj: TS3SetObjectLegalHoldOperation;
  public
    destructor Destroy; override;
    function IsSetLegalHold: Boolean;
    property LegalHold: TS3ObjectLockLegalHold read GetLegalHold write SetLegalHold;
    property KeepLegalHold: Boolean read GetKeepLegalHold write SetKeepLegalHold;
  end;
  
implementation

{ TS3SetObjectLegalHoldOperation }

destructor TS3SetObjectLegalHoldOperation.Destroy;
begin
  LegalHold := nil;
  inherited;
end;

function TS3SetObjectLegalHoldOperation.Obj: TS3SetObjectLegalHoldOperation;
begin
  Result := Self;
end;

function TS3SetObjectLegalHoldOperation.GetLegalHold: TS3ObjectLockLegalHold;
begin
  Result := FLegalHold;
end;

procedure TS3SetObjectLegalHoldOperation.SetLegalHold(const Value: TS3ObjectLockLegalHold);
begin
  if FLegalHold <> Value then
  begin
    if not KeepLegalHold then
      FLegalHold.Free;
    FLegalHold := Value;
  end;
end;

function TS3SetObjectLegalHoldOperation.GetKeepLegalHold: Boolean;
begin
  Result := FKeepLegalHold;
end;

procedure TS3SetObjectLegalHoldOperation.SetKeepLegalHold(const Value: Boolean);
begin
  FKeepLegalHold := Value;
end;

function TS3SetObjectLegalHoldOperation.IsSetLegalHold: Boolean;
begin
  Result := FLegalHold <> nil;
end;

end.
