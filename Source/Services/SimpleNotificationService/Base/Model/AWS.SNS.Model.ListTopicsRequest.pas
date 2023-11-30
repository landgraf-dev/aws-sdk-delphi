unit AWS.SNS.Model.ListTopicsRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TListTopicsRequest = class;
  
  IListTopicsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListTopicsRequest;
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListTopicsRequest = class(TAmazonSimpleNotificationServiceRequest, IListTopicsRequest)
  strict private
    FNextToken: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListTopicsRequest;
  public
    constructor Create(const ANextToken: string); overload;
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListTopicsRequest }

function TListTopicsRequest.Obj: TListTopicsRequest;
begin
  Result := Self;
end;

constructor TListTopicsRequest.Create(const ANextToken: string);
begin
  Create;
  NextToken := ANextToken;
end;

function TListTopicsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTopicsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTopicsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
