unit AWS.SESv2.Model.UpdateContactListRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.Topic;

type
  TUpdateContactListRequest = class;
  
  IUpdateContactListRequest = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetTopics: TObjectList<TTopic>;
    procedure SetTopics(const Value: TObjectList<TTopic>);
    function GetKeepTopics: Boolean;
    procedure SetKeepTopics(const Value: Boolean);
    function Obj: TUpdateContactListRequest;
    function IsSetContactListName: Boolean;
    function IsSetDescription: Boolean;
    function IsSetTopics: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property Description: string read GetDescription write SetDescription;
    property Topics: TObjectList<TTopic> read GetTopics write SetTopics;
    property KeepTopics: Boolean read GetKeepTopics write SetKeepTopics;
  end;
  
  TUpdateContactListRequest = class(TAmazonSimpleEmailServiceV2Request, IUpdateContactListRequest)
  strict private
    FContactListName: Nullable<string>;
    FDescription: Nullable<string>;
    FTopics: TObjectList<TTopic>;
    FKeepTopics: Boolean;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetTopics: TObjectList<TTopic>;
    procedure SetTopics(const Value: TObjectList<TTopic>);
    function GetKeepTopics: Boolean;
    procedure SetKeepTopics(const Value: Boolean);
  strict protected
    function Obj: TUpdateContactListRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContactListName: Boolean;
    function IsSetDescription: Boolean;
    function IsSetTopics: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property Description: string read GetDescription write SetDescription;
    property Topics: TObjectList<TTopic> read GetTopics write SetTopics;
    property KeepTopics: Boolean read GetKeepTopics write SetKeepTopics;
  end;
  
implementation

{ TUpdateContactListRequest }

constructor TUpdateContactListRequest.Create;
begin
  inherited;
  FTopics := TObjectList<TTopic>.Create;
end;

destructor TUpdateContactListRequest.Destroy;
begin
  Topics := nil;
  inherited;
end;

function TUpdateContactListRequest.Obj: TUpdateContactListRequest;
begin
  Result := Self;
end;

function TUpdateContactListRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TUpdateContactListRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TUpdateContactListRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TUpdateContactListRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateContactListRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateContactListRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateContactListRequest.GetTopics: TObjectList<TTopic>;
begin
  Result := FTopics;
end;

procedure TUpdateContactListRequest.SetTopics(const Value: TObjectList<TTopic>);
begin
  if FTopics <> Value then
  begin
    if not KeepTopics then
      FTopics.Free;
    FTopics := Value;
  end;
end;

function TUpdateContactListRequest.GetKeepTopics: Boolean;
begin
  Result := FKeepTopics;
end;

procedure TUpdateContactListRequest.SetKeepTopics(const Value: Boolean);
begin
  FKeepTopics := Value;
end;

function TUpdateContactListRequest.IsSetTopics: Boolean;
begin
  Result := (FTopics <> nil) and (FTopics.Count > 0);
end;

end.
