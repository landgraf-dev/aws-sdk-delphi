unit AWS.SESv2.Model.GetDomainDeliverabilityCampaignRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TGetDomainDeliverabilityCampaignRequest = class;
  
  IGetDomainDeliverabilityCampaignRequest = interface
    function GetCampaignId: string;
    procedure SetCampaignId(const Value: string);
    function Obj: TGetDomainDeliverabilityCampaignRequest;
    function IsSetCampaignId: Boolean;
    property CampaignId: string read GetCampaignId write SetCampaignId;
  end;
  
  TGetDomainDeliverabilityCampaignRequest = class(TAmazonSimpleEmailServiceV2Request, IGetDomainDeliverabilityCampaignRequest)
  strict private
    FCampaignId: Nullable<string>;
    function GetCampaignId: string;
    procedure SetCampaignId(const Value: string);
  strict protected
    function Obj: TGetDomainDeliverabilityCampaignRequest;
  public
    function IsSetCampaignId: Boolean;
    property CampaignId: string read GetCampaignId write SetCampaignId;
  end;
  
implementation

{ TGetDomainDeliverabilityCampaignRequest }

function TGetDomainDeliverabilityCampaignRequest.Obj: TGetDomainDeliverabilityCampaignRequest;
begin
  Result := Self;
end;

function TGetDomainDeliverabilityCampaignRequest.GetCampaignId: string;
begin
  Result := FCampaignId.ValueOrDefault;
end;

procedure TGetDomainDeliverabilityCampaignRequest.SetCampaignId(const Value: string);
begin
  FCampaignId := Value;
end;

function TGetDomainDeliverabilityCampaignRequest.IsSetCampaignId: Boolean;
begin
  Result := FCampaignId.HasValue;
end;

end.
