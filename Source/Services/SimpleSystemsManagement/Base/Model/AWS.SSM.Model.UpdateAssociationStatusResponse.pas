unit AWS.SSM.Model.UpdateAssociationStatusResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.AssociationDescription;

type
  TUpdateAssociationStatusResponse = class;
  
  IUpdateAssociationStatusResponse = interface(IAmazonWebServiceResponse)
    function GetAssociationDescription: TAssociationDescription;
    procedure SetAssociationDescription(const Value: TAssociationDescription);
    function GetKeepAssociationDescription: Boolean;
    procedure SetKeepAssociationDescription(const Value: Boolean);
    function Obj: TUpdateAssociationStatusResponse;
    function IsSetAssociationDescription: Boolean;
    property AssociationDescription: TAssociationDescription read GetAssociationDescription write SetAssociationDescription;
    property KeepAssociationDescription: Boolean read GetKeepAssociationDescription write SetKeepAssociationDescription;
  end;
  
  TUpdateAssociationStatusResponse = class(TAmazonWebServiceResponse, IUpdateAssociationStatusResponse)
  strict private
    FAssociationDescription: TAssociationDescription;
    FKeepAssociationDescription: Boolean;
    function GetAssociationDescription: TAssociationDescription;
    procedure SetAssociationDescription(const Value: TAssociationDescription);
    function GetKeepAssociationDescription: Boolean;
    procedure SetKeepAssociationDescription(const Value: Boolean);
  strict protected
    function Obj: TUpdateAssociationStatusResponse;
  public
    destructor Destroy; override;
    function IsSetAssociationDescription: Boolean;
    property AssociationDescription: TAssociationDescription read GetAssociationDescription write SetAssociationDescription;
    property KeepAssociationDescription: Boolean read GetKeepAssociationDescription write SetKeepAssociationDescription;
  end;
  
implementation

{ TUpdateAssociationStatusResponse }

destructor TUpdateAssociationStatusResponse.Destroy;
begin
  AssociationDescription := nil;
  inherited;
end;

function TUpdateAssociationStatusResponse.Obj: TUpdateAssociationStatusResponse;
begin
  Result := Self;
end;

function TUpdateAssociationStatusResponse.GetAssociationDescription: TAssociationDescription;
begin
  Result := FAssociationDescription;
end;

procedure TUpdateAssociationStatusResponse.SetAssociationDescription(const Value: TAssociationDescription);
begin
  if FAssociationDescription <> Value then
  begin
    if not KeepAssociationDescription then
      FAssociationDescription.Free;
    FAssociationDescription := Value;
  end;
end;

function TUpdateAssociationStatusResponse.GetKeepAssociationDescription: Boolean;
begin
  Result := FKeepAssociationDescription;
end;

procedure TUpdateAssociationStatusResponse.SetKeepAssociationDescription(const Value: Boolean);
begin
  FKeepAssociationDescription := Value;
end;

function TUpdateAssociationStatusResponse.IsSetAssociationDescription: Boolean;
begin
  Result := FAssociationDescription <> nil;
end;

end.
