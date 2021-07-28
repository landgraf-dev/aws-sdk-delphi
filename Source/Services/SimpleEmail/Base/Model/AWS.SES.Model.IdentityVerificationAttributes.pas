unit AWS.SES.Model.IdentityVerificationAttributes;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Enums;

type
  TIdentityVerificationAttributes = class;
  
  IIdentityVerificationAttributes = interface
    function GetVerificationStatus: TVerificationStatus;
    procedure SetVerificationStatus(const Value: TVerificationStatus);
    function GetVerificationToken: string;
    procedure SetVerificationToken(const Value: string);
    function Obj: TIdentityVerificationAttributes;
    function IsSetVerificationStatus: Boolean;
    function IsSetVerificationToken: Boolean;
    property VerificationStatus: TVerificationStatus read GetVerificationStatus write SetVerificationStatus;
    property VerificationToken: string read GetVerificationToken write SetVerificationToken;
  end;
  
  TIdentityVerificationAttributes = class
  strict private
    FVerificationStatus: Nullable<TVerificationStatus>;
    FVerificationToken: Nullable<string>;
    function GetVerificationStatus: TVerificationStatus;
    procedure SetVerificationStatus(const Value: TVerificationStatus);
    function GetVerificationToken: string;
    procedure SetVerificationToken(const Value: string);
  strict protected
    function Obj: TIdentityVerificationAttributes;
  public
    function IsSetVerificationStatus: Boolean;
    function IsSetVerificationToken: Boolean;
    property VerificationStatus: TVerificationStatus read GetVerificationStatus write SetVerificationStatus;
    property VerificationToken: string read GetVerificationToken write SetVerificationToken;
  end;
  
implementation

{ TIdentityVerificationAttributes }

function TIdentityVerificationAttributes.Obj: TIdentityVerificationAttributes;
begin
  Result := Self;
end;

function TIdentityVerificationAttributes.GetVerificationStatus: TVerificationStatus;
begin
  Result := FVerificationStatus.ValueOrDefault;
end;

procedure TIdentityVerificationAttributes.SetVerificationStatus(const Value: TVerificationStatus);
begin
  FVerificationStatus := Value;
end;

function TIdentityVerificationAttributes.IsSetVerificationStatus: Boolean;
begin
  Result := FVerificationStatus.HasValue;
end;

function TIdentityVerificationAttributes.GetVerificationToken: string;
begin
  Result := FVerificationToken.ValueOrDefault;
end;

procedure TIdentityVerificationAttributes.SetVerificationToken(const Value: string);
begin
  FVerificationToken := Value;
end;

function TIdentityVerificationAttributes.IsSetVerificationToken: Boolean;
begin
  Result := FVerificationToken.HasValue;
end;

end.
