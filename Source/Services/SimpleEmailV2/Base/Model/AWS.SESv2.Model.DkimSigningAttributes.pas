unit AWS.SESv2.Model.DkimSigningAttributes;

interface

uses
  Bcl.Types.Nullable;

type
  TDkimSigningAttributes = class;
  
  IDkimSigningAttributes = interface
    function GetDomainSigningPrivateKey: string;
    procedure SetDomainSigningPrivateKey(const Value: string);
    function GetDomainSigningSelector: string;
    procedure SetDomainSigningSelector(const Value: string);
    function Obj: TDkimSigningAttributes;
    function IsSetDomainSigningPrivateKey: Boolean;
    function IsSetDomainSigningSelector: Boolean;
    property DomainSigningPrivateKey: string read GetDomainSigningPrivateKey write SetDomainSigningPrivateKey;
    property DomainSigningSelector: string read GetDomainSigningSelector write SetDomainSigningSelector;
  end;
  
  TDkimSigningAttributes = class
  strict private
    FDomainSigningPrivateKey: Nullable<string>;
    FDomainSigningSelector: Nullable<string>;
    function GetDomainSigningPrivateKey: string;
    procedure SetDomainSigningPrivateKey(const Value: string);
    function GetDomainSigningSelector: string;
    procedure SetDomainSigningSelector(const Value: string);
  strict protected
    function Obj: TDkimSigningAttributes;
  public
    function IsSetDomainSigningPrivateKey: Boolean;
    function IsSetDomainSigningSelector: Boolean;
    property DomainSigningPrivateKey: string read GetDomainSigningPrivateKey write SetDomainSigningPrivateKey;
    property DomainSigningSelector: string read GetDomainSigningSelector write SetDomainSigningSelector;
  end;
  
implementation

{ TDkimSigningAttributes }

function TDkimSigningAttributes.Obj: TDkimSigningAttributes;
begin
  Result := Self;
end;

function TDkimSigningAttributes.GetDomainSigningPrivateKey: string;
begin
  Result := FDomainSigningPrivateKey.ValueOrDefault;
end;

procedure TDkimSigningAttributes.SetDomainSigningPrivateKey(const Value: string);
begin
  FDomainSigningPrivateKey := Value;
end;

function TDkimSigningAttributes.IsSetDomainSigningPrivateKey: Boolean;
begin
  Result := FDomainSigningPrivateKey.HasValue;
end;

function TDkimSigningAttributes.GetDomainSigningSelector: string;
begin
  Result := FDomainSigningSelector.ValueOrDefault;
end;

procedure TDkimSigningAttributes.SetDomainSigningSelector(const Value: string);
begin
  FDomainSigningSelector := Value;
end;

function TDkimSigningAttributes.IsSetDomainSigningSelector: Boolean;
begin
  Result := FDomainSigningSelector.HasValue;
end;

end.
