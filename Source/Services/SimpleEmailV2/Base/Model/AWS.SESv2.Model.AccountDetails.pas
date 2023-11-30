unit AWS.SESv2.Model.AccountDetails;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SESv2.Enums, 
  AWS.SESv2.Model.ReviewDetails;

type
  TAccountDetails = class;
  
  IAccountDetails = interface
    function GetAdditionalContactEmailAddresses: TList<string>;
    procedure SetAdditionalContactEmailAddresses(const Value: TList<string>);
    function GetKeepAdditionalContactEmailAddresses: Boolean;
    procedure SetKeepAdditionalContactEmailAddresses(const Value: Boolean);
    function GetContactLanguage: TContactLanguage;
    procedure SetContactLanguage(const Value: TContactLanguage);
    function GetMailType: TMailType;
    procedure SetMailType(const Value: TMailType);
    function GetReviewDetails: TReviewDetails;
    procedure SetReviewDetails(const Value: TReviewDetails);
    function GetKeepReviewDetails: Boolean;
    procedure SetKeepReviewDetails(const Value: Boolean);
    function GetUseCaseDescription: string;
    procedure SetUseCaseDescription(const Value: string);
    function GetWebsiteURL: string;
    procedure SetWebsiteURL(const Value: string);
    function Obj: TAccountDetails;
    function IsSetAdditionalContactEmailAddresses: Boolean;
    function IsSetContactLanguage: Boolean;
    function IsSetMailType: Boolean;
    function IsSetReviewDetails: Boolean;
    function IsSetUseCaseDescription: Boolean;
    function IsSetWebsiteURL: Boolean;
    property AdditionalContactEmailAddresses: TList<string> read GetAdditionalContactEmailAddresses write SetAdditionalContactEmailAddresses;
    property KeepAdditionalContactEmailAddresses: Boolean read GetKeepAdditionalContactEmailAddresses write SetKeepAdditionalContactEmailAddresses;
    property ContactLanguage: TContactLanguage read GetContactLanguage write SetContactLanguage;
    property MailType: TMailType read GetMailType write SetMailType;
    property ReviewDetails: TReviewDetails read GetReviewDetails write SetReviewDetails;
    property KeepReviewDetails: Boolean read GetKeepReviewDetails write SetKeepReviewDetails;
    property UseCaseDescription: string read GetUseCaseDescription write SetUseCaseDescription;
    property WebsiteURL: string read GetWebsiteURL write SetWebsiteURL;
  end;
  
  TAccountDetails = class
  strict private
    FAdditionalContactEmailAddresses: TList<string>;
    FKeepAdditionalContactEmailAddresses: Boolean;
    FContactLanguage: Nullable<TContactLanguage>;
    FMailType: Nullable<TMailType>;
    FReviewDetails: TReviewDetails;
    FKeepReviewDetails: Boolean;
    FUseCaseDescription: Nullable<string>;
    FWebsiteURL: Nullable<string>;
    function GetAdditionalContactEmailAddresses: TList<string>;
    procedure SetAdditionalContactEmailAddresses(const Value: TList<string>);
    function GetKeepAdditionalContactEmailAddresses: Boolean;
    procedure SetKeepAdditionalContactEmailAddresses(const Value: Boolean);
    function GetContactLanguage: TContactLanguage;
    procedure SetContactLanguage(const Value: TContactLanguage);
    function GetMailType: TMailType;
    procedure SetMailType(const Value: TMailType);
    function GetReviewDetails: TReviewDetails;
    procedure SetReviewDetails(const Value: TReviewDetails);
    function GetKeepReviewDetails: Boolean;
    procedure SetKeepReviewDetails(const Value: Boolean);
    function GetUseCaseDescription: string;
    procedure SetUseCaseDescription(const Value: string);
    function GetWebsiteURL: string;
    procedure SetWebsiteURL(const Value: string);
  strict protected
    function Obj: TAccountDetails;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAdditionalContactEmailAddresses: Boolean;
    function IsSetContactLanguage: Boolean;
    function IsSetMailType: Boolean;
    function IsSetReviewDetails: Boolean;
    function IsSetUseCaseDescription: Boolean;
    function IsSetWebsiteURL: Boolean;
    property AdditionalContactEmailAddresses: TList<string> read GetAdditionalContactEmailAddresses write SetAdditionalContactEmailAddresses;
    property KeepAdditionalContactEmailAddresses: Boolean read GetKeepAdditionalContactEmailAddresses write SetKeepAdditionalContactEmailAddresses;
    property ContactLanguage: TContactLanguage read GetContactLanguage write SetContactLanguage;
    property MailType: TMailType read GetMailType write SetMailType;
    property ReviewDetails: TReviewDetails read GetReviewDetails write SetReviewDetails;
    property KeepReviewDetails: Boolean read GetKeepReviewDetails write SetKeepReviewDetails;
    property UseCaseDescription: string read GetUseCaseDescription write SetUseCaseDescription;
    property WebsiteURL: string read GetWebsiteURL write SetWebsiteURL;
  end;
  
