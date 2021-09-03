unit AWS.Rekognition.Model.GetCelebrityInfoResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetCelebrityInfoResponse = class;
  
  IGetCelebrityInfoResponse = interface(IAmazonWebServiceResponse)
    function GetName: string;
    procedure SetName(const Value: string);
    function GetUrls: TList<string>;
    procedure SetUrls(const Value: TList<string>);
    function GetKeepUrls: Boolean;
    procedure SetKeepUrls(const Value: Boolean);
    function Obj: TGetCelebrityInfoResponse;
    function IsSetName: Boolean;
    function IsSetUrls: Boolean;
    property Name: string read GetName write SetName;
    property Urls: TList<string> read GetUrls write SetUrls;
    property KeepUrls: Boolean read GetKeepUrls write SetKeepUrls;
  end;
  
  TGetCelebrityInfoResponse = class(TAmazonWebServiceResponse, IGetCelebrityInfoResponse)
  strict private
    FName: Nullable<string>;
    FUrls: TList<string>;
    FKeepUrls: Boolean;
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
    function IsSetName: Boolean;
    function IsSetUrls: Boolean;
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
  inherited;
end;

function TGetCelebrityInfoResponse.Obj: TGetCelebrityInfoResponse;
begin
  Result := Self;
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
