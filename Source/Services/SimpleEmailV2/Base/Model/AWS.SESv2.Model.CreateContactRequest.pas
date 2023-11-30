unit AWS.SESv2.Model.CreateContactRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.Nullable, 
  AWS.SESv2.Model.TopicPreference;

type
  TCreateContactRequest = class;
  
  ICreateContactRequest = interface
    function GetAttributesData: string;
    procedure SetAttributesData(const Value: string);
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetTopicPreferences: TObjectList<TTopicPreference>;
    procedure SetTopicPreferences(const Value: TObjectList<TTopicPreference>);
    function GetKeepTopicPreferences: Boolean;
    procedure SetKeepTopicPreferences(const Value: Boolean);
    function GetUnsubscribeAll: Boolean;
    procedure SetUnsubscribeAll(const Value: Boolean);
    function Obj: TCreateContactRequest;
    function IsSetAttributesData: Boolean;
    function IsSetContactListName: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetTopicPreferences: Boolean;
    function IsSetUnsubscribeAll: Boolean;
    property AttributesData: string read GetAttributesData write SetAttributesData;
    property ContactListName: string read GetContactListName write SetContactListName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property TopicPreferences: TObjectList<TTopicPreference> read GetTopicPreferences write SetTopicPreferences;
    property KeepTopicPreferences: Boolean read GetKeepTopicPreferences write SetKeepTopicPreferences;
    property UnsubscribeAll: Boolean read GetUnsubscribeAll write SetUnsubscribeAll;
  end;
  
  TCreateContactRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateContactRequest)
  strict private
    FAttributesData: Nullable<string>;
    FContactListName: Nullable<string>;
    FEmailAddress: Nullable<string>;
    FTopicPreferences: TObjectList<TTopicPreference>;
    FKeepTopicPreferences: Boolean;
    FUnsubscribeAll: Nullable<Boolean>;
    function GetAttributesData: string;
    procedure SetAttributesData(const Value: string);
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetTopicPreferences: TObjectList<TTopicPreference>;
    procedure SetTopicPreferences(const Value: TObjectList<TTopicPreference>);
    function GetKeepTopicPreferences: Boolean;
    procedure SetKeepTopicPreferences(const Value: Boolean);
    function GetUnsubscribeAll: Boolean;
    procedure SetUnsubscribeAll(const Value: Boolean);
  strict protected
    function Obj: TCreateContactRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributesData: Boolean;
    function IsSetContactListName: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetTopicPreferences: Boolean;
    function IsSetUnsubscribeAll: Boolean;
    property AttributesData: string read GetAttributesData write SetAttributesData;
    property ContactListName: string read GetContactListName write SetContactListName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property TopicPreferences: TObjectList<TTopicPreference> read GetTopicPreferences write SetTopicPreferences;
    property KeepTopicPreferences: Boolean read GetKeepTopicPreferences write SetKeepTopicPreferences;
    property UnsubscribeAll: Boolean read GetUnsubscribeAll write SetUnsubscribeAll;
  end;
  
implementation

{ TCreateContactRequest }

constructor TCreateContactRequest.Create;
begin
  inherited;
  FTopicPreferences := TObjectList<TTopicPreference>.Create;
end;

destructor TCreateContactRequest.Destroy;
begin
  TopicPreferences := nil;
  inherited;
end;

function TCreateContactRequest.Obj: TCreateContactRequest;
begin
  Result := Self;
end;

function TCreateContactRequest.GetAttributesData: string;
begin
  Result := FAttributesData.ValueOrDefault;
end;

procedure TCreateContactRequest.SetAttributesData(const Value: string);
begin
  FAttributesData := Value;
end;

function TCreateContactRequest.IsSetAttributesData: Boolean;
begin
  Result := FAttributesData.HasValue;
end;

function TCreateContactRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TCreateContactRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TCreateContactRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TCreateContactRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TCreateContactRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TCreateContactRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TCreateContactRequest.GetTopicPreferences: TObjectList<TTopicPreference>;
begin
  Result := FTopicPreferences;
end;

procedure TCreateContactRequest.SetTopicPreferences(const Value: TObjectList<TTopicPreference>);
begin
  if FTopicPreferences <> Value then
  begin
    if not KeepTopicPreferences then
      FTopicPreferences.Free;
    FTopicPreferences := Value;
  end;
end;

function TCreateContactRequest.GetKeepTopicPreferences: Boolean;
begin
  Result := FKeepTopicPreferences;
end;

procedure TCreateContactRequest.SetKeepTopicPreferences(const Value: Boolean);
begin
  FKeepTopicPreferences := Value;
end;

function TCreateContactRequest.IsSetTopicPreferences: Boolean;
begin
  Result := (FTopicPreferences <> nil) and (FTopicPreferences.Count > 0);
end;

function TCreateContactRequest.GetUnsubscribeAll: Boolean;
begin
  Result := FUnsubscribeAll.ValueOrDefault;
end;

procedure TCreateContactRequest.SetUnsubscribeAll(const Value: Boolean);
begin
  FUnsubscribeAll := Value;
end;

function TCreateContactRequest.IsSetUnsubscribeAll: Boolean;
begin
  Result := FUnsubscribeAll.HasValue;
end;

end.
