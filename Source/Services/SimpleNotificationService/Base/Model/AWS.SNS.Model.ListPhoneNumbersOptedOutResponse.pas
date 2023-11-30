unit AWS.SNS.Model.ListPhoneNumbersOptedOutResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TListPhoneNumbersOptedOutResponse = class;
  
  IListPhoneNumbersOptedOutResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TList<string>;
    procedure SetPhoneNumbers(const Value: TList<string>);
    function GetKeepPhoneNumbers: Boolean;
    procedure SetKeepPhoneNumbers(const Value: Boolean);
    function Obj: TListPhoneNumbersOptedOutResponse;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TList<string> read GetPhoneNumbers write SetPhoneNumbers;
    property KeepPhoneNumbers: Boolean read GetKeepPhoneNumbers write SetKeepPhoneNumbers;
  end;
  
  TListPhoneNumbersOptedOutResponse = class(TAmazonWebServiceResponse, IListPhoneNumbersOptedOutResponse)
  strict private
    FNextToken: Nullable<string>;
    FPhoneNumbers: TList<string>;
    FKeepPhoneNumbers: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TList<string>;
    procedure SetPhoneNumbers(const Value: TList<string>);
    function GetKeepPhoneNumbers: Boolean;
    procedure SetKeepPhoneNumbers(const Value: Boolean);
  strict protected
    function Obj: TListPhoneNumbersOptedOutResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TList<string> read GetPhoneNumbers write SetPhoneNumbers;
    property KeepPhoneNumbers: Boolean read GetKeepPhoneNumbers write SetKeepPhoneNumbers;
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
  PhoneNumbers := nil;
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
    if not KeepPhoneNumbers then
      FPhoneNumbers.Free;
    FPhoneNumbers := Value;
  end;
end;

function TListPhoneNumbersOptedOutResponse.GetKeepPhoneNumbers: Boolean;
begin
  Result := FKeepPhoneNumbers;
end;

procedure TListPhoneNumbersOptedOutResponse.SetKeepPhoneNumbers(const Value: Boolean);
begin
  FKeepPhoneNumbers := Value;
end;

function TListPhoneNumbersOptedOutResponse.IsSetPhoneNumbers: Boolean;
begin
  Result := (FPhoneNumbers <> nil) and (FPhoneNumbers.Count > 0);
end;

end.
