unit AWS.SES.Model.ListVerifiedEmailAddressesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TListVerifiedEmailAddressesResponse = class;
  
  IListVerifiedEmailAddressesResponse = interface(IAmazonWebServiceResponse)
    function GetVerifiedEmailAddresses: TList<string>;
    procedure SetVerifiedEmailAddresses(const Value: TList<string>);
    function Obj: TListVerifiedEmailAddressesResponse;
    function IsSetVerifiedEmailAddresses: Boolean;
    property VerifiedEmailAddresses: TList<string> read GetVerifiedEmailAddresses write SetVerifiedEmailAddresses;
  end;
  
  TListVerifiedEmailAddressesResponse = class(TAmazonWebServiceResponse, IListVerifiedEmailAddressesResponse)
  strict private
    FVerifiedEmailAddresses: TList<string>;
    function GetVerifiedEmailAddresses: TList<string>;
    procedure SetVerifiedEmailAddresses(const Value: TList<string>);
  strict protected
    function Obj: TListVerifiedEmailAddressesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetVerifiedEmailAddresses: Boolean;
    property VerifiedEmailAddresses: TList<string> read GetVerifiedEmailAddresses write SetVerifiedEmailAddresses;
  end;
  
implementation

{ TListVerifiedEmailAddressesResponse }

constructor TListVerifiedEmailAddressesResponse.Create;
begin
  inherited;
  FVerifiedEmailAddresses := TList<string>.Create;
end;

destructor TListVerifiedEmailAddressesResponse.Destroy;
begin
  FVerifiedEmailAddresses.Free;
  inherited;
end;

function TListVerifiedEmailAddressesResponse.Obj: TListVerifiedEmailAddressesResponse;
begin
  Result := Self;
end;

function TListVerifiedEmailAddressesResponse.GetVerifiedEmailAddresses: TList<string>;
begin
  Result := FVerifiedEmailAddresses;
end;

procedure TListVerifiedEmailAddressesResponse.SetVerifiedEmailAddresses(const Value: TList<string>);
begin
  if FVerifiedEmailAddresses <> Value then
  begin
    FVerifiedEmailAddresses.Free;
    FVerifiedEmailAddresses := Value;
  end;
end;

function TListVerifiedEmailAddressesResponse.IsSetVerifiedEmailAddresses: Boolean;
begin
  Result := (FVerifiedEmailAddresses <> nil) and (FVerifiedEmailAddresses.Count > 0);
end;

end.
