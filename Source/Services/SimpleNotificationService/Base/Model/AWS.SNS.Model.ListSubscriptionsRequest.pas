unit AWS.SNS.Model.ListSubscriptionsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TListSubscriptionsRequest = class;
  
  IListSubscriptionsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListSubscriptionsRequest;
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListSubscriptionsRequest = class(TAmazonSimpleNotificationServiceRequest, IListSubscriptionsRequest)
  strict private
    FNextToken: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListSubscriptionsRequest;
  public
    constructor Create(const ANextToken: string); overload;
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListSubscriptionsRequest }

function TListSubscriptionsRequest.Obj: TListSubscriptionsRequest;
begin
  Result := Self;
end;

constructor TListSubscriptionsRequest.Create(const ANextToken: string);
begin
  Create;
  NextToken := ANextToken;
end;

function TListSubscriptionsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSubscriptionsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSubscriptionsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
