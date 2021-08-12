unit AWS.SNS.Model.ListPhoneNumbersOptedOutResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TListPhoneNumbersOptedOutResponse = class;
  
  IListPhoneNumbersOptedOutResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TList<string>;
    procedure SetPhoneNumbers(const Value: TList<string>);
    function Obj: TListPhoneNumbersOptedOutResponse;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TList<string> read GetPhoneNumbers write SetPhoneNumbers;
  end;
  
  TListPhoneNumbersOptedOutResponse = class(TAmazonWebServiceResponse, IListPhoneNumbersOptedOutResponse)
  strict private
    FNextToken: Nullable<string>;
    FPhoneNumbers: TList<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TList<string>;
    procedure SetPhoneNumbers(const Value: TList<string>);
  strict protected
    function Obj: TListPhoneNumbersOptedOutResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TList<string> read GetPhoneNumbers write SetPhoneNumbers;
  end;
  
implementation

{ TListPhoneNumbersOptedOutResponse }

constructor TListPhoneNumbersOptedOutResponse.Create;
begin
  inherited;
  FPhoneNumbers := TList<string>.Create;
end;

destructor TListPhoneNumbersOptedOutResponse.Destroy;
begin
  FPhoneNumbers.Free;
  inherited;
end;

function TListPhoneNumbersOptedOutResponse.Obj: TListPhoneNumbersOptedOutResponse;
begin
  Result := Self;
end;

function TListPhoneNumbersOptedOutResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListPhoneNumbersOptedOutResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListPhoneNumbersOptedOutResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListPhoneNumbersOptedOutResponse.GetPhoneNumbers: TList<string>;
begin
  Result := FPhoneNumbers;
end;

procedure TListPhoneNumbersOptedOutResponse.SetPhoneNumbers(const Value: TList<string>);
begin
  if FPhoneNumbers <> Value then
  begin
    FPhoneNumbers.Free;
    FPhoneNumbers := Value;
  end;
end;

function TListPhoneNumbersOptedOutResponse.IsSetPhoneNumbers: Boolean;
begin
  Result := (FPhoneNumbers <> nil) and (FPhoneNumbers.Count > 0);
end;

end.
