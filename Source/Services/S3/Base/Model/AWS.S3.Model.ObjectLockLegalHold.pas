unit AWS.S3.Model.ObjectLockLegalHold;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TObjectLockLegalHold = class;
  
  IObjectLockLegalHold = interface
    function GetStatus: TObjectLockLegalHoldStatus;
    procedure SetStatus(const Value: TObjectLockLegalHoldStatus);
    function Obj: TObjectLockLegalHold;
    function IsSetStatus: Boolean;
    property Status: TObjectLockLegalHoldStatus read GetStatus write SetStatus;
  end;
  
  TObjectLockLegalHold = class
  strict private
    FStatus: Nullable<TObjectLockLegalHoldStatus>;
    function GetStatus: TObjectLockLegalHoldStatus;
    procedure SetStatus(const Value: TObjectLockLegalHoldStatus);
  strict protected
    function Obj: TObjectLockLegalHold;
  public
    function IsSetStatus: Boolean;
    property Status: TObjectLockLegalHoldStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TObjectLockLegalHold }

function TObjectLockLegalHold.Obj: TObjectLockLegalHold;
begin
  Result := Self;
end;

function TObjectLockLegalHold.GetStatus: TObjectLockLegalHoldStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TObjectLockLegalHold.SetStatus(const Value: TObjectLockLegalHoldStatus);
begin
  FStatus := Value;
end;

function TObjectLockLegalHold.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
