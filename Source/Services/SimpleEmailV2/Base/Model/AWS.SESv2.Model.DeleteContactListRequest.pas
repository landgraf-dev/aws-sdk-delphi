unit AWS.SESv2.Model.DeleteContactListRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TDeleteContactListRequest = class;
  
  IDeleteContactListRequest = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function Obj: TDeleteContactListRequest;
    function IsSetContactListName: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
  end;
  
  TDeleteContactListRequest = class(TAmazonSimpleEmailServiceV2Request, IDeleteContactListRequest)
  strict private
    FContactListName: Nullable<string>;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
  strict protected
    function Obj: TDeleteContactListRequest;
  public
    function IsSetContactListName: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
  end;
  
implementation

{ TDeleteContactListRequest }

function TDeleteContactListRequest.Obj: TDeleteContactListRequest;
begin
  Result := Self;
end;

function TDeleteContactListRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TDeleteContactListRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TDeleteContactListRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

end.
