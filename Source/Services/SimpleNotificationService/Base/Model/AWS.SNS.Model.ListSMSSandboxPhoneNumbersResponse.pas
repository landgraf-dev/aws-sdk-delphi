unit AWS.SNS.Model.ListSMSSandboxPhoneNumbersResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.SMSSandboxPhoneNumber;

type
  TListSMSSandboxPhoneNumbersResponse = class;
  
  IListSMSSandboxPhoneNumbersResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TObjectList<TSMSSandboxPhoneNumber>;
    procedure SetPhoneNumbers(const Value: TObjectList<TSMSSandboxPhoneNumber>);
    function Obj: TListSMSSandboxPhoneNumbersResponse;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TObjectList<TSMSSandboxPhoneNumber> read GetPhoneNumbers write SetPhoneNumbers;
  end;
  
  TListSMSSandboxPhoneNumbersResponse = class(TAmazonWebServiceResponse, IListSMSSandboxPhoneNumbersResponse)
  strict private
    FNextToken: Nullable<string>;
    FPhoneNumbers: TObjectList<TSMSSandboxPhoneNumber>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TObjectList<TSMSSandboxPhoneNumber>;
    procedure SetPhoneNumbers(const Value: TObjectList<TSMSSandboxPhoneNumber>);
  strict protected
    function Obj: TListSMSSandboxPhoneNumbersResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TObjectList<TSMSSandboxPhoneNumber> read GetPhoneNumbers write SetPhoneNumbers;
  end;
  
implementation

{ TListSMSSandboxPhoneNumbersResponse }

constructor TListSMSSandboxPhoneNumbersResponse.Create;
begin
  inherited;
  FPhoneNumbers := TObjectList<TSMSSandboxPhoneNumber>.Create;
end;

destructor TListSMSSandboxPhoneNumbersResponse.Destroy;
begin
  FPhoneNumbers.Free;
  inherited;
end;

function TListSMSSandboxPhoneNumbersResponse.Obj: TListSMSSandboxPhoneNumbersResponse;
begin
  Result := Self;
end;

function TListSMSSandboxPhoneNumbersResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSMSSandboxPhoneNumbersResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSMSSandboxPhoneNumbersResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListSMSSandboxPhoneNumbersResponse.GetPhoneNumbers: TObjectList<TSMSSandboxPhoneNumber>;
begin
  Result := FPhoneNumbers;
end;

procedure TListSMSSandboxPhoneNumbersResponse.SetPhoneNumbers(const Value: TObjectList<TSMSSandboxPhoneNumber>);
begin
  if FPhoneNumbers <> Value then
  begin
    FPhoneNumbers.Free;
    FPhoneNumbers := Value;
  end;
end;

function TListSMSSandboxPhoneNumbersResponse.IsSetPhoneNumbers: Boolean;
begin
  Result := (FPhoneNumbers <> nil) and (FPhoneNumbers.Count > 0);
end;

end.
