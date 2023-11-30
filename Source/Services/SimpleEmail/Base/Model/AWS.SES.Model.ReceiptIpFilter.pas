unit AWS.SES.Model.ReceiptIpFilter;

interface

uses
  AWS.Nullable, 
  AWS.SES.Enums;

type
  TReceiptIpFilter = class;
  
  IReceiptIpFilter = interface
    function GetCidr: string;
    procedure SetCidr(const Value: string);
    function GetPolicy: TReceiptFilterPolicy;
    procedure SetPolicy(const Value: TReceiptFilterPolicy);
    function Obj: TReceiptIpFilter;
    function IsSetCidr: Boolean;
    function IsSetPolicy: Boolean;
    property Cidr: string read GetCidr write SetCidr;
    property Policy: TReceiptFilterPolicy read GetPolicy write SetPolicy;
  end;
  
  TReceiptIpFilter = class
  strict private
    FCidr: Nullable<string>;
    FPolicy: Nullable<TReceiptFilterPolicy>;
    function GetCidr: string;
    procedure SetCidr(const Value: string);
    function GetPolicy: TReceiptFilterPolicy;
    procedure SetPolicy(const Value: TReceiptFilterPolicy);
  strict protected
    function Obj: TReceiptIpFilter;
  public
    function IsSetCidr: Boolean;
    function IsSetPolicy: Boolean;
    property Cidr: string read GetCidr write SetCidr;
    property Policy: TReceiptFilterPolicy read GetPolicy write SetPolicy;
  end;
  
implementation

{ TReceiptIpFilter }

function TReceiptIpFilter.Obj: TReceiptIpFilter;
begin
  Result := Self;
end;

function TReceiptIpFilter.GetCidr: string;
begin
  Result := FCidr.ValueOrDefault;
end;

procedure TReceiptIpFilter.SetCidr(const Value: string);
begin
  FCidr := Value;
end;

function TReceiptIpFilter.IsSetCidr: Boolean;
begin
  Result := FCidr.HasValue;
end;

function TReceiptIpFilter.GetPolicy: TReceiptFilterPolicy;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TReceiptIpFilter.SetPolicy(const Value: TReceiptFilterPolicy);
begin
  FPolicy := Value;
end;

function TReceiptIpFilter.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

end.
