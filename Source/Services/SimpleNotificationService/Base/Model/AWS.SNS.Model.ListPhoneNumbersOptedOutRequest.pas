unit AWS.SNS.Model.ListPhoneNumbersOptedOutRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TListPhoneNumbersOptedOutRequest = class;
  
  IListPhoneNumbersOptedOutRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListPhoneNumbersOptedOutRequest;
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListPhoneNumbersOptedOutRequest = class(TAmazonSimpleNotificationServiceRequest, IListPhoneNumbersOptedOutRequest)
  strict private
    FNextToken: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListPhoneNumbersOptedOutRequest;
  public
    function IsSetNextToken: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListPhoneNumbersOptedOutRequest }

function TListPhoneNumbersOptedOutRequest.Obj: TListPhoneNumbersOptedOutRequest;
begin
  Result := Self;
end;

function TListPhoneNumbersOptedOutRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListPhoneNumbersOptedOutRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListPhoneNumbersOptedOutRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
