unit AWS.SESv2.Model.CreateContactListRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.Tag, 
  AWS.SESv2.Model.Topic;

type
  TCreateContactListRequest = class;
  
  ICreateContactListRequest = interface
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTopics: TObjectList<TTopic>;
    procedure SetTopics(const Value: TObjectList<TTopic>);
    function GetKeepTopics: Boolean;
    procedure SetKeepTopics(const Value: Boolean);
    function Obj: TCreateContactListRequest;
    function IsSetContactListName: Boolean;
    function IsSetDescription: Boolean;
    function IsSetTags: Boolean;
    function IsSetTopics: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property Description: string read GetDescription write SetDescription;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Topics: TObjectList<TTopic> read GetTopics write SetTopics;
    property KeepTopics: Boolean read GetKeepTopics write SetKeepTopics;
  end;
  
  TCreateContactListRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateContactListRequest)
  strict private
    FContactListName: Nullable<string>;
    FDescription: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTopics: TObjectList<TTopic>;
    FKeepTopics: Boolean;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTopics: TObjectList<TTopic>;
    procedure SetTopics(const Value: TObjectList<TTopic>);
    function GetKeepTopics: Boolean;
    procedure SetKeepTopics(const Value: Boolean);
  strict protected
    function Obj: TCreateContactListRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContactListName: Boolean;
    function IsSetDescription: Boolean;
    function IsSetTags: Boolean;
    function IsSetTopics: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property Description: string read GetDescription write SetDescription;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Topics: TObjectList<TTopic> read GetTopics write SetTopics;
    property KeepTopics: Boolean read GetKeepTopics write SetKeepTopics;
  end;
  
implementation

{ TCreateContactListRequest }

constructor TCreateContactListRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
  FTopics := TObjectList<TTopic>.Create;
end;

destructor TCreateContactListRequest.Destroy;
begin
  Topics := nil;
  Tags := nil;
  inherited;
end;

function TCreateContactListRequest.Obj: TCreateContactListRequest;
begin
  Result := Self;
end;

function TCreateContactListRequest.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TCreateContactListRequest.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TCreateContactListRequest.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TCreateContactListRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TCreateContactListRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TCreateContactListRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TCreateContactListRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateContactListRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateContactListRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateContactListRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateContactListRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TCreateContactListRequest.GetTopics: TObjectList<TTopic>;
begin
  Result := FTopics;
end;

procedure TCreateContactListRequest.SetTopics(const Value: TObjectList<TTopic>);
begin
  if FTopics <> Value then
  begin
    if not KeepTopics then
      FTopics.Free;
    FTopics := Value;
  end;
end;

function TCreateContactListRequest.GetKeepTopics: Boolean;
begin
  Result := FKeepTopics;
end;

procedure TCreateContactListRequest.SetKeepTopics(const Value: Boolean);
begin
  FKeepTopics := Value;
end;

function TCreateContactListRequest.IsSetTopics: Boolean;
begin
  Result := (FTopics <> nil) and (FTopics.Count > 0);
end;

end.
