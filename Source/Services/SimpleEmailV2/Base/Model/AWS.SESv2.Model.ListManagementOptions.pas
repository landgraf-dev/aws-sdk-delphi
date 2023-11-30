unit AWS.SESv2.Model.ListManagementOptions;

interface

uses
  AWS.Nullable;

type
  TListManagementOptions = class;
  
  IListManagementOptions = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetTopicName: string;
    procedure SetTopicName(const Value: string);
    function Obj: TListManagementOptions;
    function IsSetContactListName: Boolean;
    function IsSetTopicName: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property TopicName: string read GetTopicName write SetTopicName;
  end;
  
  TListManagementOptions = class
  strict private
    FContactListName: Nullable<string>;
    FTopicName: Nullable<string>;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetTopicName: string;
    procedure SetTopicName(const Value: string);
  strict protected
    function Obj: TListManagementOptions;
  public
    function IsSetContactListName: Boolean;
    function IsSetTopicName: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property TopicName: string read GetTopicName write SetTopicName;
  end;
  
implementation

{ TListManagementOptions }

function TListManagementOptions.Obj: TListManagementOptions;
begin
  Result := Self;
end;

function TListManagementOptions.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TListManagementOptions.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TListManagementOptions.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TListManagementOptions.GetTopicName: string;
begin
  Result := FTopicName.ValueOrDefault;
end;

procedure TListManagementOptions.SetTopicName(const Value: string);
begin
  FTopicName := Value;
end;

function TListManagementOptions.IsSetTopicName: Boolean;
begin
  Result := FTopicName.HasValue;
end;

end.
