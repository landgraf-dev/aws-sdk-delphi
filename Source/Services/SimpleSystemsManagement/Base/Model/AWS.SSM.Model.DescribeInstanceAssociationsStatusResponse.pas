unit AWS.SSM.Model.DescribeInstanceAssociationsStatusResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.InstanceAssociationStatusInfo, 
  AWS.Nullable;

type
  TDescribeInstanceAssociationsStatusResponse = class;
  
  IDescribeInstanceAssociationsStatusResponse = interface(IAmazonWebServiceResponse)
    function GetInstanceAssociationStatusInfos: TObjectList<TInstanceAssociationStatusInfo>;
    procedure SetInstanceAssociationStatusInfos(const Value: TObjectList<TInstanceAssociationStatusInfo>);
    function GetKeepInstanceAssociationStatusInfos: Boolean;
    procedure SetKeepInstanceAssociationStatusInfos(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInstanceAssociationsStatusResponse;
    function IsSetInstanceAssociationStatusInfos: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceAssociationStatusInfos: TObjectList<TInstanceAssociationStatusInfo> read GetInstanceAssociationStatusInfos write SetInstanceAssociationStatusInfos;
    property KeepInstanceAssociationStatusInfos: Boolean read GetKeepInstanceAssociationStatusInfos write SetKeepInstanceAssociationStatusInfos;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInstanceAssociationsStatusResponse = class(TAmazonWebServiceResponse, IDescribeInstanceAssociationsStatusResponse)
  strict private
    FInstanceAssociationStatusInfos: TObjectList<TInstanceAssociationStatusInfo>;
    FKeepInstanceAssociationStatusInfos: Boolean;
    FNextToken: Nullable<string>;
    function GetInstanceAssociationStatusInfos: TObjectList<TInstanceAssociationStatusInfo>;
    procedure SetInstanceAssociationStatusInfos(const Value: TObjectList<TInstanceAssociationStatusInfo>);
    function GetKeepInstanceAssociationStatusInfos: Boolean;
    procedure SetKeepInstanceAssociationStatusInfos(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInstanceAssociationsStatusResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInstanceAssociationStatusInfos: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceAssociationStatusInfos: TObjectList<TInstanceAssociationStatusInfo> read GetInstanceAssociationStatusInfos write SetInstanceAssociationStatusInfos;
    property KeepInstanceAssociationStatusInfos: Boolean read GetKeepInstanceAssociationStatusInfos write SetKeepInstanceAssociationStatusInfos;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInstanceAssociationsStatusResponse }

constructor TDescribeInstanceAssociationsStatusResponse.Create;
begin
  inherited;
  FInstanceAssociationStatusInfos := TObjectList<TInstanceAssociationStatusInfo>.Create;
end;

destructor TDescribeInstanceAssociationsStatusResponse.Destroy;
begin
  InstanceAssociationStatusInfos := nil;
  inherited;
end;

function TDescribeInstanceAssociationsStatusResponse.Obj: TDescribeInstanceAssociationsStatusResponse;
begin
  Result := Self;
end;

function TDescribeInstanceAssociationsStatusResponse.GetInstanceAssociationStatusInfos: TObjectList<TInstanceAssociationStatusInfo>;
begin
  Result := FInstanceAssociationStatusInfos;
end;

procedure TDescribeInstanceAssociationsStatusResponse.SetInstanceAssociationStatusInfos(const Value: TObjectList<TInstanceAssociationStatusInfo>);
begin
  if FInstanceAssociationStatusInfos <> Value then
  begin
    if not KeepInstanceAssociationStatusInfos then
      FInstanceAssociationStatusInfos.Free;
    FInstanceAssociationStatusInfos := Value;
  end;
end;

function TDescribeInstanceAssociationsStatusResponse.GetKeepInstanceAssociationStatusInfos: Boolean;
begin
  Result := FKeepInstanceAssociationStatusInfos;
end;

procedure TDescribeInstanceAssociationsStatusResponse.SetKeepInstanceAssociationStatusInfos(const Value: Boolean);
begin
  FKeepInstanceAssociationStatusInfos := Value;
end;

function TDescribeInstanceAssociationsStatusResponse.IsSetInstanceAssociationStatusInfos: Boolean;
begin
  Result := (FInstanceAssociationStatusInfos <> nil) and (FInstanceAssociationStatusInfos.Count > 0);
end;

function TDescribeInstanceAssociationsStatusResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstanceAssociationsStatusResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstanceAssociationsStatusResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
