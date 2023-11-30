unit AWS.SESv2.Model.DeleteContactRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TDeleteContactRequest = class;
  
  IDeleteContactRequest = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function Obj: TDeleteContactRequest;
    function IsSetContactListName: Boolean;
    function IsSetEmailAddress: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
  TDeleteContactRequest = class(TAmazonSimpleEmailServiceV2Request, IDeleteContactRequest)
  strict private
    FContactListName: Nullable<string>;
    FEmailAddress: Nullable<string>;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
  strict protected
    function Obj: TDeleteContactRequest;
  public
    function IsSetContactListName: Boolean;
    function IsSetEmailAddress: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
implementation

{ TDeleteContactRequest }

function TDeleteContactRequest.Obj: TDeleteContactRequest;
begin
  Result := Self;
end;

function TDeleteContactRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TDeleteContactRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TDeleteContactRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TDeleteContactRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TDeleteContactRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TDeleteContactRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

end.
