unit AWS.SESv2.Model.ListSuppressedDestinationsRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Model.Request;

type
  TListSuppressedDestinationsRequest = class;
  
  IListSuppressedDestinationsRequest = interface
    function GetEndDate: TDateTime;
    procedure SetEndDate(const Value: TDateTime);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function GetReasons: TList<string>;
    procedure SetReasons(const Value: TList<string>);
    function GetKeepReasons: Boolean;
    procedure SetKeepReasons(const Value: Boolean);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
    function Obj: TListSuppressedDestinationsRequest;
    function IsSetEndDate: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    function IsSetReasons: Boolean;
    function IsSetStartDate: Boolean;
    property EndDate: TDateTime read GetEndDate write SetEndDate;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
    property Reasons: TList<string> read GetReasons write SetReasons;
    property KeepReasons: Boolean read GetKeepReasons write SetKeepReasons;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
  end;
  
  TListSuppressedDestinationsRequest = class(TAmazonSimpleEmailServiceV2Request, IListSuppressedDestinationsRequest)
  strict private
    FEndDate: Nullable<TDateTime>;
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    FReasons: TList<string>;
    FKeepReasons: Boolean;
    FStartDate: Nullable<TDateTime>;
    function GetEndDate: TDateTime;
    procedure SetEndDate(const Value: TDateTime);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function GetReasons: TList<string>;
    procedure SetReasons(const Value: TList<string>);
    function GetKeepReasons: Boolean;
    procedure SetKeepReasons(const Value: Boolean);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
  strict protected
    function Obj: TListSuppressedDestinationsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEndDate: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    function IsSetReasons: Boolean;
    function IsSetStartDate: Boolean;
    property EndDate: TDateTime read GetEndDate write SetEndDate;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
    property Reasons: TList<string> read GetReasons write SetReasons;
    property KeepReasons: Boolean read GetKeepReasons write SetKeepReasons;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
  end;
  
implementation

{ TListSuppressedDestinationsRequest }

constructor TListSuppressedDestinationsRequest.Create;
begin
  inherited;
  FReasons := TList<string>.Create;
end;

destructor TListSuppressedDestinationsRequest.Destroy;
begin
  Reasons := nil;
  inherited;
end;

function TListSuppressedDestinationsRequest.Obj: TListSuppressedDestinationsRequest;
begin
  Result := Self;
end;

function TListSuppressedDestinationsRequest.GetEndDate: TDateTime;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TListSuppressedDestinationsRequest.SetEndDate(const Value: TDateTime);
begin
  FEndDate := Value;
end;

function TListSuppressedDestinationsRequest.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TListSuppressedDestinationsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSuppressedDestinationsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSuppressedDestinationsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListSuppressedDestinationsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListSuppressedDestinationsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListSuppressedDestinationsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

function TListSuppressedDestinationsRequest.GetReasons: TList<string>;
begin
  Result := FReasons;
end;

procedure TListSuppressedDestinationsRequest.SetReasons(const Value: TList<string>);
begin
  if FReasons <> Value then
  begin
    if not KeepReasons then
      FReasons.Free;
    FReasons := Value;
  end;
end;

function TListSuppressedDestinationsRequest.GetKeepReasons: Boolean;
begin
  Result := FKeepReasons;
end;

procedure TListSuppressedDestinationsRequest.SetKeepReasons(const Value: Boolean);
begin
  FKeepReasons := Value;
end;

function TListSuppressedDestinationsRequest.IsSetReasons: Boolean;
begin
  Result := (FReasons <> nil) and (FReasons.Count > 0);
end;

function TListSuppressedDestinationsRequest.GetStartDate: TDateTime;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TListSuppressedDestinationsRequest.SetStartDate(const Value: TDateTime);
begin
  FStartDate := Value;
end;

function TListSuppressedDestinationsRequest.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

end.
