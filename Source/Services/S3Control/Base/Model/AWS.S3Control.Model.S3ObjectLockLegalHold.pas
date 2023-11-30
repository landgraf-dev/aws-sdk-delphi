unit AWS.S3Control.Model.S3ObjectLockLegalHold;

interface

uses
  AWS.Nullable, 
  AWS.S3Control.Enums;

type
  TS3ObjectLockLegalHold = class;
  
  IS3ObjectLockLegalHold = interface
    function GetStatus: TS3ObjectLockLegalHoldStatus;
    procedure SetStatus(const Value: TS3ObjectLockLegalHoldStatus);
    function Obj: TS3ObjectLockLegalHold;
    function IsSetStatus: Boolean;
    property Status: TS3ObjectLockLegalHoldStatus read GetStatus write SetStatus;
  end;
  
  TS3ObjectLockLegalHold = class
  strict private
    FStatus: Nullable<TS3ObjectLockLegalHoldStatus>;
    function GetStatus: TS3ObjectLockLegalHoldStatus;
    procedure SetStatus(const Value: TS3ObjectLockLegalHoldStatus);
  strict protected
    function Obj: TS3ObjectLockLegalHold;
  public
    function IsSetStatus: Boolean;
    property Status: TS3ObjectLockLegalHoldStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TS3ObjectLockLegalHold }

function TS3ObjectLockLegalHold.Obj: TS3ObjectLockLegalHold;
begin
  Result := Self;
end;

function TS3ObjectLockLegalHold.GetStatus: TS3ObjectLockLegalHoldStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TS3ObjectLockLegalHold.SetStatus(const Value: TS3ObjectLockLegalHoldStatus);
begin
  FStatus := Value;
end;

function TS3ObjectLockLegalHold.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
