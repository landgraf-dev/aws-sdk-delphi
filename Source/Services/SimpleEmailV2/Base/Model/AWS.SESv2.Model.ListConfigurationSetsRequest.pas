unit AWS.SESv2.Model.ListConfigurationSetsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TListConfigurationSetsRequest = class;
  
  IListConfigurationSetsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListConfigurationSetsRequest;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListConfigurationSetsRequest = class(TAmazonSimpleEmailServiceV2Request, IListConfigurationSetsRequest)
  strict private
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListConfigurationSetsRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListConfigurationSetsRequest }

function TListConfigurationSetsRequest.Obj: TListConfigurationSetsRequest;
begin
  Result := Self;
end;

function TListConfigurationSetsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListConfigurationSetsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListConfigurationSetsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListConfigurationSetsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListConfigurationSetsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListConfigurationSetsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
