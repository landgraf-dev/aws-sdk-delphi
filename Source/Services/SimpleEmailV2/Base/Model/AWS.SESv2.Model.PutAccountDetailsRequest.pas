unit AWS.SESv2.Model.PutAccountDetailsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TPutAccountDetailsRequest = class;
  
  IPutAccountDetailsRequest = interface
    function GetAdditionalContactEmailAddresses: TList<string>;
    procedure SetAdditionalContactEmailAddresses(const Value: TList<string>);
    function GetKeepAdditionalContactEmailAddresses: Boolean;
    procedure SetKeepAdditionalContactEmailAddresses(const Value: Boolean);
    function GetContactLanguage: TContactLanguage;
    procedure SetContactLanguage(const Value: TContactLanguage);
    function GetMailType: TMailType;
    procedure SetMailType(const Value: TMailType);
    function GetProductionAccessEnabled: Boolean;
    procedure SetProductionAccessEnabled(const Value: Boolean);
    function GetUseCaseDescription: string;
    procedure SetUseCaseDescription(const Value: string);
    function GetWebsiteURL: string;
    procedure SetWebsiteURL(const Value: string);
    function Obj: TPutAccountDetailsRequest;
    function IsSetAdditionalContactEmailAddresses: Boolean;
    function IsSetContactLanguage: Boolean;
    function IsSetMailType: Boolean;
    function IsSetProductionAccessEnabled: Boolean;
    function IsSetUseCaseDescription: Boolean;
    function IsSetWebsiteURL: Boolean;
    property AdditionalContactEmailAddresses: TList<string> read GetAdditionalContactEmailAddresses write SetAdditionalContactEmailAddresses;
    property KeepAdditionalContactEmailAddresses: Boolean read GetKeepAdditionalContactEmailAddresses write SetKeepAdditionalContactEmailAddresses;
    property ContactLanguage: TContactLanguage read GetContactLanguage write SetContactLanguage;
    property MailType: TMailType read GetMailType write SetMailType;
    property ProductionAccessEnabled: Boolean read GetProductionAccessEnabled write SetProductionAccessEnabled;
    property UseCaseDescription: string read GetUseCaseDescription write SetUseCaseDescription;
    property WebsiteURL: string read GetWebsiteURL write SetWebsiteURL;
  end;
  
  TPutAccountDetailsRequest = class(TAmazonSimpleEmailServiceV2Request, IPutAccountDetailsRequest)
  strict private
    FAdditionalContactEmailAddresses: TList<string>;
    FKeepAdditionalContactEmailAddresses: Boolean;
    FContactLanguage: Nullable<TContactLanguage>;
    FMailType: Nullable<TMailType>;
    FProductionAccessEnabled: Nullable<Boolean>;
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
    function GetProductionAccessEnabled: Boolean;
    procedure SetProductionAccessEnabled(const Value: Boolean);
    function GetUseCaseDescription: string;
    procedure SetUseCaseDescription(const Value: string);
    function GetWebsiteURL: string;
    procedure SetWebsiteURL(const Value: string);
  strict protected
    function Obj: TPutAccountDetailsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAdditionalContactEmailAddresses: Boolean;
    function IsSetContactLanguage: Boolean;
    function IsSetMailType: Boolean;
    function IsSetProductionAccessEnabled: Boolean;
    function IsSetUseCaseDescription: Boolean;
    function IsSetWebsiteURL: Boolean;
    property AdditionalContactEmailAddresses: TList<string> read GetAdditionalContactEmailAddresses write SetAdditionalContactEmailAddresses;
    property KeepAdditionalContactEmailAddresses: Boolean read GetKeepAdditionalContactEmailAddresses write SetKeepAdditionalContactEmailAddresses;
    property ContactLanguage: TContactLanguage read GetContactLanguage write SetContactLanguage;
    property MailType: TMailType read GetMailType write SetMailType;
    property ProductionAccessEnabled: Boolean read GetProductionAccessEnabled write SetProductionAccessEnabled;
    property UseCaseDescription: string read GetUseCaseDescription write SetUseCaseDescription;
    property WebsiteURL: string read GetWebsiteURL write SetWebsiteURL;
  end;
  
