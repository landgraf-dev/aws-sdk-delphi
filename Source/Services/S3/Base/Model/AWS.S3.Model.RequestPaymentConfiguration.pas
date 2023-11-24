unit AWS.S3.Model.RequestPaymentConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TRequestPaymentConfiguration = class;
  
  IRequestPaymentConfiguration = interface
    function GetPayer: TPayer;
    procedure SetPayer(const Value: TPayer);
    function Obj: TRequestPaymentConfiguration;
    function IsSetPayer: Boolean;
    property Payer: TPayer read GetPayer write SetPayer;
  end;
  
  TRequestPaymentConfiguration = class
  strict private
    FPayer: Nullable<TPayer>;
    function GetPayer: TPayer;
    procedure SetPayer(const Value: TPayer);
  strict protected
    function Obj: TRequestPaymentConfiguration;
  public
    function IsSetPayer: Boolean;
    property Payer: TPayer read GetPayer write SetPayer;
  end;
  
implementation

{ TRequestPaymentConfiguration }

function TRequestPaymentConfiguration.Obj: TRequestPaymentConfiguration;
begin
  Result := Self;
end;

function TRequestPaymentConfiguration.GetPayer: TPayer;
begin
  Result := FPayer.ValueOrDefault;
end;

procedure TRequestPaymentConfiguration.SetPayer(const Value: TPayer);
begin
  FPayer := Value;
end;

function TRequestPaymentConfiguration.IsSetPayer: Boolean;
begin
  Result := FPayer.HasValue;
end;

end.
