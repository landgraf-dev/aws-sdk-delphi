unit AWS.SESv2.Model.GetContactRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TGetContactRequest = class;
  
  IGetContactRequest = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function Obj: TGetContactRequest;
    function IsSetContactListName: Boolean;
    function IsSetEmailAddress: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
  TGetContactRequest = class(TAmazonSimpleEmailServiceV2Request, IGetContactRequest)
  strict private
    FContactListName: Nullable<string>;
    FEmailAddress: Nullable<string>;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
  strict protected
    function Obj: TGetContactRequest;
  public
    function IsSetContactListName: Boolean;
    function IsSetEmailAddress: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
implementation

{ TGetContactRequest }

function TGetContactRequest.Obj: TGetContactRequest;
begin
  Result := Self;
end;

function TGetContactRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TGetContactRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TGetContactRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TGetContactRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TGetContactRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TGetContactRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

end.
