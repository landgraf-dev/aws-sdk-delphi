unit AWS.SSM.Model.PutParameterResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TPutParameterResponse = class;
  
  IPutParameterResponse = interface(IAmazonWebServiceResponse)
    function GetTier: TParameterTier;
    procedure SetTier(const Value: TParameterTier);
    function GetVersion: Int64;
    procedure SetVersion(const Value: Int64);
    function Obj: TPutParameterResponse;
    function IsSetTier: Boolean;
    function IsSetVersion: Boolean;
    property Tier: TParameterTier read GetTier write SetTier;
    property Version: Int64 read GetVersion write SetVersion;
  end;
  
  TPutParameterResponse = class(TAmazonWebServiceResponse, IPutParameterResponse)
  strict private
    FTier: Nullable<TParameterTier>;
    FVersion: Nullable<Int64>;
    function GetTier: TParameterTier;
    procedure SetTier(const Value: TParameterTier);
    function GetVersion: Int64;
    procedure SetVersion(const Value: Int64);
  strict protected
    function Obj: TPutParameterResponse;
  public
    function IsSetTier: Boolean;
    function IsSetVersion: Boolean;
    property Tier: TParameterTier read GetTier write SetTier;
    property Version: Int64 read GetVersion write SetVersion;
  end;
  
implementation

{ TPutParameterResponse }

function TPutParameterResponse.Obj: TPutParameterResponse;
begin
  Result := Self;
end;

function TPutParameterResponse.GetTier: TParameterTier;
begin
  Result := FTier.ValueOrDefault;
end;

procedure TPutParameterResponse.SetTier(const Value: TParameterTier);
begin
  FTier := Value;
end;

function TPutParameterResponse.IsSetTier: Boolean;
begin
  Result := FTier.HasValue;
end;

function TPutParameterResponse.GetVersion: Int64;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TPutParameterResponse.SetVersion(const Value: Int64);
begin
  FVersion := Value;
end;

function TPutParameterResponse.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
