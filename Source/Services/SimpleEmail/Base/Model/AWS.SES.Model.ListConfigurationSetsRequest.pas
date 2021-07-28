unit AWS.SES.Model.ListConfigurationSetsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TListConfigurationSetsRequest = class;
  
  IListConfigurationSetsRequest = interface
    function GetMaxItems: Integer;
    procedure SetMaxItems(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListConfigurationSetsRequest;
    function IsSetMaxItems: Boolean;
    function IsSetNextToken: Boolean;
    property MaxItems: Integer read GetMaxItems write SetMaxItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListConfigurationSetsRequest = class(TAmazonSimpleEmailServiceRequest, IListConfigurationSetsRequest)
  strict private
    FMaxItems: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxItems: Integer;
    procedure SetMaxItems(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListConfigurationSetsRequest;
  public
    function IsSetMaxItems: Boolean;
    function IsSetNextToken: Boolean;
    property MaxItems: Integer read GetMaxItems write SetMaxItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListConfigurationSetsRequest }

function TListConfigurationSetsRequest.Obj: TListConfigurationSetsRequest;
begin
  Result := Self;
end;

function TListConfigurationSetsRequest.GetMaxItems: Integer;
begin
  Result := FMaxItems.ValueOrDefault;
end;

procedure TListConfigurationSetsRequest.SetMaxItems(const Value: Integer);
begin
  FMaxItems := Value;
end;

function TListConfigurationSetsRequest.IsSetMaxItems: Boolean;
begin
  Result := FMaxItems.HasValue;
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

end.
