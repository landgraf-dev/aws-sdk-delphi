unit AWS.SESv2.Model.GetContactResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SESv2.Model.TopicPreference;

type
  TGetContactResponse = class;
  
  IGetContactResponse = interface(IAmazonWebServiceResponse)
    function GetAttributesData: string;
    procedure SetAttributesData(const Value: string);
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetLastUpdatedTimestamp: TDateTime;
    procedure SetLastUpdatedTimestamp(const Value: TDateTime);
    function GetTopicDefaultPreferences: TObjectList<TTopicPreference>;
    procedure SetTopicDefaultPreferences(const Value: TObjectList<TTopicPreference>);
    function GetKeepTopicDefaultPreferences: Boolean;
    procedure SetKeepTopicDefaultPreferences(const Value: Boolean);
    function GetTopicPreferences: TObjectList<TTopicPreference>;
    procedure SetTopicPreferences(const Value: TObjectList<TTopicPreference>);
    function GetKeepTopicPreferences: Boolean;
    procedure SetKeepTopicPreferences(const Value: Boolean);
    function GetUnsubscribeAll: Boolean;
    procedure SetUnsubscribeAll(const Value: Boolean);
    function Obj: TGetContactResponse;
    function IsSetAttributesData: Boolean;
    function IsSetContactListName: Boolean;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    function IsSetTopicDefaultPreferences: Boolean;
    function IsSetTopicPreferences: Boolean;
    function IsSetUnsubscribeAll: Boolean;
    property AttributesData: string read GetAttributesData write SetAttributesData;
    property ContactListName: string read GetContactListName write SetContactListName;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
    property TopicDefaultPreferences: TObjectList<TTopicPreference> read GetTopicDefaultPreferences write SetTopicDefaultPreferences;
    property KeepTopicDefaultPreferences: Boolean read GetKeepTopicDefaultPreferences write SetKeepTopicDefaultPreferences;
    property TopicPreferences: TObjectList<TTopicPreference> read GetTopicPreferences write SetTopicPreferences;
    property KeepTopicPreferences: Boolean read GetKeepTopicPreferences write SetKeepTopicPreferences;
    property UnsubscribeAll: Boolean read GetUnsubscribeAll write SetUnsubscribeAll;
  end;
  
  TGetContactResponse = class(TAmazonWebServiceResponse, IGetContactResponse)
  strict private
    FAttributesData: Nullable<string>;
    FContactListName: Nullable<string>;
    FCreatedTimestamp: Nullable<TDateTime>;
    FEmailAddress: Nullable<string>;
    FLastUpdatedTimestamp: Nullable<TDateTime>;
    FTopicDefaultPreferences: TObjectList<TTopicPreference>;
    FKeepTopicDefaultPreferences: Boolean;
    FTopicPreferences: TObjectList<TTopicPreference>;
    FKeepTopicPreferences: Boolean;
    FUnsubscribeAll: Nullable<Boolean>;
    function GetAttributesData: string;
    procedure SetAttributesData(const Value: string);
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetLastUpdatedTimestamp: TDateTime;
    procedure SetLastUpdatedTimestamp(const Value: TDateTime);
    function GetTopicDefaultPreferences: TObjectList<TTopicPreference>;
    procedure SetTopicDefaultPreferences(const Value: TObjectList<TTopicPreference>);
    function GetKeepTopicDefaultPreferences: Boolean;
    procedure SetKeepTopicDefaultPreferences(const Value: Boolean);
    function GetTopicPreferences: TObjectList<TTopicPreference>;
    procedure SetTopicPreferences(const Value: TObjectList<TTopicPreference>);
    function GetKeepTopicPreferences: Boolean;
    procedure SetKeepTopicPreferences(const Value: Boolean);
    function GetUnsubscribeAll: Boolean;
    procedure SetUnsubscribeAll(const Value: Boolean);
  strict protected
    function Obj: TGetContactResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributesData: Boolean;
    function IsSetContactListName: Boolean;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    function IsSetTopicDefaultPreferences: Boolean;
    function IsSetTopicPreferences: Boolean;
    function IsSetUnsubscribeAll: Boolean;
    property AttributesData: string read GetAttributesData write SetAttributesData;
    property ContactListName: string read GetContactListName write SetContactListName;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
    property TopicDefaultPreferences: TObjectList<TTopicPreference> read GetTopicDefaultPreferences write SetTopicDefaultPreferences;
    property KeepTopicDefaultPreferences: Boolean read GetKeepTopicDefaultPreferences write SetKeepTopicDefaultPreferences;
    property TopicPreferences: TObjectList<TTopicPreference> read GetTopicPreferences write SetTopicPreferences;
    property KeepTopicPreferences: Boolean read GetKeepTopicPreferences write SetKeepTopicPreferences;
    property UnsubscribeAll: Boolean read GetUnsubscribeAll write SetUnsubscribeAll;
  end;
  
