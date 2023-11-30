unit AWS.Rekognition.Model.GetCelebrityInfoResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.KnownGender, 
  AWS.Nullable;

type
  TGetCelebrityInfoResponse = class;
  
  IGetCelebrityInfoResponse = interface(IAmazonWebServiceResponse)
    function GetKnownGender: TKnownGender;
    procedure SetKnownGender(const Value: TKnownGender);
    function GetKeepKnownGender: Boolean;
    procedure SetKeepKnownGender(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetUrls: TList<string>;
    procedure SetUrls(const Value: TList<string>);
    function GetKeepUrls: Boolean;
    procedure SetKeepUrls(const Value: Boolean);
    function Obj: TGetCelebrityInfoResponse;
    function IsSetKnownGender: Boolean;
    function IsSetName: Boolean;
    function IsSetUrls: Boolean;
    property KnownGender: TKnownGender read GetKnownGender write SetKnownGender;
    property KeepKnownGender: Boolean read GetKeepKnownGender write SetKeepKnownGender;
    property Name: string read GetName write SetName;
    property Urls: TList<string> read GetUrls write SetUrls;
    property KeepUrls: Boolean read GetKeepUrls write SetKeepUrls;
  end;
  
  TGetCelebrityInfoResponse = class(TAmazonWebServiceResponse, IGetCelebrityInfoResponse)
  strict private
    FKnownGender: TKnownGender;
    FKeepKnownGender: Boolean;
    FName: Nullable<string>;
    FUrls: TList<string>;
    FKeepUrls: Boolean;
    function GetKnownGender: TKnownGender;
    procedure SetKnownGender(const Value: TKnownGender);
    function GetKeepKnownGender: Boolean;
    procedure SetKeepKnownGender(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetUrls: TList<string>;
    procedure SetUrls(const Value: TList<string>);
    function GetKeepUrls: Boolean;
    procedure SetKeepUrls(const Value: Boolean);
  strict protected
    function Obj: TGetCelebrityInfoResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKnownGender: Boolean;
    function IsSetName: Boolean;
    function IsSetUrls: Boolean;
    property KnownGender: TKnownGender read GetKnownGender write SetKnownGender;
    property KeepKnownGender: Boolean read GetKeepKnownGender write SetKeepKnownGender;
    property Name: string read GetName write SetName;
    property Urls: TList<string> read GetUrls write SetUrls;
    property KeepUrls: Boolean read GetKeepUrls write SetKeepUrls;
  end;
  
implementation

{ TGetCelebrityInfoResponse }

constructor TGetCelebrityInfoResponse.Create;
begin
  inherited;
  FUrls := TList<string>.Create;
end;

destructor TGetCelebrityInfoResponse.Destroy;
begin
  Urls := nil;
  KnownGender := nil;
  inherited;
end;

function TGetCelebrityInfoResponse.Obj: TGetCelebrityInfoResponse;
begin
  Result := Self;
end;

function TGetCelebrityInfoResponse.GetKnownGender: TKnownGender;
begin
  Result := FKnownGender;
end;

procedure TGetCelebrityInfoResponse.SetKnownGender(const Value: TKnownGender);
begin
  if FKnownGender <> Value then
  begin
    if not KeepKnownGender then
      FKnownGender.Free;
    FKnownGender := Value;
  end;
end;

function TGetCelebrityInfoResponse.GetKeepKnownGender: Boolean;
begin
  Result := FKeepKnownGender;
end;

procedure TGetCelebrityInfoResponse.SetKeepKnownGender(const Value: Boolean);
begin
  FKeepKnownGender := Value;
end;

function TGetCelebrityInfoResponse.IsSetKnownGender: Boolean;
begin
  Result := FKnownGender <> nil;
end;

function TGetCelebrityInfoResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetCelebrityInfoResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetCelebrityInfoResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetCelebrityInfoResponse.GetUrls: TList<string>;
begin
  Result := FUrls;
end;

procedure TGetCelebrityInfoResponse.SetUrls(const Value: TList<string>);
begin
  if FUrls <> Value then
  begin
    if not KeepUrls then
      FUrls.Free;
    FUrls := Value;
  end;
end;

function TGetCelebrityInfoResponse.GetKeepUrls: Boolean;
begin
  Result := FKeepUrls;
end;

procedure TGetCelebrityInfoResponse.SetKeepUrls(const Value: Boolean);
begin
  FKeepUrls := Value;
end;

function TGetCelebrityInfoResponse.IsSetUrls: Boolean;
begin
  Result := (FUrls <> nil) and (FUrls.Count > 0);
end;

end.
