unit AWS.SESv2.Model.GetSuppressedDestinationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SESv2.Model.SuppressedDestination;

type
  TGetSuppressedDestinationResponse = class;
  
  IGetSuppressedDestinationResponse = interface(IAmazonWebServiceResponse)
    function GetSuppressedDestination: TSuppressedDestination;
    procedure SetSuppressedDestination(const Value: TSuppressedDestination);
    function GetKeepSuppressedDestination: Boolean;
    procedure SetKeepSuppressedDestination(const Value: Boolean);
    function Obj: TGetSuppressedDestinationResponse;
    function IsSetSuppressedDestination: Boolean;
    property SuppressedDestination: TSuppressedDestination read GetSuppressedDestination write SetSuppressedDestination;
    property KeepSuppressedDestination: Boolean read GetKeepSuppressedDestination write SetKeepSuppressedDestination;
  end;
  
  TGetSuppressedDestinationResponse = class(TAmazonWebServiceResponse, IGetSuppressedDestinationResponse)
  strict private
    FSuppressedDestination: TSuppressedDestination;
    FKeepSuppressedDestination: Boolean;
    function GetSuppressedDestination: TSuppressedDestination;
    procedure SetSuppressedDestination(const Value: TSuppressedDestination);
    function GetKeepSuppressedDestination: Boolean;
    procedure SetKeepSuppressedDestination(const Value: Boolean);
  strict protected
    function Obj: TGetSuppressedDestinationResponse;
  public
    destructor Destroy; override;
    function IsSetSuppressedDestination: Boolean;
    property SuppressedDestination: TSuppressedDestination read GetSuppressedDestination write SetSuppressedDestination;
    property KeepSuppressedDestination: Boolean read GetKeepSuppressedDestination write SetKeepSuppressedDestination;
  end;
  
implementation

{ TGetSuppressedDestinationResponse }

destructor TGetSuppressedDestinationResponse.Destroy;
begin
  SuppressedDestination := nil;
  inherited;
end;

function TGetSuppressedDestinationResponse.Obj: TGetSuppressedDestinationResponse;
begin
  Result := Self;
end;

function TGetSuppressedDestinationResponse.GetSuppressedDestination: TSuppressedDestination;
begin
  Result := FSuppressedDestination;
end;

procedure TGetSuppressedDestinationResponse.SetSuppressedDestination(const Value: TSuppressedDestination);
begin
  if FSuppressedDestination <> Value then
  begin
    if not KeepSuppressedDestination then
      FSuppressedDestination.Free;
    FSuppressedDestination := Value;
  end;
end;

function TGetSuppressedDestinationResponse.GetKeepSuppressedDestination: Boolean;
begin
  Result := FKeepSuppressedDestination;
end;

procedure TGetSuppressedDestinationResponse.SetKeepSuppressedDestination(const Value: Boolean);
begin
  FKeepSuppressedDestination := Value;
end;

function TGetSuppressedDestinationResponse.IsSetSuppressedDestination: Boolean;
begin
  Result := FSuppressedDestination <> nil;
end;

end.
