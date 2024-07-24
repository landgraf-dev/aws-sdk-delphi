unit AWS.SSM.Model.GetOpsItemResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.OpsItem;

type
  TGetOpsItemResponse = class;
  
  IGetOpsItemResponse = interface(IAmazonWebServiceResponse)
    function GetOpsItem: TOpsItem;
    procedure SetOpsItem(const Value: TOpsItem);
    function GetKeepOpsItem: Boolean;
    procedure SetKeepOpsItem(const Value: Boolean);
    function Obj: TGetOpsItemResponse;
    function IsSetOpsItem: Boolean;
    property OpsItem: TOpsItem read GetOpsItem write SetOpsItem;
    property KeepOpsItem: Boolean read GetKeepOpsItem write SetKeepOpsItem;
  end;
  
  TGetOpsItemResponse = class(TAmazonWebServiceResponse, IGetOpsItemResponse)
  strict private
    FOpsItem: TOpsItem;
    FKeepOpsItem: Boolean;
    function GetOpsItem: TOpsItem;
    procedure SetOpsItem(const Value: TOpsItem);
    function GetKeepOpsItem: Boolean;
    procedure SetKeepOpsItem(const Value: Boolean);
  strict protected
    function Obj: TGetOpsItemResponse;
  public
    destructor Destroy; override;
    function IsSetOpsItem: Boolean;
    property OpsItem: TOpsItem read GetOpsItem write SetOpsItem;
    property KeepOpsItem: Boolean read GetKeepOpsItem write SetKeepOpsItem;
  end;
  
implementation

{ TGetOpsItemResponse }

destructor TGetOpsItemResponse.Destroy;
begin
  OpsItem := nil;
  inherited;
end;

function TGetOpsItemResponse.Obj: TGetOpsItemResponse;
begin
  Result := Self;
end;

function TGetOpsItemResponse.GetOpsItem: TOpsItem;
begin
  Result := FOpsItem;
end;

procedure TGetOpsItemResponse.SetOpsItem(const Value: TOpsItem);
begin
  if FOpsItem <> Value then
  begin
    if not KeepOpsItem then
      FOpsItem.Free;
    FOpsItem := Value;
  end;
end;

function TGetOpsItemResponse.GetKeepOpsItem: Boolean;
begin
  Result := FKeepOpsItem;
end;

procedure TGetOpsItemResponse.SetKeepOpsItem(const Value: Boolean);
begin
  FKeepOpsItem := Value;
end;

function TGetOpsItemResponse.IsSetOpsItem: Boolean;
begin
  Result := FOpsItem <> nil;
end;

end.
