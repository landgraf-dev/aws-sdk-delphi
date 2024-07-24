unit AWS.SSM.Model.AccountSharingInfo;

interface

uses
  AWS.Nullable;

type
  TAccountSharingInfo = class;
  
  IAccountSharingInfo = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetSharedDocumentVersion: string;
    procedure SetSharedDocumentVersion(const Value: string);
    function Obj: TAccountSharingInfo;
    function IsSetAccountId: Boolean;
    function IsSetSharedDocumentVersion: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property SharedDocumentVersion: string read GetSharedDocumentVersion write SetSharedDocumentVersion;
  end;
  
  TAccountSharingInfo = class
  strict private
    FAccountId: Nullable<string>;
    FSharedDocumentVersion: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetSharedDocumentVersion: string;
    procedure SetSharedDocumentVersion(const Value: string);
  strict protected
    function Obj: TAccountSharingInfo;
  public
    function IsSetAccountId: Boolean;
    function IsSetSharedDocumentVersion: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property SharedDocumentVersion: string read GetSharedDocumentVersion write SetSharedDocumentVersion;
  end;
  
implementation

{ TAccountSharingInfo }

function TAccountSharingInfo.Obj: TAccountSharingInfo;
begin
  Result := Self;
end;

function TAccountSharingInfo.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TAccountSharingInfo.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TAccountSharingInfo.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TAccountSharingInfo.GetSharedDocumentVersion: string;
begin
  Result := FSharedDocumentVersion.ValueOrDefault;
end;

procedure TAccountSharingInfo.SetSharedDocumentVersion(const Value: string);
begin
  FSharedDocumentVersion := Value;
end;

function TAccountSharingInfo.IsSetSharedDocumentVersion: Boolean;
begin
  Result := FSharedDocumentVersion.HasValue;
end;

end.
