unit AWS.SES.Model.SetIdentityDkimEnabledRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TSetIdentityDkimEnabledRequest = class;
  
  ISetIdentityDkimEnabledRequest = interface
    function GetDkimEnabled: Boolean;
    procedure SetDkimEnabled(const Value: Boolean);
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function Obj: TSetIdentityDkimEnabledRequest;
    function IsSetDkimEnabled: Boolean;
    function IsSetIdentity: Boolean;
    property DkimEnabled: Boolean read GetDkimEnabled write SetDkimEnabled;
    property Identity: string read GetIdentity write SetIdentity;
  end;
  
  TSetIdentityDkimEnabledRequest = class(TAmazonSimpleEmailServiceRequest, ISetIdentityDkimEnabledRequest)
  strict private
    FDkimEnabled: Nullable<Boolean>;
    FIdentity: Nullable<string>;
    function GetDkimEnabled: Boolean;
    procedure SetDkimEnabled(const Value: Boolean);
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
  strict protected
    function Obj: TSetIdentityDkimEnabledRequest;
  public
    function IsSetDkimEnabled: Boolean;
    function IsSetIdentity: Boolean;
    property DkimEnabled: Boolean read GetDkimEnabled write SetDkimEnabled;
    property Identity: string read GetIdentity write SetIdentity;
  end;
  
implementation

{ TSetIdentityDkimEnabledRequest }

function TSetIdentityDkimEnabledRequest.Obj: TSetIdentityDkimEnabledRequest;
begin
  Result := Self;
end;

function TSetIdentityDkimEnabledRequest.GetDkimEnabled: Boolean;
begin
  Result := FDkimEnabled.ValueOrDefault;
end;

procedure TSetIdentityDkimEnabledRequest.SetDkimEnabled(const Value: Boolean);
begin
  FDkimEnabled := Value;
end;

function TSetIdentityDkimEnabledRequest.IsSetDkimEnabled: Boolean;
begin
  Result := FDkimEnabled.HasValue;
end;

function TSetIdentityDkimEnabledRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TSetIdentityDkimEnabledRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TSetIdentityDkimEnabledRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

end.
