unit AWS.SESv2.Model.GetDomainDeliverabilityCampaignResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DomainDeliverabilityCampaign;

type
  TGetDomainDeliverabilityCampaignResponse = class;
  
  IGetDomainDeliverabilityCampaignResponse = interface(IAmazonWebServiceResponse)
    function GetDomainDeliverabilityCampaign: TDomainDeliverabilityCampaign;
    procedure SetDomainDeliverabilityCampaign(const Value: TDomainDeliverabilityCampaign);
    function GetKeepDomainDeliverabilityCampaign: Boolean;
    procedure SetKeepDomainDeliverabilityCampaign(const Value: Boolean);
    function Obj: TGetDomainDeliverabilityCampaignResponse;
    function IsSetDomainDeliverabilityCampaign: Boolean;
    property DomainDeliverabilityCampaign: TDomainDeliverabilityCampaign read GetDomainDeliverabilityCampaign write SetDomainDeliverabilityCampaign;
    property KeepDomainDeliverabilityCampaign: Boolean read GetKeepDomainDeliverabilityCampaign write SetKeepDomainDeliverabilityCampaign;
  end;
  
  TGetDomainDeliverabilityCampaignResponse = class(TAmazonWebServiceResponse, IGetDomainDeliverabilityCampaignResponse)
  strict private
    FDomainDeliverabilityCampaign: TDomainDeliverabilityCampaign;
    FKeepDomainDeliverabilityCampaign: Boolean;
    function GetDomainDeliverabilityCampaign: TDomainDeliverabilityCampaign;
    procedure SetDomainDeliverabilityCampaign(const Value: TDomainDeliverabilityCampaign);
    function GetKeepDomainDeliverabilityCampaign: Boolean;
    procedure SetKeepDomainDeliverabilityCampaign(const Value: Boolean);
  strict protected
    function Obj: TGetDomainDeliverabilityCampaignResponse;
  public
    destructor Destroy; override;
    function IsSetDomainDeliverabilityCampaign: Boolean;
    property DomainDeliverabilityCampaign: TDomainDeliverabilityCampaign read GetDomainDeliverabilityCampaign write SetDomainDeliverabilityCampaign;
    property KeepDomainDeliverabilityCampaign: Boolean read GetKeepDomainDeliverabilityCampaign write SetKeepDomainDeliverabilityCampaign;
  end;
  
implementation

{ TGetDomainDeliverabilityCampaignResponse }

destructor TGetDomainDeliverabilityCampaignResponse.Destroy;
begin
  DomainDeliverabilityCampaign := nil;
  inherited;
end;

function TGetDomainDeliverabilityCampaignResponse.Obj: TGetDomainDeliverabilityCampaignResponse;
begin
  Result := Self;
end;

function TGetDomainDeliverabilityCampaignResponse.GetDomainDeliverabilityCampaign: TDomainDeliverabilityCampaign;
begin
  Result := FDomainDeliverabilityCampaign;
end;

procedure TGetDomainDeliverabilityCampaignResponse.SetDomainDeliverabilityCampaign(const Value: TDomainDeliverabilityCampaign);
begin
  if FDomainDeliverabilityCampaign <> Value then
  begin
    if not KeepDomainDeliverabilityCampaign then
      FDomainDeliverabilityCampaign.Free;
    FDomainDeliverabilityCampaign := Value;
  end;
end;

function TGetDomainDeliverabilityCampaignResponse.GetKeepDomainDeliverabilityCampaign: Boolean;
begin
  Result := FKeepDomainDeliverabilityCampaign;
end;

procedure TGetDomainDeliverabilityCampaignResponse.SetKeepDomainDeliverabilityCampaign(const Value: Boolean);
begin
  FKeepDomainDeliverabilityCampaign := Value;
end;

function TGetDomainDeliverabilityCampaignResponse.IsSetDomainDeliverabilityCampaign: Boolean;
begin
  Result := FDomainDeliverabilityCampaign <> nil;
end;

end.
