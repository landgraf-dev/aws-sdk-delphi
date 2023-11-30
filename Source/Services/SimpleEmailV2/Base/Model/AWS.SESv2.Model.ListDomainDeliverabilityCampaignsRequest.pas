unit AWS.SESv2.Model.ListDomainDeliverabilityCampaignsRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TListDomainDeliverabilityCampaignsRequest = class;
  
  IListDomainDeliverabilityCampaignsRequest = interface
    function GetEndDate: TDateTime;
    procedure SetEndDate(const Value: TDateTime);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
    function GetSubscribedDomain: string;
    procedure SetSubscribedDomain(const Value: string);
    function Obj: TListDomainDeliverabilityCampaignsRequest;
    function IsSetEndDate: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetSubscribedDomain: Boolean;
    property EndDate: TDateTime read GetEndDate write SetEndDate;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
    property SubscribedDomain: string read GetSubscribedDomain write SetSubscribedDomain;
  end;
  
  TListDomainDeliverabilityCampaignsRequest = class(TAmazonSimpleEmailServiceV2Request, IListDomainDeliverabilityCampaignsRequest)
  strict private
    FEndDate: Nullable<TDateTime>;
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    FStartDate: Nullable<TDateTime>;
    FSubscribedDomain: Nullable<string>;
    function GetEndDate: TDateTime;
    procedure SetEndDate(const Value: TDateTime);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
    function GetSubscribedDomain: string;
    procedure SetSubscribedDomain(const Value: string);
  strict protected
    function Obj: TListDomainDeliverabilityCampaignsRequest;
  public
    function IsSetEndDate: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetSubscribedDomain: Boolean;
    property EndDate: TDateTime read GetEndDate write SetEndDate;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
    property SubscribedDomain: string read GetSubscribedDomain write SetSubscribedDomain;
  end;
  
implementation

{ TListDomainDeliverabilityCampaignsRequest }

function TListDomainDeliverabilityCampaignsRequest.Obj: TListDomainDeliverabilityCampaignsRequest;
begin
  Result := Self;
end;

function TListDomainDeliverabilityCampaignsRequest.GetEndDate: TDateTime;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TListDomainDeliverabilityCampaignsRequest.SetEndDate(const Value: TDateTime);
begin
  FEndDate := Value;
end;

function TListDomainDeliverabilityCampaignsRequest.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TListDomainDeliverabilityCampaignsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDomainDeliverabilityCampaignsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDomainDeliverabilityCampaignsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListDomainDeliverabilityCampaignsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListDomainDeliverabilityCampaignsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListDomainDeliverabilityCampaignsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

function TListDomainDeliverabilityCampaignsRequest.GetStartDate: TDateTime;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TListDomainDeliverabilityCampaignsRequest.SetStartDate(const Value: TDateTime);
begin
  FStartDate := Value;
end;

function TListDomainDeliverabilityCampaignsRequest.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

function TListDomainDeliverabilityCampaignsRequest.GetSubscribedDomain: string;
begin
  Result := FSubscribedDomain.ValueOrDefault;
end;

procedure TListDomainDeliverabilityCampaignsRequest.SetSubscribedDomain(const Value: string);
begin
  FSubscribedDomain := Value;
end;

function TListDomainDeliverabilityCampaignsRequest.IsSetSubscribedDomain: Boolean;
begin
  Result := FSubscribedDomain.HasValue;
end;

end.