implementation

{ TPutAccountDetailsRequest }

constructor TPutAccountDetailsRequest.Create;
begin
  inherited;
  FAdditionalContactEmailAddresses := TList<string>.Create;
end;

destructor TPutAccountDetailsRequest.Destroy;
begin
  AdditionalContactEmailAddresses := nil;
  inherited;
end;

function TPutAccountDetailsRequest.Obj: TPutAccountDetailsRequest;
begin
  Result := Self;
end;

function TPutAccountDetailsRequest.GetAdditionalContactEmailAddresses: TList<string>;
begin
  Result := FAdditionalContactEmailAddresses;
end;

procedure TPutAccountDetailsRequest.SetAdditionalContactEmailAddresses(const Value: TList<string>);
begin
  if FAdditionalContactEmailAddresses <> Value then
  begin
    if not KeepAdditionalContactEmailAddresses then
      FAdditionalContactEmailAddresses.Free;
    FAdditionalContactEmailAddresses := Value;
  end;
end;

function TPutAccountDetailsRequest.GetKeepAdditionalContactEmailAddresses: Boolean;
begin
  Result := FKeepAdditionalContactEmailAddresses;
end;

procedure TPutAccountDetailsRequest.SetKeepAdditionalContactEmailAddresses(const Value: Boolean);
begin
  FKeepAdditionalContactEmailAddresses := Value;
end;

function TPutAccountDetailsRequest.IsSetAdditionalContactEmailAddresses: Boolean;
begin
  Result := (FAdditionalContactEmailAddresses <> nil) and (FAdditionalContactEmailAddresses.Count > 0);
end;

function TPutAccountDetailsRequest.GetContactLanguage: TContactLanguage;
begin
  Result := FContactLanguage.ValueOrDefault;
end;

procedure TPutAccountDetailsRequest.SetContactLanguage(const Value: TContactLanguage);
begin
  FContactLanguage := Value;
end;

function TPutAccountDetailsRequest.IsSetContactLanguage: Boolean;
begin
  Result := FContactLanguage.HasValue;
end;

function TPutAccountDetailsRequest.GetMailType: TMailType;
begin
  Result := FMailType.ValueOrDefault;
end;

procedure TPutAccountDetailsRequest.SetMailType(const Value: TMailType);
begin
  FMailType := Value;
end;

function TPutAccountDetailsRequest.IsSetMailType: Boolean;
begin
  Result := FMailType.HasValue;
end;

function TPutAccountDetailsRequest.GetProductionAccessEnabled: Boolean;
begin
  Result := FProductionAccessEnabled.ValueOrDefault;
end;

procedure TPutAccountDetailsRequest.SetProductionAccessEnabled(const Value: Boolean);
begin
  FProductionAccessEnabled := Value;
end;

function TPutAccountDetailsRequest.IsSetProductionAccessEnabled: Boolean;
begin
  Result := FProductionAccessEnabled.HasValue;
end;

function TPutAccountDetailsRequest.GetUseCaseDescription: string;
begin
  Result := FUseCaseDescription.ValueOrDefault;
end;

procedure TPutAccountDetailsRequest.SetUseCaseDescription(const Value: string);
begin
  FUseCaseDescription := Value;
end;

function TPutAccountDetailsRequest.IsSetUseCaseDescription: Boolean;
begin
  Result := FUseCaseDescription.HasValue;
end;

function TPutAccountDetailsRequest.GetWebsiteURL: string;
begin
  Result := FWebsiteURL.ValueOrDefault;
end;

procedure TPutAccountDetailsRequest.SetWebsiteURL(const Value: string);
begin
  FWebsiteURL := Value;
end;

function TPutAccountDetailsRequest.IsSetWebsiteURL: Boolean;
begin
  Result := FWebsiteURL.HasValue;
end;

end.