implementation

{ TAccountDetails }

constructor TAccountDetails.Create;
begin
  inherited;
  FAdditionalContactEmailAddresses := TList<string>.Create;
end;

destructor TAccountDetails.Destroy;
begin
  ReviewDetails := nil;
  AdditionalContactEmailAddresses := nil;
  inherited;
end;

function TAccountDetails.Obj: TAccountDetails;
begin
  Result := Self;
end;

function TAccountDetails.GetAdditionalContactEmailAddresses: TList<string>;
begin
  Result := FAdditionalContactEmailAddresses;
end;

procedure TAccountDetails.SetAdditionalContactEmailAddresses(const Value: TList<string>);
begin
  if FAdditionalContactEmailAddresses <> Value then
  begin
    if not KeepAdditionalContactEmailAddresses then
      FAdditionalContactEmailAddresses.Free;
    FAdditionalContactEmailAddresses := Value;
  end;
end;

function TAccountDetails.GetKeepAdditionalContactEmailAddresses: Boolean;
begin
  Result := FKeepAdditionalContactEmailAddresses;
end;

procedure TAccountDetails.SetKeepAdditionalContactEmailAddresses(const Value: Boolean);
begin
  FKeepAdditionalContactEmailAddresses := Value;
end;

function TAccountDetails.IsSetAdditionalContactEmailAddresses: Boolean;
begin
  Result := (FAdditionalContactEmailAddresses <> nil) and (FAdditionalContactEmailAddresses.Count > 0);
end;

function TAccountDetails.GetContactLanguage: TContactLanguage;
begin
  Result := FContactLanguage.ValueOrDefault;
end;

procedure TAccountDetails.SetContactLanguage(const Value: TContactLanguage);
begin
  FContactLanguage := Value;
end;

function TAccountDetails.IsSetContactLanguage: Boolean;
begin
  Result := FContactLanguage.HasValue;
end;

function TAccountDetails.GetMailType: TMailType;
begin
  Result := FMailType.ValueOrDefault;
end;

procedure TAccountDetails.SetMailType(const Value: TMailType);
begin
  FMailType := Value;
end;

function TAccountDetails.IsSetMailType: Boolean;
begin
  Result := FMailType.HasValue;
end;

function TAccountDetails.GetReviewDetails: TReviewDetails;
begin
  Result := FReviewDetails;
end;

procedure TAccountDetails.SetReviewDetails(const Value: TReviewDetails);
begin
  if FReviewDetails <> Value then
  begin
    if not KeepReviewDetails then
      FReviewDetails.Free;
    FReviewDetails := Value;
  end;
end;

function TAccountDetails.GetKeepReviewDetails: Boolean;
begin
  Result := FKeepReviewDetails;
end;

procedure TAccountDetails.SetKeepReviewDetails(const Value: Boolean);
begin
  FKeepReviewDetails := Value;
end;

function TAccountDetails.IsSetReviewDetails: Boolean;
begin
  Result := FReviewDetails <> nil;
end;

function TAccountDetails.GetUseCaseDescription: string;
begin
  Result := FUseCaseDescription.ValueOrDefault;
end;

procedure TAccountDetails.SetUseCaseDescription(const Value: string);
begin
  FUseCaseDescription := Value;
end;

function TAccountDetails.IsSetUseCaseDescription: Boolean;
begin
  Result := FUseCaseDescription.HasValue;
end;

function TAccountDetails.GetWebsiteURL: string;
begin
  Result := FWebsiteURL.ValueOrDefault;
end;

procedure TAccountDetails.SetWebsiteURL(const Value: string);
begin
  FWebsiteURL := Value;
end;

function TAccountDetails.IsSetWebsiteURL: Boolean;
begin
  Result := FWebsiteURL.HasValue;
end;

end.
