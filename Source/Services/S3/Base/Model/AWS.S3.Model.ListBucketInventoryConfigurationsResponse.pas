unit AWS.S3.Model.ListBucketInventoryConfigurationsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.InventoryConfiguration;

type
  TListBucketInventoryConfigurationsResponse = class;
  
  IListBucketInventoryConfigurationsResponse = interface(IAmazonWebServiceResponse)
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetInventoryConfigurationList: TObjectList<TInventoryConfiguration>;
    procedure SetInventoryConfigurationList(const Value: TObjectList<TInventoryConfiguration>);
    function GetKeepInventoryConfigurationList: Boolean;
    procedure SetKeepInventoryConfigurationList(const Value: Boolean);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
    function Obj: TListBucketInventoryConfigurationsResponse;
    function IsSetContinuationToken: Boolean;
    function IsSetInventoryConfigurationList: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetNextContinuationToken: Boolean;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property InventoryConfigurationList: TObjectList<TInventoryConfiguration> read GetInventoryConfigurationList write SetInventoryConfigurationList;
    property KeepInventoryConfigurationList: Boolean read GetKeepInventoryConfigurationList write SetKeepInventoryConfigurationList;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
  end;
  
  TListBucketInventoryConfigurationsResponse = class(TAmazonWebServiceResponse, IListBucketInventoryConfigurationsResponse)
  strict private
    FContinuationToken: Nullable<string>;
    FInventoryConfigurationList: TObjectList<TInventoryConfiguration>;
    FKeepInventoryConfigurationList: Boolean;
    FIsTruncated: Nullable<Boolean>;
    FNextContinuationToken: Nullable<string>;
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetInventoryConfigurationList: TObjectList<TInventoryConfiguration>;
    procedure SetInventoryConfigurationList(const Value: TObjectList<TInventoryConfiguration>);
    function GetKeepInventoryConfigurationList: Boolean;
    procedure SetKeepInventoryConfigurationList(const Value: Boolean);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
  strict protected
    function Obj: TListBucketInventoryConfigurationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContinuationToken: Boolean;
    function IsSetInventoryConfigurationList: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetNextContinuationToken: Boolean;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property InventoryConfigurationList: TObjectList<TInventoryConfiguration> read GetInventoryConfigurationList write SetInventoryConfigurationList;
    property KeepInventoryConfigurationList: Boolean read GetKeepInventoryConfigurationList write SetKeepInventoryConfigurationList;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
  end;
  
implementation

{ TListBucketInventoryConfigurationsResponse }

constructor TListBucketInventoryConfigurationsResponse.Create;
begin
  inherited;
  FInventoryConfigurationList := TObjectList<TInventoryConfiguration>.Create;
end;

destructor TListBucketInventoryConfigurationsResponse.Destroy;
begin
  InventoryConfigurationList := nil;
  inherited;
end;

function TListBucketInventoryConfigurationsResponse.Obj: TListBucketInventoryConfigurationsResponse;
begin
  Result := Self;
end;

function TListBucketInventoryConfigurationsResponse.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListBucketInventoryConfigurationsResponse.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListBucketInventoryConfigurationsResponse.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListBucketInventoryConfigurationsResponse.GetInventoryConfigurationList: TObjectList<TInventoryConfiguration>;
begin
  Result := FInventoryConfigurationList;
end;

procedure TListBucketInventoryConfigurationsResponse.SetInventoryConfigurationList(const Value: TObjectList<TInventoryConfiguration>);
begin
  if FInventoryConfigurationList <> Value then
  begin
    if not KeepInventoryConfigurationList then
      FInventoryConfigurationList.Free;
    FInventoryConfigurationList := Value;
  end;
end;

function TListBucketInventoryConfigurationsResponse.GetKeepInventoryConfigurationList: Boolean;
begin
  Result := FKeepInventoryConfigurationList;
end;

procedure TListBucketInventoryConfigurationsResponse.SetKeepInventoryConfigurationList(const Value: Boolean);
begin
  FKeepInventoryConfigurationList := Value;
end;

function TListBucketInventoryConfigurationsResponse.IsSetInventoryConfigurationList: Boolean;
begin
  Result := (FInventoryConfigurationList <> nil) and (FInventoryConfigurationList.Count > 0);
end;

function TListBucketInventoryConfigurationsResponse.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListBucketInventoryConfigurationsResponse.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListBucketInventoryConfigurationsResponse.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListBucketInventoryConfigurationsResponse.GetNextContinuationToken: string;
begin
  Result := FNextContinuationToken.ValueOrDefault;
end;

procedure TListBucketInventoryConfigurationsResponse.SetNextContinuationToken(const Value: string);
begin
  FNextContinuationToken := Value;
end;

function TListBucketInventoryConfigurationsResponse.IsSetNextContinuationToken: Boolean;
begin
  Result := FNextContinuationToken.HasValue;
end;

end.
