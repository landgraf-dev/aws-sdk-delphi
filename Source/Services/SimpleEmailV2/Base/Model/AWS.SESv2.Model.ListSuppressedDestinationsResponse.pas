unit AWS.SESv2.Model.ListSuppressedDestinationsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SESv2.Model.SuppressedDestinationSummary;

type
  TListSuppressedDestinationsResponse = class;
  
  IListSuppressedDestinationsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSuppressedDestinationSummaries: TObjectList<TSuppressedDestinationSummary>;
    procedure SetSuppressedDestinationSummaries(const Value: TObjectList<TSuppressedDestinationSummary>);
    function GetKeepSuppressedDestinationSummaries: Boolean;
    procedure SetKeepSuppressedDestinationSummaries(const Value: Boolean);
    function Obj: TListSuppressedDestinationsResponse;
    function IsSetNextToken: Boolean;
    function IsSetSuppressedDestinationSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property SuppressedDestinationSummaries: TObjectList<TSuppressedDestinationSummary> read GetSuppressedDestinationSummaries write SetSuppressedDestinationSummaries;
    property KeepSuppressedDestinationSummaries: Boolean read GetKeepSuppressedDestinationSummaries write SetKeepSuppressedDestinationSummaries;
  end;
  
  TListSuppressedDestinationsResponse = class(TAmazonWebServiceResponse, IListSuppressedDestinationsResponse)
  strict private
    FNextToken: Nullable<string>;
    FSuppressedDestinationSummaries: TObjectList<TSuppressedDestinationSummary>;
    FKeepSuppressedDestinationSummaries: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSuppressedDestinationSummaries: TObjectList<TSuppressedDestinationSummary>;
    procedure SetSuppressedDestinationSummaries(const Value: TObjectList<TSuppressedDestinationSummary>);
    function GetKeepSuppressedDestinationSummaries: Boolean;
    procedure SetKeepSuppressedDestinationSummaries(const Value: Boolean);
  strict protected
    function Obj: TListSuppressedDestinationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSuppressedDestinationSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property SuppressedDestinationSummaries: TObjectList<TSuppressedDestinationSummary> read GetSuppressedDestinationSummaries write SetSuppressedDestinationSummaries;
    property KeepSuppressedDestinationSummaries: Boolean read GetKeepSuppressedDestinationSummaries write SetKeepSuppressedDestinationSummaries;
  end;
  
implementation

{ TListSuppressedDestinationsResponse }

constructor TListSuppressedDestinationsResponse.Create;
begin
  inherited;
  FSuppressedDestinationSummaries := TObjectList<TSuppressedDestinationSummary>.Create;
end;

destructor TListSuppressedDestinationsResponse.Destroy;
begin
  SuppressedDestinationSummaries := nil;
  inherited;
end;

function TListSuppressedDestinationsResponse.Obj: TListSuppressedDestinationsResponse;
begin
  Result := Self;
end;

function TListSuppressedDestinationsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSuppressedDestinationsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSuppressedDestinationsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListSuppressedDestinationsResponse.GetSuppressedDestinationSummaries: TObjectList<TSuppressedDestinationSummary>;
begin
  Result := FSuppressedDestinationSummaries;
end;

procedure TListSuppressedDestinationsResponse.SetSuppressedDestinationSummaries(const Value: TObjectList<TSuppressedDestinationSummary>);
begin
  if FSuppressedDestinationSummaries <> Value then
  begin
    if not KeepSuppressedDestinationSummaries then
      FSuppressedDestinationSummaries.Free;
    FSuppressedDestinationSummaries := Value;
  end;
end;

function TListSuppressedDestinationsResponse.GetKeepSuppressedDestinationSummaries: Boolean;
begin
  Result := FKeepSuppressedDestinationSummaries;
end;

procedure TListSuppressedDestinationsResponse.SetKeepSuppressedDestinationSummaries(const Value: Boolean);
begin
  FKeepSuppressedDestinationSummaries := Value;
end;

function TListSuppressedDestinationsResponse.IsSetSuppressedDestinationSummaries: Boolean;
begin
  Result := (FSuppressedDestinationSummaries <> nil) and (FSuppressedDestinationSummaries.Count > 0);
end;

end.
