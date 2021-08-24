unit AWS.SESv2.Model.GetBlacklistReportsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request;

type
  TGetBlacklistReportsRequest = class;
  
  IGetBlacklistReportsRequest = interface
    function GetBlacklistItemNames: TList<string>;
    procedure SetBlacklistItemNames(const Value: TList<string>);
    function GetKeepBlacklistItemNames: Boolean;
    procedure SetKeepBlacklistItemNames(const Value: Boolean);
    function Obj: TGetBlacklistReportsRequest;
    function IsSetBlacklistItemNames: Boolean;
    property BlacklistItemNames: TList<string> read GetBlacklistItemNames write SetBlacklistItemNames;
    property KeepBlacklistItemNames: Boolean read GetKeepBlacklistItemNames write SetKeepBlacklistItemNames;
  end;
  
  TGetBlacklistReportsRequest = class(TAmazonSimpleEmailServiceV2Request, IGetBlacklistReportsRequest)
  strict private
    FBlacklistItemNames: TList<string>;
    FKeepBlacklistItemNames: Boolean;
    function GetBlacklistItemNames: TList<string>;
    procedure SetBlacklistItemNames(const Value: TList<string>);
    function GetKeepBlacklistItemNames: Boolean;
    procedure SetKeepBlacklistItemNames(const Value: Boolean);
  strict protected
    function Obj: TGetBlacklistReportsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBlacklistItemNames: Boolean;
    property BlacklistItemNames: TList<string> read GetBlacklistItemNames write SetBlacklistItemNames;
    property KeepBlacklistItemNames: Boolean read GetKeepBlacklistItemNames write SetKeepBlacklistItemNames;
  end;
  
implementation

{ TGetBlacklistReportsRequest }

constructor TGetBlacklistReportsRequest.Create;
begin
  inherited;
  FBlacklistItemNames := TList<string>.Create;
end;

destructor TGetBlacklistReportsRequest.Destroy;
begin
  BlacklistItemNames := nil;
  inherited;
end;

function TGetBlacklistReportsRequest.Obj: TGetBlacklistReportsRequest;
begin
  Result := Self;
end;

function TGetBlacklistReportsRequest.GetBlacklistItemNames: TList<string>;
begin
  Result := FBlacklistItemNames;
end;

procedure TGetBlacklistReportsRequest.SetBlacklistItemNames(const Value: TList<string>);
begin
  if FBlacklistItemNames <> Value then
  begin
    if not KeepBlacklistItemNames then
      FBlacklistItemNames.Free;
    FBlacklistItemNames := Value;
  end;
end;

function TGetBlacklistReportsRequest.GetKeepBlacklistItemNames: Boolean;
begin
  Result := FKeepBlacklistItemNames;
end;

procedure TGetBlacklistReportsRequest.SetKeepBlacklistItemNames(const Value: Boolean);
begin
  FKeepBlacklistItemNames := Value;
end;

function TGetBlacklistReportsRequest.IsSetBlacklistItemNames: Boolean;
begin
  Result := (FBlacklistItemNames <> nil) and (FBlacklistItemNames.Count > 0);
end;

end.
