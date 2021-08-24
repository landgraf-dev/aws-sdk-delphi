unit AWS.SESv2.Model.UpdateContactRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.TopicPreference;

type
  TUpdateContactRequest = class;
  
  IUpdateContactRequest = interface
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
    function Obj: TUpdateContactRequest;
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
  
  TUpdateContactRequest = class(TAmazonSimpleEmailServiceV2Request, IUpdateContactRequest)
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
    function Obj: TUpdateContactRequest;
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

{ TUpdateContactRequest }

constructor TUpdateContactRequest.Create;
begin
  inherited;
  FTopicPreferences := TObjectList<TTopicPreference>.Create;
end;

destructor TUpdateContactRequest.Destroy;
begin
  TopicPreferences := nil;
  inherited;
end;

function TUpdateContactRequest.Obj: TUpdateContactRequest;
begin
  Result := Self;
end;

function TUpdateContactRequest.GetAttributesData: string;
begin
  Result := FAttributesData.ValueOrDefault;
end;

procedure TUpdateContactRequest.SetAttributesData(const Value: string);
begin
  FAttributesData := Value;
end;

function TUpdateContactRequest.IsSetAttributesData: Boolean;
begin
  Result := FAttributesData.HasValue;
end;

function TUpdateContactRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TUpdateContactRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TUpdateContactRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TUpdateContactRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TUpdateContactRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TUpdateContactRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TUpdateContactRequest.GetTopicPreferences: TObjectList<TTopicPreference>;
begin
  Result := FTopicPreferences;
end;

procedure TUpdateContactRequest.SetTopicPreferences(const Value: TObjectList<TTopicPreference>);
begin
  if FTopicPreferences <> Value then
  begin
    if not KeepTopicPreferences then
      FTopicPreferences.Free;
    FTopicPreferences := Value;
  end;
end;

function TUpdateContactRequest.GetKeepTopicPreferences: Boolean;
begin
  Result := FKeepTopicPreferences;
end;

procedure TUpdateContactRequest.SetKeepTopicPreferences(const Value: Boolean);
begin
  FKeepTopicPreferences := Value;
end;

function TUpdateContactRequest.IsSetTopicPreferences: Boolean;
begin
  Result := (FTopicPreferences <> nil) and (FTopicPreferences.Count > 0);
end;

function TUpdateContactRequest.GetUnsubscribeAll: Boolean;
begin
  Result := FUnsubscribeAll.ValueOrDefault;
end;

procedure TUpdateContactRequest.SetUnsubscribeAll(const Value: Boolean);
begin
  FUnsubscribeAll := Value;
end;

function TUpdateContactRequest.IsSetUnsubscribeAll: Boolean;
begin
  Result := FUnsubscribeAll.HasValue;
end;

end.
