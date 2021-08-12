unit AWS.SNS.Model.ListPlatformApplicationsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.PlatformApplication;

type
  TListPlatformApplicationsResponse = class;
  
  IListPlatformApplicationsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPlatformApplications: TObjectList<TPlatformApplication>;
    procedure SetPlatformApplications(const Value: TObjectList<TPlatformApplication>);
    function Obj: TListPlatformApplicationsResponse;
    function IsSetNextToken: Boolean;
    function IsSetPlatformApplications: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PlatformApplications: TObjectList<TPlatformApplication> read GetPlatformApplications write SetPlatformApplications;
  end;
  
  TListPlatformApplicationsResponse = class(TAmazonWebServiceResponse, IListPlatformApplicationsResponse)
  strict private
    FNextToken: Nullable<string>;
    FPlatformApplications: TObjectList<TPlatformApplication>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPlatformApplications: TObjectList<TPlatformApplication>;
    procedure SetPlatformApplications(const Value: TObjectList<TPlatformApplication>);
  strict protected
    function Obj: TListPlatformApplicationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetPlatformApplications: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PlatformApplications: TObjectList<TPlatformApplication> read GetPlatformApplications write SetPlatformApplications;
  end;
  
implementation

{ TListPlatformApplicationsResponse }

constructor TListPlatformApplicationsResponse.Create;
begin
  inherited;
  FPlatformApplications := TObjectList<TPlatformApplication>.Create;
end;

destructor TListPlatformApplicationsResponse.Destroy;
begin
  FPlatformApplications.Free;
  inherited;
end;

function TListPlatformApplicationsResponse.Obj: TListPlatformApplicationsResponse;
begin
  Result := Self;
end;

function TListPlatformApplicationsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListPlatformApplicationsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListPlatformApplicationsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListPlatformApplicationsResponse.GetPlatformApplications: TObjectList<TPlatformApplication>;
begin
  Result := FPlatformApplications;
end;

procedure TListPlatformApplicationsResponse.SetPlatformApplications(const Value: TObjectList<TPlatformApplication>);
begin
  if FPlatformApplications <> Value then
  begin
    FPlatformApplications.Free;
    FPlatformApplications := Value;
  end;
end;

function TListPlatformApplicationsResponse.IsSetPlatformApplications: Boolean;
begin
  Result := (FPlatformApplications <> nil) and (FPlatformApplications.Count > 0);
end;

end.
