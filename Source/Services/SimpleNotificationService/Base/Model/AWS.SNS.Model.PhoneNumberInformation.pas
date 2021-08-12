unit AWS.SNS.Model.PhoneNumberInformation;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SNS.Enums;

type
  TPhoneNumberInformation = class;
  
  IPhoneNumberInformation = interface
    function GetCreatedAt: TDateTime;
    procedure SetCreatedAt(const Value: TDateTime);
    function GetIso2CountryCode: string;
    procedure SetIso2CountryCode(const Value: string);
    function GetNumberCapabilities: TList<string>;
    procedure SetNumberCapabilities(const Value: TList<string>);
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function GetRouteType: TRouteType;
    procedure SetRouteType(const Value: TRouteType);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
    function Obj: TPhoneNumberInformation;
    function IsSetCreatedAt: Boolean;
    function IsSetIso2CountryCode: Boolean;
    function IsSetNumberCapabilities: Boolean;
    function IsSetPhoneNumber: Boolean;
    function IsSetRouteType: Boolean;
    function IsSetStatus: Boolean;
    property CreatedAt: TDateTime read GetCreatedAt write SetCreatedAt;
    property Iso2CountryCode: string read GetIso2CountryCode write SetIso2CountryCode;
    property NumberCapabilities: TList<string> read GetNumberCapabilities write SetNumberCapabilities;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
    property RouteType: TRouteType read GetRouteType write SetRouteType;
    property Status: string read GetStatus write SetStatus;
  end;
  
  TPhoneNumberInformation = class
  strict private
    FCreatedAt: Nullable<TDateTime>;
    FIso2CountryCode: Nullable<string>;
    FNumberCapabilities: TList<string>;
    FPhoneNumber: Nullable<string>;
    FRouteType: Nullable<TRouteType>;
    FStatus: Nullable<string>;
    function GetCreatedAt: TDateTime;
    procedure SetCreatedAt(const Value: TDateTime);
    function GetIso2CountryCode: string;
    procedure SetIso2CountryCode(const Value: string);
    function GetNumberCapabilities: TList<string>;
    procedure SetNumberCapabilities(const Value: TList<string>);
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function GetRouteType: TRouteType;
    procedure SetRouteType(const Value: TRouteType);
    function GetStatus: string;
    procedure SetStatus(const Value: string);
  strict protected
    function Obj: TPhoneNumberInformation;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCreatedAt: Boolean;
    function IsSetIso2CountryCode: Boolean;
    function IsSetNumberCapabilities: Boolean;
    function IsSetPhoneNumber: Boolean;
    function IsSetRouteType: Boolean;
    function IsSetStatus: Boolean;
    property CreatedAt: TDateTime read GetCreatedAt write SetCreatedAt;
    property Iso2CountryCode: string read GetIso2CountryCode write SetIso2CountryCode;
    property NumberCapabilities: TList<string> read GetNumberCapabilities write SetNumberCapabilities;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
    property RouteType: TRouteType read GetRouteType write SetRouteType;
    property Status: string read GetStatus write SetStatus;
  end;
  
implementation

{ TPhoneNumberInformation }

constructor TPhoneNumberInformation.Create;
begin
  inherited;
  FNumberCapabilities := TList<string>.Create;
end;

destructor TPhoneNumberInformation.Destroy;
begin
  FNumberCapabilities.Free;
  inherited;
end;

function TPhoneNumberInformation.Obj: TPhoneNumberInformation;
begin
  Result := Self;
end;

function TPhoneNumberInformation.GetCreatedAt: TDateTime;
begin
  Result := FCreatedAt.ValueOrDefault;
end;

procedure TPhoneNumberInformation.SetCreatedAt(const Value: TDateTime);
begin
  FCreatedAt := Value;
end;

function TPhoneNumberInformation.IsSetCreatedAt: Boolean;
begin
  Result := FCreatedAt.HasValue;
end;

function TPhoneNumberInformation.GetIso2CountryCode: string;
begin
  Result := FIso2CountryCode.ValueOrDefault;
end;

procedure TPhoneNumberInformation.SetIso2CountryCode(const Value: string);
begin
  FIso2CountryCode := Value;
end;

function TPhoneNumberInformation.IsSetIso2CountryCode: Boolean;
begin
  Result := FIso2CountryCode.HasValue;
end;

function TPhoneNumberInformation.GetNumberCapabilities: TList<string>;
begin
  Result := FNumberCapabilities;
end;

procedure TPhoneNumberInformation.SetNumberCapabilities(const Value: TList<string>);
begin
  if FNumberCapabilities <> Value then
  begin
    FNumberCapabilities.Free;
    FNumberCapabilities := Value;
  end;
end;

function TPhoneNumberInformation.IsSetNumberCapabilities: Boolean;
begin
  Result := (FNumberCapabilities <> nil) and (FNumberCapabilities.Count > 0);
end;

function TPhoneNumberInformation.GetPhoneNumber: string;
begin
  Result := FPhoneNumber.ValueOrDefault;
end;

procedure TPhoneNumberInformation.SetPhoneNumber(const Value: string);
begin
  FPhoneNumber := Value;
end;

function TPhoneNumberInformation.IsSetPhoneNumber: Boolean;
begin
  Result := FPhoneNumber.HasValue;
end;

function TPhoneNumberInformation.GetRouteType: TRouteType;
begin
  Result := FRouteType.ValueOrDefault;
end;

procedure TPhoneNumberInformation.SetRouteType(const Value: TRouteType);
begin
  FRouteType := Value;
end;

function TPhoneNumberInformation.IsSetRouteType: Boolean;
begin
  Result := FRouteType.HasValue;
end;

function TPhoneNumberInformation.GetStatus: string;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TPhoneNumberInformation.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

function TPhoneNumberInformation.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
