unit AWS.SESv2.Model.GetContactListResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.Tag, 
  AWS.SESv2.Model.Topic;

type
  TGetContactListResponse = class;
  
  IGetContactListResponse = interface(IAmazonWebServiceResponse)
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetLastUpdatedTimestamp: TDateTime;
    procedure SetLastUpdatedTimestamp(const Value: TDateTime);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTopics: TObjectList<TTopic>;
    procedure SetTopics(const Value: TObjectList<TTopic>);
    function GetKeepTopics: Boolean;
    procedure SetKeepTopics(const Value: Boolean);
    function Obj: TGetContactListResponse;
    function IsSetContactListName: Boolean;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetDescription: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    function IsSetTags: Boolean;
    function IsSetTopics: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property Description: string read GetDescription write SetDescription;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Topics: TObjectList<TTopic> read GetTopics write SetTopics;
    property KeepTopics: Boolean read GetKeepTopics write SetKeepTopics;
  end;
  
  TGetContactListResponse = class(TAmazonWebServiceResponse, IGetContactListResponse)
  strict private
    FContactListName: Nullable<string>;
    FCreatedTimestamp: Nullable<TDateTime>;
    FDescription: Nullable<string>;
    FLastUpdatedTimestamp: Nullable<TDateTime>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTopics: TObjectList<TTopic>;
    FKeepTopics: Boolean;
    function GetContactListName: string;
    procedure SetContactListName(const Value: string);
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetLastUpdatedTimestamp: TDateTime;
    procedure SetLastUpdatedTimestamp(const Value: TDateTime);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTopics: TObjectList<TTopic>;
    procedure SetTopics(const Value: TObjectList<TTopic>);
    function GetKeepTopics: Boolean;
    procedure SetKeepTopics(const Value: Boolean);
  strict protected
    function Obj: TGetContactListResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContactListName: Boolean;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetDescription: Boolean;
    function IsSetLastUpdatedTimestamp: Boolean;
    function IsSetTags: Boolean;
    function IsSetTopics: Boolean;
    property ContactListName: string read GetContactListName write SetContactListName;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property Description: string read GetDescription write SetDescription;
    property LastUpdatedTimestamp: TDateTime read GetLastUpdatedTimestamp write SetLastUpdatedTimestamp;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Topics: TObjectList<TTopic> read GetTopics write SetTopics;
    property KeepTopics: Boolean read GetKeepTopics write SetKeepTopics;
  end;
  
implementation

{ TGetContactListResponse }

constructor TGetContactListResponse.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
  FTopics := TObjectList<TTopic>.Create;
end;

destructor TGetContactListResponse.Destroy;
begin
  Topics := nil;
  Tags := nil;
  inherited;
end;

function TGetContactListResponse.Obj: TGetContactListResponse;
begin
  Result := Self;
end;

function TGetContactListResponse.GetContactListName: string;
begin
  Result := FContactListName.ValueOrDefault;
end;

procedure TGetContactListResponse.SetContactListName(const Value: string);
begin
  FContactListName := Value;
end;

function TGetContactListResponse.IsSetContactListName: Boolean;
begin
  Result := FContactListName.HasValue;
end;

function TGetContactListResponse.GetCreatedTimestamp: TDateTime;
begin
  Result := FCreatedTimestamp.ValueOrDefault;
end;

procedure TGetContactListResponse.SetCreatedTimestamp(const Value: TDateTime);
begin
  FCreatedTimestamp := Value;
end;

function TGetContactListResponse.IsSetCreatedTimestamp: Boolean;
begin
  Result := FCreatedTimestamp.HasValue;
end;

function TGetContactListResponse.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TGetContactListResponse.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TGetContactListResponse.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TGetContactListResponse.GetLastUpdatedTimestamp: TDateTime;
begin
  Result := FLastUpdatedTimestamp.ValueOrDefault;
end;

procedure TGetContactListResponse.SetLastUpdatedTimestamp(const Value: TDateTime);
begin
  FLastUpdatedTimestamp := Value;
end;

function TGetContactListResponse.IsSetLastUpdatedTimestamp: Boolean;
begin
  Result := FLastUpdatedTimestamp.HasValue;
end;

function TGetContactListResponse.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TGetContactListResponse.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TGetContactListResponse.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TGetContactListResponse.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TGetContactListResponse.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TGetContactListResponse.GetTopics: TObjectList<TTopic>;
begin
  Result := FTopics;
end;

procedure TGetContactListResponse.SetTopics(const Value: TObjectList<TTopic>);
begin
  if FTopics <> Value then
  begin
    if not KeepTopics then
      FTopics.Free;
    FTopics := Value;
  end;
end;

function TGetContactListResponse.GetKeepTopics: Boolean;
begin
  Result := FKeepTopics;
end;

procedure TGetContactListResponse.SetKeepTopics(const Value: Boolean);
begin
  FKeepTopics := Value;
end;

function TGetContactListResponse.IsSetTopics: Boolean;
begin
  Result := (FTopics <> nil) and (FTopics.Count > 0);
end;

end.
