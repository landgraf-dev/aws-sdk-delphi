unit AWS.SSM.Model.DescribeEffectiveInstanceAssociationsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.InstanceAssociation, 
  AWS.Nullable;

type
  TDescribeEffectiveInstanceAssociationsResponse = class;
  
  IDescribeEffectiveInstanceAssociationsResponse = interface(IAmazonWebServiceResponse)
    function GetAssociations: TObjectList<TInstanceAssociation>;
    procedure SetAssociations(const Value: TObjectList<TInstanceAssociation>);
    function GetKeepAssociations: Boolean;
    procedure SetKeepAssociations(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeEffectiveInstanceAssociationsResponse;
    function IsSetAssociations: Boolean;
    function IsSetNextToken: Boolean;
    property Associations: TObjectList<TInstanceAssociation> read GetAssociations write SetAssociations;
    property KeepAssociations: Boolean read GetKeepAssociations write SetKeepAssociations;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeEffectiveInstanceAssociationsResponse = class(TAmazonWebServiceResponse, IDescribeEffectiveInstanceAssociationsResponse)
  strict private
    FAssociations: TObjectList<TInstanceAssociation>;
    FKeepAssociations: Boolean;
    FNextToken: Nullable<string>;
    function GetAssociations: TObjectList<TInstanceAssociation>;
    procedure SetAssociations(const Value: TObjectList<TInstanceAssociation>);
    function GetKeepAssociations: Boolean;
    procedure SetKeepAssociations(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeEffectiveInstanceAssociationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociations: Boolean;
    function IsSetNextToken: Boolean;
    property Associations: TObjectList<TInstanceAssociation> read GetAssociations write SetAssociations;
    property KeepAssociations: Boolean read GetKeepAssociations write SetKeepAssociations;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeEffectiveInstanceAssociationsResponse }

constructor TDescribeEffectiveInstanceAssociationsResponse.Create;
begin
  inherited;
  FAssociations := TObjectList<TInstanceAssociation>.Create;
end;

destructor TDescribeEffectiveInstanceAssociationsResponse.Destroy;
begin
  Associations := nil;
  inherited;
end;

function TDescribeEffectiveInstanceAssociationsResponse.Obj: TDescribeEffectiveInstanceAssociationsResponse;
begin
  Result := Self;
end;

function TDescribeEffectiveInstanceAssociationsResponse.GetAssociations: TObjectList<TInstanceAssociation>;
begin
  Result := FAssociations;
end;

procedure TDescribeEffectiveInstanceAssociationsResponse.SetAssociations(const Value: TObjectList<TInstanceAssociation>);
begin
  if FAssociations <> Value then
  begin
    if not KeepAssociations then
      FAssociations.Free;
    FAssociations := Value;
  end;
end;

function TDescribeEffectiveInstanceAssociationsResponse.GetKeepAssociations: Boolean;
begin
  Result := FKeepAssociations;
end;

procedure TDescribeEffectiveInstanceAssociationsResponse.SetKeepAssociations(const Value: Boolean);
begin
  FKeepAssociations := Value;
end;

function TDescribeEffectiveInstanceAssociationsResponse.IsSetAssociations: Boolean;
begin
  Result := (FAssociations <> nil) and (FAssociations.Count > 0);
end;

function TDescribeEffectiveInstanceAssociationsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeEffectiveInstanceAssociationsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeEffectiveInstanceAssociationsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
