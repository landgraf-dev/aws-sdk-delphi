unit AWS.SES.Model.VerifyDomainDkimResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TVerifyDomainDkimResponse = class;
  
  IVerifyDomainDkimResponse = interface
    function GetDkimTokens: TList<string>;
    procedure SetDkimTokens(const Value: TList<string>);
    function Obj: TVerifyDomainDkimResponse;
    function IsSetDkimTokens: Boolean;
    property DkimTokens: TList<string> read GetDkimTokens write SetDkimTokens;
  end;
  
  TVerifyDomainDkimResponse = class(TAmazonWebServiceResponse, IVerifyDomainDkimResponse)
  strict private
    FDkimTokens: TList<string>;
    function GetDkimTokens: TList<string>;
    procedure SetDkimTokens(const Value: TList<string>);
  strict protected
    function Obj: TVerifyDomainDkimResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDkimTokens: Boolean;
    property DkimTokens: TList<string> read GetDkimTokens write SetDkimTokens;
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
  FDkimTokens.Free;
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
    FDkimTokens.Free;
    FDkimTokens := Value;
  end;
end;

function TVerifyDomainDkimResponse.IsSetDkimTokens: Boolean;
begin
  Result := (FDkimTokens <> nil) and (FDkimTokens.Count > 0);
end;

end.
