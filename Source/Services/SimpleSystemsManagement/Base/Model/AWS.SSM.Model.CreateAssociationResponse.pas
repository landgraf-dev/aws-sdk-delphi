unit AWS.SSM.Model.CreateAssociationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.AssociationDescription;

type
  TCreateAssociationResponse = class;
  
  ICreateAssociationResponse = interface(IAmazonWebServiceResponse)
    function GetAssociationDescription: TAssociationDescription;
    procedure SetAssociationDescription(const Value: TAssociationDescription);
    function GetKeepAssociationDescription: Boolean;
    procedure SetKeepAssociationDescription(const Value: Boolean);
    function Obj: TCreateAssociationResponse;
    function IsSetAssociationDescription: Boolean;
    property AssociationDescription: TAssociationDescription read GetAssociationDescription write SetAssociationDescription;
    property KeepAssociationDescription: Boolean read GetKeepAssociationDescription write SetKeepAssociationDescription;
  end;
  
  TCreateAssociationResponse = class(TAmazonWebServiceResponse, ICreateAssociationResponse)
  strict private
    FAssociationDescription: TAssociationDescription;
    FKeepAssociationDescription: Boolean;
    function GetAssociationDescription: TAssociationDescription;
    procedure SetAssociationDescription(const Value: TAssociationDescription);
    function GetKeepAssociationDescription: Boolean;
    procedure SetKeepAssociationDescription(const Value: Boolean);
  strict protected
    function Obj: TCreateAssociationResponse;
  public
    destructor Destroy; override;
    function IsSetAssociationDescription: Boolean;
    property AssociationDescription: TAssociationDescription read GetAssociationDescription write SetAssociationDescription;
    property KeepAssociationDescription: Boolean read GetKeepAssociationDescription write SetKeepAssociationDescription;
  end;
  
implementation

{ TCreateAssociationResponse }

destructor TCreateAssociationResponse.Destroy;
begin
  AssociationDescription := nil;
  inherited;
end;

function TCreateAssociationResponse.Obj: TCreateAssociationResponse;
begin
  Result := Self;
end;

function TCreateAssociationResponse.GetAssociationDescription: TAssociationDescription;
begin
  Result := FAssociationDescription;
end;

procedure TCreateAssociationResponse.SetAssociationDescription(const Value: TAssociationDescription);
begin
  if FAssociationDescription <> Value then
  begin
    if not KeepAssociationDescription then
      FAssociationDescription.Free;
    FAssociationDescription := Value;
  end;
end;

function TCreateAssociationResponse.GetKeepAssociationDescription: Boolean;
begin
  Result := FKeepAssociationDescription;
end;

procedure TCreateAssociationResponse.SetKeepAssociationDescription(const Value: Boolean);
begin
  FKeepAssociationDescription := Value;
end;

function TCreateAssociationResponse.IsSetAssociationDescription: Boolean;
begin
  Result := FAssociationDescription <> nil;
end;

end.
