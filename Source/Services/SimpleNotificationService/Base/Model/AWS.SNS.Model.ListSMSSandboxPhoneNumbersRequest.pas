unit AWS.SNS.Model.ListSMSSandboxPhoneNumbersRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TListSMSSandboxPhoneNumbersRequest = class;
  
  IListSMSSandboxPhoneNumbersRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListSMSSandboxPhoneNumbersRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListSMSSandboxPhoneNumbersRequest = class(TAmazonSimpleNotificationServiceRequest, IListSMSSandboxPhoneNumbersRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListSMSSandboxPhoneNumbersRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListSMSSandboxPhoneNumbersRequest }

function TListSMSSandboxPhoneNumbersRequest.Obj: TListSMSSandboxPhoneNumbersRequest;
begin
  Result := Self;
end;

function TListSMSSandboxPhoneNumbersRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListSMSSandboxPhoneNumbersRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListSMSSandboxPhoneNumbersRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListSMSSandboxPhoneNumbersRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSMSSandboxPhoneNumbersRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSMSSandboxPhoneNumbersRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
