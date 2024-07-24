unit AWS.SSM.Model.GetParametersRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetParametersRequest = class;
  
  IGetParametersRequest = interface
    function GetNames: TList<string>;
    procedure SetNames(const Value: TList<string>);
    function GetKeepNames: Boolean;
    procedure SetKeepNames(const Value: Boolean);
    function GetWithDecryption: Boolean;
    procedure SetWithDecryption(const Value: Boolean);
    function Obj: TGetParametersRequest;
    function IsSetNames: Boolean;
    function IsSetWithDecryption: Boolean;
    property Names: TList<string> read GetNames write SetNames;
    property KeepNames: Boolean read GetKeepNames write SetKeepNames;
    property WithDecryption: Boolean read GetWithDecryption write SetWithDecryption;
  end;
  
  TGetParametersRequest = class(TAmazonSimpleSystemsManagementRequest, IGetParametersRequest)
  strict private
    FNames: TList<string>;
    FKeepNames: Boolean;
    FWithDecryption: Nullable<Boolean>;
    function GetNames: TList<string>;
    procedure SetNames(const Value: TList<string>);
    function GetKeepNames: Boolean;
    procedure SetKeepNames(const Value: Boolean);
    function GetWithDecryption: Boolean;
    procedure SetWithDecryption(const Value: Boolean);
  strict protected
    function Obj: TGetParametersRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNames: Boolean;
    function IsSetWithDecryption: Boolean;
    property Names: TList<string> read GetNames write SetNames;
    property KeepNames: Boolean read GetKeepNames write SetKeepNames;
    property WithDecryption: Boolean read GetWithDecryption write SetWithDecryption;
  end;
  
implementation

{ TGetParametersRequest }

constructor TGetParametersRequest.Create;
begin
  inherited;
  FNames := TList<string>.Create;
end;

destructor TGetParametersRequest.Destroy;
begin
  Names := nil;
  inherited;
end;

function TGetParametersRequest.Obj: TGetParametersRequest;
begin
  Result := Self;
end;

function TGetParametersRequest.GetNames: TList<string>;
begin
  Result := FNames;
end;

procedure TGetParametersRequest.SetNames(const Value: TList<string>);
begin
  if FNames <> Value then
  begin
    if not KeepNames then
      FNames.Free;
    FNames := Value;
  end;
end;

function TGetParametersRequest.GetKeepNames: Boolean;
begin
  Result := FKeepNames;
end;

procedure TGetParametersRequest.SetKeepNames(const Value: Boolean);
begin
  FKeepNames := Value;
end;

function TGetParametersRequest.IsSetNames: Boolean;
begin
  Result := (FNames <> nil) and (FNames.Count > 0);
end;

function TGetParametersRequest.GetWithDecryption: Boolean;
begin
  Result := FWithDecryption.ValueOrDefault;
end;

procedure TGetParametersRequest.SetWithDecryption(const Value: Boolean);
begin
  FWithDecryption := Value;
end;

function TGetParametersRequest.IsSetWithDecryption: Boolean;
begin
  Result := FWithDecryption.HasValue;
end;

end.
