unit AWS.S3.Model.GetObjectLegalHoldResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.ObjectLockLegalHold;

type
  TGetObjectLegalHoldResponse = class;
  
  IGetObjectLegalHoldResponse = interface(IAmazonWebServiceResponse)
    function GetLegalHold: TObjectLockLegalHold;
    procedure SetLegalHold(const Value: TObjectLockLegalHold);
    function GetKeepLegalHold: Boolean;
    procedure SetKeepLegalHold(const Value: Boolean);
    function Obj: TGetObjectLegalHoldResponse;
    function IsSetLegalHold: Boolean;
    property LegalHold: TObjectLockLegalHold read GetLegalHold write SetLegalHold;
    property KeepLegalHold: Boolean read GetKeepLegalHold write SetKeepLegalHold;
  end;
  
  TGetObjectLegalHoldResponse = class(TAmazonWebServiceResponse, IGetObjectLegalHoldResponse)
  strict private
    FLegalHold: TObjectLockLegalHold;
    FKeepLegalHold: Boolean;
    function GetLegalHold: TObjectLockLegalHold;
    procedure SetLegalHold(const Value: TObjectLockLegalHold);
    function GetKeepLegalHold: Boolean;
    procedure SetKeepLegalHold(const Value: Boolean);
  strict protected
    function Obj: TGetObjectLegalHoldResponse;
  public
    destructor Destroy; override;
    function IsSetLegalHold: Boolean;
    property LegalHold: TObjectLockLegalHold read GetLegalHold write SetLegalHold;
    property KeepLegalHold: Boolean read GetKeepLegalHold write SetKeepLegalHold;
  end;
  
implementation

{ TGetObjectLegalHoldResponse }

destructor TGetObjectLegalHoldResponse.Destroy;
begin
  LegalHold := nil;
  inherited;
end;

function TGetObjectLegalHoldResponse.Obj: TGetObjectLegalHoldResponse;
begin
  Result := Self;
end;

function TGetObjectLegalHoldResponse.GetLegalHold: TObjectLockLegalHold;
begin
  Result := FLegalHold;
end;

procedure TGetObjectLegalHoldResponse.SetLegalHold(const Value: TObjectLockLegalHold);
begin
  if FLegalHold <> Value then
  begin
    if not KeepLegalHold then
      FLegalHold.Free;
    FLegalHold := Value;
  end;
end;

function TGetObjectLegalHoldResponse.GetKeepLegalHold: Boolean;
begin
  Result := FKeepLegalHold;
end;

procedure TGetObjectLegalHoldResponse.SetKeepLegalHold(const Value: Boolean);
begin
  FKeepLegalHold := Value;
end;

function TGetObjectLegalHoldResponse.IsSetLegalHold: Boolean;
begin
  Result := FLegalHold <> nil;
end;

end.
