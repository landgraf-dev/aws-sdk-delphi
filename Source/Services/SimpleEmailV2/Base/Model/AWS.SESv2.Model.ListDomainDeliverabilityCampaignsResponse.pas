unit AWS.SESv2.Model.ListDomainDeliverabilityCampaignsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DomainDeliverabilityCampaign;

type
  TListDomainDeliverabilityCampaignsResponse = class;
  
  IListDomainDeliverabilityCampaignsResponse = interface(IAmazonWebServiceResponse)
    function GetDomainDeliverabilityCampaigns: TObjectList<TDomainDeliverabilityCampaign>;
    procedure SetDomainDeliverabilityCampaigns(const Value: TObjectList<TDomainDeliverabilityCampaign>);
    function GetKeepDomainDeliverabilityCampaigns: Boolean;
    procedure SetKeepDomainDeliverabilityCampaigns(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDomainDeliverabilityCampaignsResponse;
    function IsSetDomainDeliverabilityCampaigns: Boolean;
    function IsSetNextToken: Boolean;
    property DomainDeliverabilityCampaigns: TObjectList<TDomainDeliverabilityCampaign> read GetDomainDeliverabilityCampaigns write SetDomainDeliverabilityCampaigns;
    property KeepDomainDeliverabilityCampaigns: Boolean read GetKeepDomainDeliverabilityCampaigns write SetKeepDomainDeliverabilityCampaigns;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDomainDeliverabilityCampaignsResponse = class(TAmazonWebServiceResponse, IListDomainDeliverabilityCampaignsResponse)
  strict private
    FDomainDeliverabilityCampaigns: TObjectList<TDomainDeliverabilityCampaign>;
    FKeepDomainDeliverabilityCampaigns: Boolean;
    FNextToken: Nullable<string>;
    function GetDomainDeliverabilityCampaigns: TObjectList<TDomainDeliverabilityCampaign>;
    procedure SetDomainDeliverabilityCampaigns(const Value: TObjectList<TDomainDeliverabilityCampaign>);
    function GetKeepDomainDeliverabilityCampaigns: Boolean;
    procedure SetKeepDomainDeliverabilityCampaigns(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDomainDeliverabilityCampaignsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDomainDeliverabilityCampaigns: Boolean;
    function IsSetNextToken: Boolean;
    property DomainDeliverabilityCampaigns: TObjectList<TDomainDeliverabilityCampaign> read GetDomainDeliverabilityCampaigns write SetDomainDeliverabilityCampaigns;
    property KeepDomainDeliverabilityCampaigns: Boolean read GetKeepDomainDeliverabilityCampaigns write SetKeepDomainDeliverabilityCampaigns;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDomainDeliverabilityCampaignsResponse }

constructor TListDomainDeliverabilityCampaignsResponse.Create;
begin
  inherited;
  FDomainDeliverabilityCampaigns := TObjectList<TDomainDeliverabilityCampaign>.Create;
end;

destructor TListDomainDeliverabilityCampaignsResponse.Destroy;
begin
  DomainDeliverabilityCampaigns := nil;
  inherited;
end;

function TListDomainDeliverabilityCampaignsResponse.Obj: TListDomainDeliverabilityCampaignsResponse;
begin
  Result := Self;
end;

function TListDomainDeliverabilityCampaignsResponse.GetDomainDeliverabilityCampaigns: TObjectList<TDomainDeliverabilityCampaign>;
begin
  Result := FDomainDeliverabilityCampaigns;
end;

procedure TListDomainDeliverabilityCampaignsResponse.SetDomainDeliverabilityCampaigns(const Value: TObjectList<TDomainDeliverabilityCampaign>);
begin
  if FDomainDeliverabilityCampaigns <> Value then
  begin
    if not KeepDomainDeliverabilityCampaigns then
      FDomainDeliverabilityCampaigns.Free;
    FDomainDeliverabilityCampaigns := Value;
  end;
end;

function TListDomainDeliverabilityCampaignsResponse.GetKeepDomainDeliverabilityCampaigns: Boolean;
begin
  Result := FKeepDomainDeliverabilityCampaigns;
end;

procedure TListDomainDeliverabilityCampaignsResponse.SetKeepDomainDeliverabilityCampaigns(const Value: Boolean);
begin
  FKeepDomainDeliverabilityCampaigns := Value;
end;

function TListDomainDeliverabilityCampaignsResponse.IsSetDomainDeliverabilityCampaigns: Boolean;
begin
  Result := (FDomainDeliverabilityCampaigns <> nil) and (FDomainDeliverabilityCampaigns.Count > 0);
end;

function TListDomainDeliverabilityCampaignsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDomainDeliverabilityCampaignsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDomainDeliverabilityCampaignsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
