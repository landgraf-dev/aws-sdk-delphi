unit AWS.SNS.Model.ListSMSSandboxPhoneNumbersResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SNS.Model.SMSSandboxPhoneNumber;

type
  TListSMSSandboxPhoneNumbersResponse = class;
  
  IListSMSSandboxPhoneNumbersResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TObjectList<TSMSSandboxPhoneNumber>;
    procedure SetPhoneNumbers(const Value: TObjectList<TSMSSandboxPhoneNumber>);
    function GetKeepPhoneNumbers: Boolean;
    procedure SetKeepPhoneNumbers(const Value: Boolean);
    function Obj: TListSMSSandboxPhoneNumbersResponse;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TObjectList<TSMSSandboxPhoneNumber> read GetPhoneNumbers write SetPhoneNumbers;
    property KeepPhoneNumbers: Boolean read GetKeepPhoneNumbers write SetKeepPhoneNumbers;
  end;
  
  TListSMSSandboxPhoneNumbersResponse = class(TAmazonWebServiceResponse, IListSMSSandboxPhoneNumbersResponse)
  strict private
    FNextToken: Nullable<string>;
    FPhoneNumbers: TObjectList<TSMSSandboxPhoneNumber>;
    FKeepPhoneNumbers: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TObjectList<TSMSSandboxPhoneNumber>;
    procedure SetPhoneNumbers(const Value: TObjectList<TSMSSandboxPhoneNumber>);
    function GetKeepPhoneNumbers: Boolean;
    procedure SetKeepPhoneNumbers(const Value: Boolean);
  strict protected
    function Obj: TListSMSSandboxPhoneNumbersResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TObjectList<TSMSSandboxPhoneNumber> read GetPhoneNumbers write SetPhoneNumbers;
    property KeepPhoneNumbers: Boolean read GetKeepPhoneNumbers write SetKeepPhoneNumbers;
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
  PhoneNumbers := nil;
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
    if not KeepPhoneNumbers then
      FPhoneNumbers.Free;
    FPhoneNumbers := Value;
  end;
end;

function TListSMSSandboxPhoneNumbersResponse.GetKeepPhoneNumbers: Boolean;
begin
  Result := FKeepPhoneNumbers;
end;

procedure TListSMSSandboxPhoneNumbersResponse.SetKeepPhoneNumbers(const Value: Boolean);
begin
  FKeepPhoneNumbers := Value;
end;

function TListSMSSandboxPhoneNumbersResponse.IsSetPhoneNumbers: Boolean;
begin
  Result := (FPhoneNumbers <> nil) and (FPhoneNumbers.Count > 0);
end;

end.
