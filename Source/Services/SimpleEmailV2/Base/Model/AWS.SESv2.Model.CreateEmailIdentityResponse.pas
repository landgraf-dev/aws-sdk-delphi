unit AWS.SESv2.Model.CreateEmailIdentityResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DkimAttributes, 
  AWS.SESv2.Enums;

type
  TCreateEmailIdentityResponse = class;
  
  ICreateEmailIdentityResponse = interface(IAmazonWebServiceResponse)
    function GetDkimAttributes: TDkimAttributes;
    procedure SetDkimAttributes(const Value: TDkimAttributes);
    function GetKeepDkimAttributes: Boolean;
    procedure SetKeepDkimAttributes(const Value: Boolean);
    function GetIdentityType: TIdentityType;
    procedure SetIdentityType(const Value: TIdentityType);
    function GetVerifiedForSendingStatus: Boolean;
    procedure SetVerifiedForSendingStatus(const Value: Boolean);
    function Obj: TCreateEmailIdentityResponse;
    function IsSetDkimAttributes: Boolean;
    function IsSetIdentityType: Boolean;
    function IsSetVerifiedForSendingStatus: Boolean;
    property DkimAttributes: TDkimAttributes read GetDkimAttributes write SetDkimAttributes;
    property KeepDkimAttributes: Boolean read GetKeepDkimAttributes write SetKeepDkimAttributes;
    property IdentityType: TIdentityType read GetIdentityType write SetIdentityType;
    property VerifiedForSendingStatus: Boolean read GetVerifiedForSendingStatus write SetVerifiedForSendingStatus;
  end;
  
  TCreateEmailIdentityResponse = class(TAmazonWebServiceResponse, ICreateEmailIdentityResponse)
  strict private
    FDkimAttributes: TDkimAttributes;
    FKeepDkimAttributes: Boolean;
    FIdentityType: Nullable<TIdentityType>;
    FVerifiedForSendingStatus: Nullable<Boolean>;
    function GetDkimAttributes: TDkimAttributes;
    procedure SetDkimAttributes(const Value: TDkimAttributes);
    function GetKeepDkimAttributes: Boolean;
    procedure SetKeepDkimAttributes(const Value: Boolean);
    function GetIdentityType: TIdentityType;
    procedure SetIdentityType(const Value: TIdentityType);
    function GetVerifiedForSendingStatus: Boolean;
    procedure SetVerifiedForSendingStatus(const Value: Boolean);
  strict protected
    function Obj: TCreateEmailIdentityResponse;
  public
    destructor Destroy; override;
    function IsSetDkimAttributes: Boolean;
    function IsSetIdentityType: Boolean;
    function IsSetVerifiedForSendingStatus: Boolean;
    property DkimAttributes: TDkimAttributes read GetDkimAttributes write SetDkimAttributes;
    property KeepDkimAttributes: Boolean read GetKeepDkimAttributes write SetKeepDkimAttributes;
    property IdentityType: TIdentityType read GetIdentityType write SetIdentityType;
    property VerifiedForSendingStatus: Boolean read GetVerifiedForSendingStatus write SetVerifiedForSendingStatus;
  end;
  
implementation

{ TCreateEmailIdentityResponse }

destructor TCreateEmailIdentityResponse.Destroy;
begin
  DkimAttributes := nil;
  inherited;
end;

function TCreateEmailIdentityResponse.Obj: TCreateEmailIdentityResponse;
begin
  Result := Self;
end;

function TCreateEmailIdentityResponse.GetDkimAttributes: TDkimAttributes;
begin
  Result := FDkimAttributes;
end;

procedure TCreateEmailIdentityResponse.SetDkimAttributes(const Value: TDkimAttributes);
begin
  if FDkimAttributes <> Value then
  begin
    if not KeepDkimAttributes then
      FDkimAttributes.Free;
    FDkimAttributes := Value;
  end;
end;

function TCreateEmailIdentityResponse.GetKeepDkimAttributes: Boolean;
begin
  Result := FKeepDkimAttributes;
end;

procedure TCreateEmailIdentityResponse.SetKeepDkimAttributes(const Value: Boolean);
begin
  FKeepDkimAttributes := Value;
end;

function TCreateEmailIdentityResponse.IsSetDkimAttributes: Boolean;
begin
  Result := FDkimAttributes <> nil;
end;

function TCreateEmailIdentityResponse.GetIdentityType: TIdentityType;
begin
  Result := FIdentityType.ValueOrDefault;
end;

procedure TCreateEmailIdentityResponse.SetIdentityType(const Value: TIdentityType);
begin
  FIdentityType := Value;
end;

function TCreateEmailIdentityResponse.IsSetIdentityType: Boolean;
begin
  Result := FIdentityType.HasValue;
end;

function TCreateEmailIdentityResponse.GetVerifiedForSendingStatus: Boolean;
begin
  Result := FVerifiedForSendingStatus.ValueOrDefault;
end;

procedure TCreateEmailIdentityResponse.SetVerifiedForSendingStatus(const Value: Boolean);
begin
  FVerifiedForSendingStatus := Value;
end;

function TCreateEmailIdentityResponse.IsSetVerifiedForSendingStatus: Boolean;
begin
  Result := FVerifiedForSendingStatus.HasValue;
end;

end.
