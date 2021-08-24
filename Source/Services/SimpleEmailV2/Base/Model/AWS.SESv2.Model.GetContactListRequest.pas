unit AWS.SESv2.Model.GetContactListRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TGetContactListRequest = class;
  
  IGetContactListRequest = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function Obj: TGetContactListRequest;
    function IsSetContactListName: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
  end;
  
  TGetContactListRequest = class(TAmazonSimpleEmailServiceV2Request, IGetContactListRequest)
  strict private
    FContactListName: Nullable<string>;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
  strict protected
    function Obj: TGetContactListRequest;
  public
    function IsSetContactListName: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
  end;
  
implementation

{ TGetContactListRequest }

function TGetContactListRequest.Obj: TGetContactListRequest;
begin
  Result := Self;
end;

function TGetContactListRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TGetContactListRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TGetContactListRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

end.
