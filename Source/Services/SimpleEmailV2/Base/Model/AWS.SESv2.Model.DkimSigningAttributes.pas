unit AWS.SESv2.Model.DkimSigningAttributes;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Enums;

type
  TDkimSigningAttributes = class;
  
  IDkimSigningAttributes = interface
    function GetDomainSigningPrivateKey: string;
    procedure SetDomainSigningPrivateKey(const Value: string);
    function GetDomainSigningSelector: string;
    procedure SetDomainSigningSelector(const Value: string);
    function GetNextSigningKeyLength: TDkimSigningKeyLength;
    procedure SetNextSigningKeyLength(const Value: TDkimSigningKeyLength);
    function Obj: TDkimSigningAttributes;
    function IsSetDomainSigningPrivateKey: Boolean;
    function IsSetDomainSigningSelector: Boolean;
    function IsSetNextSigningKeyLength: Boolean;
    property DomainSigningPrivateKey: string read GetDomainSigningPrivateKey write SetDomainSigningPrivateKey;
    property DomainSigningSelector: string read GetDomainSigningSelector write SetDomainSigningSelector;
    property NextSigningKeyLength: TDkimSigningKeyLength read GetNextSigningKeyLength write SetNextSigningKeyLength;
  end;
  
  TDkimSigningAttributes = class
  strict private
    FDomainSigningPrivateKey: Nullable<string>;
    FDomainSigningSelector: Nullable<string>;
    FNextSigningKeyLength: Nullable<TDkimSigningKeyLength>;
    function GetDomainSigningPrivateKey: string;
    procedure SetDomainSigningPrivateKey(const Value: string);
    function GetDomainSigningSelector: string;
    procedure SetDomainSigningSelector(const Value: string);
    function GetNextSigningKeyLength: TDkimSigningKeyLength;
    procedure SetNextSigningKeyLength(const Value: TDkimSigningKeyLength);
  strict protected
    function Obj: TDkimSigningAttributes;
  public
    function IsSetDomainSigningPrivateKey: Boolean;
    function IsSetDomainSigningSelector: Boolean;
    function IsSetNextSigningKeyLength: Boolean;
    property DomainSigningPrivateKey: string read GetDomainSigningPrivateKey write SetDomainSigningPrivateKey;
    property DomainSigningSelector: string read GetDomainSigningSelector write SetDomainSigningSelector;
    property NextSigningKeyLength: TDkimSigningKeyLength read GetNextSigningKeyLength write SetNextSigningKeyLength;
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

function TDkimSigningAttributes.GetNextSigningKeyLength: TDkimSigningKeyLength;
begin
  Result := FNextSigningKeyLength.ValueOrDefault;
end;

procedure TDkimSigningAttributes.SetNextSigningKeyLength(const Value: TDkimSigningKeyLength);
begin
  FNextSigningKeyLength := Value;
end;

function TDkimSigningAttributes.IsSetNextSigningKeyLength: Boolean;
begin
  Result := FNextSigningKeyLength.HasValue;
end;

end.
