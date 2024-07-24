unit AWS.SSM.Model.DescribeAssociationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.AssociationDescription;

type
  TDescribeAssociationResponse = class;
  
  IDescribeAssociationResponse = interface(IAmazonWebServiceResponse)
    function GetAssociationDescription: TAssociationDescription;
    procedure SetAssociationDescription(const Value: TAssociationDescription);
    function GetKeepAssociationDescription: Boolean;
    procedure SetKeepAssociationDescription(const Value: Boolean);
    function Obj: TDescribeAssociationResponse;
    function IsSetAssociationDescription: Boolean;
    property AssociationDescription: TAssociationDescription read GetAssociationDescription write SetAssociationDescription;
    property KeepAssociationDescription: Boolean read GetKeepAssociationDescription write SetKeepAssociationDescription;
  end;
  
  TDescribeAssociationResponse = class(TAmazonWebServiceResponse, IDescribeAssociationResponse)
  strict private
    FAssociationDescription: TAssociationDescription;
    FKeepAssociationDescription: Boolean;
    function GetAssociationDescription: TAssociationDescription;
    procedure SetAssociationDescription(const Value: TAssociationDescription);
    function GetKeepAssociationDescription: Boolean;
    procedure SetKeepAssociationDescription(const Value: Boolean);
  strict protected
    function Obj: TDescribeAssociationResponse;
  public
    destructor Destroy; override;
    function IsSetAssociationDescription: Boolean;
    property AssociationDescription: TAssociationDescription read GetAssociationDescription write SetAssociationDescription;
    property KeepAssociationDescription: Boolean read GetKeepAssociationDescription write SetKeepAssociationDescription;
  end;
  
implementation

{ TDescribeAssociationResponse }

destructor TDescribeAssociationResponse.Destroy;
begin
  AssociationDescription := nil;
  inherited;
end;

function TDescribeAssociationResponse.Obj: TDescribeAssociationResponse;
begin
  Result := Self;
end;

function TDescribeAssociationResponse.GetAssociationDescription: TAssociationDescription;
begin
  Result := FAssociationDescription;
end;

procedure TDescribeAssociationResponse.SetAssociationDescription(const Value: TAssociationDescription);
begin
  if FAssociationDescription <> Value then
  begin
    if not KeepAssociationDescription then
      FAssociationDescription.Free;
    FAssociationDescription := Value;
  end;
end;

function TDescribeAssociationResponse.GetKeepAssociationDescription: Boolean;
begin
  Result := FKeepAssociationDescription;
end;

procedure TDescribeAssociationResponse.SetKeepAssociationDescription(const Value: Boolean);
begin
  FKeepAssociationDescription := Value;
end;

function TDescribeAssociationResponse.IsSetAssociationDescription: Boolean;
begin
  Result := FAssociationDescription <> nil;
end;

end.
