unit AWS.SSM.Model.UpdateAssociationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.AssociationDescription;

type
  TUpdateAssociationResponse = class;
  
  IUpdateAssociationResponse = interface(IAmazonWebServiceResponse)
    function GetAssociationDescription: TAssociationDescription;
    procedure SetAssociationDescription(const Value: TAssociationDescription);
    function GetKeepAssociationDescription: Boolean;
    procedure SetKeepAssociationDescription(const Value: Boolean);
    function Obj: TUpdateAssociationResponse;
    function IsSetAssociationDescription: Boolean;
    property AssociationDescription: TAssociationDescription read GetAssociationDescription write SetAssociationDescription;
    property KeepAssociationDescription: Boolean read GetKeepAssociationDescription write SetKeepAssociationDescription;
  end;
  
  TUpdateAssociationResponse = class(TAmazonWebServiceResponse, IUpdateAssociationResponse)
  strict private
    FAssociationDescription: TAssociationDescription;
    FKeepAssociationDescription: Boolean;
    function GetAssociationDescription: TAssociationDescription;
    procedure SetAssociationDescription(const Value: TAssociationDescription);
    function GetKeepAssociationDescription: Boolean;
    procedure SetKeepAssociationDescription(const Value: Boolean);
  strict protected
    function Obj: TUpdateAssociationResponse;
  public
    destructor Destroy; override;
    function IsSetAssociationDescription: Boolean;
    property AssociationDescription: TAssociationDescription read GetAssociationDescription write SetAssociationDescription;
    property KeepAssociationDescription: Boolean read GetKeepAssociationDescription write SetKeepAssociationDescription;
  end;
  
implementation

{ TUpdateAssociationResponse }

destructor TUpdateAssociationResponse.Destroy;
begin
  AssociationDescription := nil;
  inherited;
end;

function TUpdateAssociationResponse.Obj: TUpdateAssociationResponse;
begin
  Result := Self;
end;

function TUpdateAssociationResponse.GetAssociationDescription: TAssociationDescription;
begin
  Result := FAssociationDescription;
end;

procedure TUpdateAssociationResponse.SetAssociationDescription(const Value: TAssociationDescription);
begin
  if FAssociationDescription <> Value then
  begin
    if not KeepAssociationDescription then
      FAssociationDescription.Free;
    FAssociationDescription := Value;
  end;
end;

function TUpdateAssociationResponse.GetKeepAssociationDescription: Boolean;
begin
  Result := FKeepAssociationDescription;
end;

procedure TUpdateAssociationResponse.SetKeepAssociationDescription(const Value: Boolean);
begin
  FKeepAssociationDescription := Value;
end;

function TUpdateAssociationResponse.IsSetAssociationDescription: Boolean;
begin
  Result := FAssociationDescription <> nil;
end;

end.