implementation

{ TGetContactResponse }

constructor TGetContactResponse.Create;
begin
  inherited;
  FTopicDefaultPreferences := TObjectList<TTopicPreference>.Create;
  FTopicPreferences := TObjectList<TTopicPreference>.Create;
end;

destructor TGetContactResponse.Destroy;
begin
  TopicPreferences := nil;
  TopicDefaultPreferences := nil;
  inherited;
end;

function TGetContactResponse.Obj: TGetContactResponse;
begin
  Result := Self;
end;

function TGetContactResponse.GetAttributesData: string;
begin
  Result := FAttributesData.ValueOrDefault;
end;

procedure TGetContactResponse.SetAttributesData(const Value: string);
begin
  FAttributesData := Value;
end;

function TGetContactResponse.IsSetAttributesData: Boolean;
begin
  Result := FAttributesData.HasValue;
end;

function TGetContactResponse.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TGetContactResponse.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TGetContactResponse.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TGetContactResponse.GetCreatedTimestamp: TDateTime;
begin
  Result := FCreatedTimestamp.ValueOrDefault;
end;

procedure TGetContactResponse.SetCreatedTimestamp(const Value: TDateTime);
begin
  FCreatedTimestamp := Value;
end;

function TGetContactResponse.IsSetCreatedTimestamp: Boolean;
begin
  Result := FCreatedTimestamp.HasValue;
end;

function TGetContactResponse.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TGetContactResponse.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TGetContactResponse.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TGetContactResponse.GetLastUpdatedTimestamp: TDateTime;
begin
  Result := FLastUpdatedTimestamp.ValueOrDefault;
end;

procedure TGetContactResponse.SetLastUpdatedTimestamp(const Value: TDateTime);
begin
  FLastUpdatedTimestamp := Value;
end;

function TGetContactResponse.IsSetLastUpdatedTimestamp: Boolean;
begin
  Result := FLastUpdatedTimestamp.HasValue;
end;

function TGetContactResponse.GetTopicDefaultPreferences: TObjectList<TTopicPreference>;
begin
  Result := FTopicDefaultPreferences;
end;

procedure TGetContactResponse.SetTopicDefaultPreferences(const Value: TObjectList<TTopicPreference>);
begin
  if FTopicDefaultPreferences <> Value then
  begin
    if not KeepTopicDefaultPreferences then
      FTopicDefaultPreferences.Free;
    FTopicDefaultPreferences := Value;
  end;
end;

function TGetContactResponse.GetKeepTopicDefaultPreferences: Boolean;
begin
  Result := FKeepTopicDefaultPreferences;
end;

procedure TGetContactResponse.SetKeepTopicDefaultPreferences(const Value: Boolean);
begin
  FKeepTopicDefaultPreferences := Value;
end;

function TGetContactResponse.IsSetTopicDefaultPreferences: Boolean;
begin
  Result := (FTopicDefaultPreferences <> nil) and (FTopicDefaultPreferences.Count > 0);
end;

function TGetContactResponse.GetTopicPreferences: TObjectList<TTopicPreference>;
begin
  Result := FTopicPreferences;
end;

procedure TGetContactResponse.SetTopicPreferences(const Value: TObjectList<TTopicPreference>);
begin
  if FTopicPreferences <> Value then
  begin
    if not KeepTopicPreferences then
      FTopicPreferences.Free;
    FTopicPreferences := Value;
  end;
end;

function TGetContactResponse.GetKeepTopicPreferences: Boolean;
begin
  Result := FKeepTopicPreferences;
end;

procedure TGetContactResponse.SetKeepTopicPreferences(const Value: Boolean);
begin
  FKeepTopicPreferences := Value;
end;

function TGetContactResponse.IsSetTopicPreferences: Boolean;
begin
  Result := (FTopicPreferences <> nil) and (FTopicPreferences.Count > 0);
end;

function TGetContactResponse.GetUnsubscribeAll: Boolean;
begin
  Result := FUnsubscribeAll.ValueOrDefault;
end;

procedure TGetContactResponse.SetUnsubscribeAll(const Value: Boolean);
begin
  FUnsubscribeAll := Value;
end;

function TGetContactResponse.IsSetUnsubscribeAll: Boolean;
begin
  Result := FUnsubscribeAll.HasValue;
end;

end.
