unit AWS.SESv2.Model.Contact;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SESv2.Model.TopicPreference;

type
  TContact = class;
  
  IContact = interface
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
    function Obj: TContact;
    function IsSetEmailAddress: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    function IsSetTopicDefaultPreferences: Boolean;
    function IsSetTopicPreferences: Boolean;
    function IsSetUnsubscribeAll: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
    property TopicDefaultPreferences: TObjectList<TTopicPreference> read GetTopicDefaultPreferences write SetTopicDefaultPreferences;
    property KeepTopicDefaultPreferences: Boolean read GetKeepTopicDefaultPreferences write SetKeepTopicDefaultPreferences;
    property TopicPreferences: TObjectList<TTopicPreference> read GetTopicPreferences write SetTopicPreferences;
    property KeepTopicPreferences: Boolean read GetKeepTopicPreferences write SetKeepTopicPreferences;
    property UnsubscribeAll: Boolean read GetUnsubscribeAll write SetUnsubscribeAll;
  end;
  
  TContact = class
  strict private
    FEmailAddress: Nullable<string>;
    FLastUpdatedTimestamp: Nullable<TDateTime>;
    FTopicDefaultPreferences: TObjectList<TTopicPreference>;
    FKeepTopicDefaultPreferences: Boolean;
    FTopicPreferences: TObjectList<TTopicPreference>;
    FKeepTopicPreferences: Boolean;
    FUnsubscribeAll: Nullable<Boolean>;
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
    function Obj: TContact;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEmailAddress: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    function IsSetTopicDefaultPreferences: Boolean;
    function IsSetTopicPreferences: Boolean;
    function IsSetUnsubscribeAll: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
    property TopicDefaultPreferences: TObjectList<TTopicPreference> read GetTopicDefaultPreferences write SetTopicDefaultPreferences;
    property KeepTopicDefaultPreferences: Boolean read GetKeepTopicDefaultPreferences write SetKeepTopicDefaultPreferences;
    property TopicPreferences: TObjectList<TTopicPreference> read GetTopicPreferences write SetTopicPreferences;
    property KeepTopicPreferences: Boolean read GetKeepTopicPreferences write SetKeepTopicPreferences;
    property UnsubscribeAll: Boolean read GetUnsubscribeAll write SetUnsubscribeAll;
  end;
  
implementation

{ TContact }

constructor TContact.Create;
begin
  inherited;
  FTopicDefaultPreferences := TObjectList<TTopicPreference>.Create;
  FTopicPreferences := TObjectList<TTopicPreference>.Create;
end;

destructor TContact.Destroy;
begin
  TopicPreferences := nil;
  TopicDefaultPreferences := nil;
  inherited;
end;

function TContact.Obj: TContact;
begin
  Result := Self;
end;

function TContact.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TContact.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TContact.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TContact.GetLastUpdatedTimestamp: TDateTime;
begin
  Result := FLastUpdatedTimestamp.ValueOrDefault;
end;

procedure TContact.SetLastUpdatedTimestamp(const Value: TDateTime);
begin
  FLastUpdatedTimestamp := Value;
end;

function TContact.IsSetLastUpdatedTimestamp: Boolean;
begin
  Result := FLastUpdatedTimestamp.HasValue;
end;

function TContact.GetTopicDefaultPreferences: TObjectList<TTopicPreference>;
begin
  Result := FTopicDefaultPreferences;
end;

procedure TContact.SetTopicDefaultPreferences(const Value: TObjectList<TTopicPreference>);
begin
  if FTopicDefaultPreferences <> Value then
  begin
    if not KeepTopicDefaultPreferences then
      FTopicDefaultPreferences.Free;
    FTopicDefaultPreferences := Value;
  end;
end;

function TContact.GetKeepTopicDefaultPreferences: Boolean;
begin
  Result := FKeepTopicDefaultPreferences;
end;

procedure TContact.SetKeepTopicDefaultPreferences(const Value: Boolean);
begin
  FKeepTopicDefaultPreferences := Value;
end;

function TContact.IsSetTopicDefaultPreferences: Boolean;
begin
  Result := (FTopicDefaultPreferences <> nil) and (FTopicDefaultPreferences.Count > 0);
end;

function TContact.GetTopicPreferences: TObjectList<TTopicPreference>;
begin
  Result := FTopicPreferences;
end;

procedure TContact.SetTopicPreferences(const Value: TObjectList<TTopicPreference>);
begin
  if FTopicPreferences <> Value then
  begin
    if not KeepTopicPreferences then
      FTopicPreferences.Free;
    FTopicPreferences := Value;
  end;
end;

function TContact.GetKeepTopicPreferences: Boolean;
begin
  Result := FKeepTopicPreferences;
end;

procedure TContact.SetKeepTopicPreferences(const Value: Boolean);
begin
  FKeepTopicPreferences := Value;
end;

function TContact.IsSetTopicPreferences: Boolean;
begin
  Result := (FTopicPreferences <> nil) and (FTopicPreferences.Count > 0);
end;

function TContact.GetUnsubscribeAll: Boolean;
begin
  Result := FUnsubscribeAll.ValueOrDefault;
end;

procedure TContact.SetUnsubscribeAll(const Value: Boolean);
begin
  FUnsubscribeAll := Value;
end;

function TContact.IsSetUnsubscribeAll: Boolean;
begin
  Result := FUnsubscribeAll.HasValue;
end;

end.
