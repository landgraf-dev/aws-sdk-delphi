unit AWS.SSM.Model.DeleteParametersRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request;

type
  TDeleteParametersRequest = class;
  
  IDeleteParametersRequest = interface
    function GetNames: TList<string>;
    procedure SetNames(const Value: TList<string>);
    function GetKeepNames: Boolean;
    procedure SetKeepNames(const Value: Boolean);
    function Obj: TDeleteParametersRequest;
    function IsSetNames: Boolean;
    property Names: TList<string> read GetNames write SetNames;
    property KeepNames: Boolean read GetKeepNames write SetKeepNames;
  end;
  
  TDeleteParametersRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteParametersRequest)
  strict private
    FNames: TList<string>;
    FKeepNames: Boolean;
    function GetNames: TList<string>;
    procedure SetNames(const Value: TList<string>);
    function GetKeepNames: Boolean;
    procedure SetKeepNames(const Value: Boolean);
  strict protected
    function Obj: TDeleteParametersRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNames: Boolean;
    property Names: TList<string> read GetNames write SetNames;
    property KeepNames: Boolean read GetKeepNames write SetKeepNames;
  end;
  
implementation

{ TDeleteParametersRequest }

constructor TDeleteParametersRequest.Create;
begin
  inherited;
  FNames := TList<string>.Create;
end;

destructor TDeleteParametersRequest.Destroy;
begin
  Names := nil;
  inherited;
end;

function TDeleteParametersRequest.Obj: TDeleteParametersRequest;
begin
  Result := Self;
end;

function TDeleteParametersRequest.GetNames: TList<string>;
begin
  Result := FNames;
end;

procedure TDeleteParametersRequest.SetNames(const Value: TList<string>);
begin
  if FNames <> Value then
  begin
    if not KeepNames then
      FNames.Free;
    FNames := Value;
  end;
end;

function TDeleteParametersRequest.GetKeepNames: Boolean;
begin
  Result := FKeepNames;
end;

procedure TDeleteParametersRequest.SetKeepNames(const Value: Boolean);
begin
  FKeepNames := Value;
end;

function TDeleteParametersRequest.IsSetNames: Boolean;
begin
  Result := (FNames <> nil) and (FNames.Count > 0);
end;

end.
