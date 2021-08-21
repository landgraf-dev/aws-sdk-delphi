unit AWS.SES.Model.VerifyDomainDkimResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TVerifyDomainDkimResponse = class;
  
  IVerifyDomainDkimResponse = interface(IAmazonWebServiceResponse)
    function GetDkimTokens: TList<string>;
    procedure SetDkimTokens(const Value: TList<string>);
    function GetKeepDkimTokens: Boolean;
    procedure SetKeepDkimTokens(const Value: Boolean);
    function Obj: TVerifyDomainDkimResponse;
    function IsSetDkimTokens: Boolean;
    property DkimTokens: TList<string> read GetDkimTokens write SetDkimTokens;
    property KeepDkimTokens: Boolean read GetKeepDkimTokens write SetKeepDkimTokens;
  end;
  
  TVerifyDomainDkimResponse = class(TAmazonWebServiceResponse, IVerifyDomainDkimResponse)
  strict private
    FDkimTokens: TList<string>;
    FKeepDkimTokens: Boolean;
    function GetDkimTokens: TList<string>;
    procedure SetDkimTokens(const Value: TList<string>);
    function GetKeepDkimTokens: Boolean;
    procedure SetKeepDkimTokens(const Value: Boolean);
  strict protected
    function Obj: TVerifyDomainDkimResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDkimTokens: Boolean;
    property DkimTokens: TList<string> read GetDkimTokens write SetDkimTokens;
    property KeepDkimTokens: Boolean read GetKeepDkimTokens write SetKeepDkimTokens;
  end;
  
implementation

{ TVerifyDomainDkimResponse }

constructor TVerifyDomainDkimResponse.Create;
begin
  inherited;
  FDkimTokens := TList<string>.Create;
end;

destructor TVerifyDomainDkimResponse.Destroy;
begin
  DkimTokens := nil;
  inherited;
end;

function TVerifyDomainDkimResponse.Obj: TVerifyDomainDkimResponse;
begin
  Result := Self;
end;

function TVerifyDomainDkimResponse.GetDkimTokens: TList<string>;
begin
  Result := FDkimTokens;
end;

procedure TVerifyDomainDkimResponse.SetDkimTokens(const Value: TList<string>);
begin
  if FDkimTokens <> Value then
  begin
    if not KeepDkimTokens then
      FDkimTokens.Free;
    FDkimTokens := Value;
  end;
end;

function TVerifyDomainDkimResponse.GetKeepDkimTokens: Boolean;
begin
  Result := FKeepDkimTokens;
end;

procedure TVerifyDomainDkimResponse.SetKeepDkimTokens(const Value: Boolean);
begin
  FKeepDkimTokens := Value;
end;

function TVerifyDomainDkimResponse.IsSetDkimTokens: Boolean;
begin
  Result := (FDkimTokens <> nil) and (FDkimTokens.Count > 0);
end;

end.
