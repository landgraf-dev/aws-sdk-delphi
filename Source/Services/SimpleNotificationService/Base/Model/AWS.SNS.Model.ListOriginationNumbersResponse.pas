unit AWS.SNS.Model.ListOriginationNumbersResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.PhoneNumberInformation;

type
  TListOriginationNumbersResponse = class;
  
  IListOriginationNumbersResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TObjectList<TPhoneNumberInformation>;
    procedure SetPhoneNumbers(const Value: TObjectList<TPhoneNumberInformation>);
    function Obj: TListOriginationNumbersResponse;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TObjectList<TPhoneNumberInformation> read GetPhoneNumbers write SetPhoneNumbers;
  end;
  
  TListOriginationNumbersResponse = class(TAmazonWebServiceResponse, IListOriginationNumbersResponse)
  strict private
    FNextToken: Nullable<string>;
    FPhoneNumbers: TObjectList<TPhoneNumberInformation>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPhoneNumbers: TObjectList<TPhoneNumberInformation>;
    procedure SetPhoneNumbers(const Value: TObjectList<TPhoneNumberInformation>);
  strict protected
    function Obj: TListOriginationNumbersResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetPhoneNumbers: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PhoneNumbers: TObjectList<TPhoneNumberInformation> read GetPhoneNumbers write SetPhoneNumbers;
  end;
  
implementation

{ TListOriginationNumbersResponse }

constructor TListOriginationNumbersResponse.Create;
begin
  inherited;
  FPhoneNumbers := TObjectList<TPhoneNumberInformation>.Create;
end;

destructor TListOriginationNumbersResponse.Destroy;
begin
  PhoneNumbers := nil;
  inherited;
end;

function TListOriginationNumbersResponse.Obj: TListOriginationNumbersResponse;
begin
  Result := Self;
end;

function TListOriginationNumbersResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListOriginationNumbersResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListOriginationNumbersResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListOriginationNumbersResponse.GetPhoneNumbers: TObjectList<TPhoneNumberInformation>;
begin
  Result := FPhoneNumbers;
end;

procedure TListOriginationNumbersResponse.SetPhoneNumbers(const Value: TObjectList<TPhoneNumberInformation>);
begin
  if FPhoneNumbers <> Value then
  begin
    FPhoneNumbers.Free;
    FPhoneNumbers := Value;
  end;
end;

function TListOriginationNumbersResponse.IsSetPhoneNumbers: Boolean;
begin
  Result := (FPhoneNumbers <> nil) and (FPhoneNumbers.Count > 0);
end;

end.
