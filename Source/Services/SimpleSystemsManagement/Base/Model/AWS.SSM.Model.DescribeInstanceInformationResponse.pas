unit AWS.SSM.Model.DescribeInstanceInformationResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.InstanceInformation, 
  AWS.Nullable;

type
  TDescribeInstanceInformationResponse = class;
  
  IDescribeInstanceInformationResponse = interface(IAmazonWebServiceResponse)
    function GetInstanceInformationList: TObjectList<TInstanceInformation>;
    procedure SetInstanceInformationList(const Value: TObjectList<TInstanceInformation>);
    function GetKeepInstanceInformationList: Boolean;
    procedure SetKeepInstanceInformationList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInstanceInformationResponse;
    function IsSetInstanceInformationList: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceInformationList: TObjectList<TInstanceInformation> read GetInstanceInformationList write SetInstanceInformationList;
    property KeepInstanceInformationList: Boolean read GetKeepInstanceInformationList write SetKeepInstanceInformationList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInstanceInformationResponse = class(TAmazonWebServiceResponse, IDescribeInstanceInformationResponse)
  strict private
    FInstanceInformationList: TObjectList<TInstanceInformation>;
    FKeepInstanceInformationList: Boolean;
    FNextToken: Nullable<string>;
    function GetInstanceInformationList: TObjectList<TInstanceInformation>;
    procedure SetInstanceInformationList(const Value: TObjectList<TInstanceInformation>);
    function GetKeepInstanceInformationList: Boolean;
    procedure SetKeepInstanceInformationList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInstanceInformationResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInstanceInformationList: Boolean;
    function IsSetNextToken: Boolean;
    property InstanceInformationList: TObjectList<TInstanceInformation> read GetInstanceInformationList write SetInstanceInformationList;
    property KeepInstanceInformationList: Boolean read GetKeepInstanceInformationList write SetKeepInstanceInformationList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInstanceInformationResponse }

constructor TDescribeInstanceInformationResponse.Create;
begin
  inherited;
  FInstanceInformationList := TObjectList<TInstanceInformation>.Create;
end;

destructor TDescribeInstanceInformationResponse.Destroy;
begin
  InstanceInformationList := nil;
  inherited;
end;

function TDescribeInstanceInformationResponse.Obj: TDescribeInstanceInformationResponse;
begin
  Result := Self;
end;

function TDescribeInstanceInformationResponse.GetInstanceInformationList: TObjectList<TInstanceInformation>;
begin
  Result := FInstanceInformationList;
end;

procedure TDescribeInstanceInformationResponse.SetInstanceInformationList(const Value: TObjectList<TInstanceInformation>);
begin
  if FInstanceInformationList <> Value then
  begin
    if not KeepInstanceInformationList then
      FInstanceInformationList.Free;
    FInstanceInformationList := Value;
  end;
end;

function TDescribeInstanceInformationResponse.GetKeepInstanceInformationList: Boolean;
begin
  Result := FKeepInstanceInformationList;
end;

procedure TDescribeInstanceInformationResponse.SetKeepInstanceInformationList(const Value: Boolean);
begin
  FKeepInstanceInformationList := Value;
end;

function TDescribeInstanceInformationResponse.IsSetInstanceInformationList: Boolean;
begin
  Result := (FInstanceInformationList <> nil) and (FInstanceInformationList.Count > 0);
end;

function TDescribeInstanceInformationResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInstanceInformationResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInstanceInformationResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
