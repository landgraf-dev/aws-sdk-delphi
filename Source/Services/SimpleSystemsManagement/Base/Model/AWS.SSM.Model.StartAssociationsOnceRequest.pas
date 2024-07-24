unit AWS.SSM.Model.StartAssociationsOnceRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request;

type
  TStartAssociationsOnceRequest = class;
  
  IStartAssociationsOnceRequest = interface
    function GetAssociationIds: TList<string>;
    procedure SetAssociationIds(const Value: TList<string>);
    function GetKeepAssociationIds: Boolean;
    procedure SetKeepAssociationIds(const Value: Boolean);
    function Obj: TStartAssociationsOnceRequest;
    function IsSetAssociationIds: Boolean;
    property AssociationIds: TList<string> read GetAssociationIds write SetAssociationIds;
    property KeepAssociationIds: Boolean read GetKeepAssociationIds write SetKeepAssociationIds;
  end;
  
  TStartAssociationsOnceRequest = class(TAmazonSimpleSystemsManagementRequest, IStartAssociationsOnceRequest)
  strict private
    FAssociationIds: TList<string>;
    FKeepAssociationIds: Boolean;
    function GetAssociationIds: TList<string>;
    procedure SetAssociationIds(const Value: TList<string>);
    function GetKeepAssociationIds: Boolean;
    procedure SetKeepAssociationIds(const Value: Boolean);
  strict protected
    function Obj: TStartAssociationsOnceRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationIds: Boolean;
    property AssociationIds: TList<string> read GetAssociationIds write SetAssociationIds;
    property KeepAssociationIds: Boolean read GetKeepAssociationIds write SetKeepAssociationIds;
  end;
  
implementation

{ TStartAssociationsOnceRequest }

constructor TStartAssociationsOnceRequest.Create;
begin
  inherited;
  FAssociationIds := TList<string>.Create;
end;

destructor TStartAssociationsOnceRequest.Destroy;
begin
  AssociationIds := nil;
  inherited;
end;

function TStartAssociationsOnceRequest.Obj: TStartAssociationsOnceRequest;
begin
  Result := Self;
end;

function TStartAssociationsOnceRequest.GetAssociationIds: TList<string>;
begin
  Result := FAssociationIds;
end;

procedure TStartAssociationsOnceRequest.SetAssociationIds(const Value: TList<string>);
begin
  if FAssociationIds <> Value then
  begin
    if not KeepAssociationIds then
      FAssociationIds.Free;
    FAssociationIds := Value;
  end;
end;

function TStartAssociationsOnceRequest.GetKeepAssociationIds: Boolean;
begin
  Result := FKeepAssociationIds;
end;

procedure TStartAssociationsOnceRequest.SetKeepAssociationIds(const Value: Boolean);
begin
  FKeepAssociationIds := Value;
end;

function TStartAssociationsOnceRequest.IsSetAssociationIds: Boolean;
begin
  Result := (FAssociationIds <> nil) and (FAssociationIds.Count > 0);
end;

end.
