unit AWS.S3.Model.ListBucketMetricsConfigurationsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.MetricsConfiguration;

type
  TListBucketMetricsConfigurationsResponse = class;
  
  IListBucketMetricsConfigurationsResponse = interface(IAmazonWebServiceResponse)
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetMetricsConfigurationList: TObjectList<TMetricsConfiguration>;
    procedure SetMetricsConfigurationList(const Value: TObjectList<TMetricsConfiguration>);
    function GetKeepMetricsConfigurationList: Boolean;
    procedure SetKeepMetricsConfigurationList(const Value: Boolean);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
    function Obj: TListBucketMetricsConfigurationsResponse;
    function IsSetContinuationToken: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetMetricsConfigurationList: Boolean;
    function IsSetNextContinuationToken: Boolean;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property MetricsConfigurationList: TObjectList<TMetricsConfiguration> read GetMetricsConfigurationList write SetMetricsConfigurationList;
    property KeepMetricsConfigurationList: Boolean read GetKeepMetricsConfigurationList write SetKeepMetricsConfigurationList;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
  end;
  
  TListBucketMetricsConfigurationsResponse = class(TAmazonWebServiceResponse, IListBucketMetricsConfigurationsResponse)
  strict private
    FContinuationToken: Nullable<string>;
    FIsTruncated: Nullable<Boolean>;
    FMetricsConfigurationList: TObjectList<TMetricsConfiguration>;
    FKeepMetricsConfigurationList: Boolean;
    FNextContinuationToken: Nullable<string>;
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetMetricsConfigurationList: TObjectList<TMetricsConfiguration>;
    procedure SetMetricsConfigurationList(const Value: TObjectList<TMetricsConfiguration>);
    function GetKeepMetricsConfigurationList: Boolean;
    procedure SetKeepMetricsConfigurationList(const Value: Boolean);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
  strict protected
    function Obj: TListBucketMetricsConfigurationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContinuationToken: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetMetricsConfigurationList: Boolean;
    function IsSetNextContinuationToken: Boolean;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property MetricsConfigurationList: TObjectList<TMetricsConfiguration> read GetMetricsConfigurationList write SetMetricsConfigurationList;
    property KeepMetricsConfigurationList: Boolean read GetKeepMetricsConfigurationList write SetKeepMetricsConfigurationList;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
  end;
  
implementation

{ TListBucketMetricsConfigurationsResponse }

constructor TListBucketMetricsConfigurationsResponse.Create;
begin
  inherited;
  FMetricsConfigurationList := TObjectList<TMetricsConfiguration>.Create;
end;

destructor TListBucketMetricsConfigurationsResponse.Destroy;
begin
  MetricsConfigurationList := nil;
  inherited;
end;

function TListBucketMetricsConfigurationsResponse.Obj: TListBucketMetricsConfigurationsResponse;
begin
  Result := Self;
end;

function TListBucketMetricsConfigurationsResponse.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListBucketMetricsConfigurationsResponse.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListBucketMetricsConfigurationsResponse.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListBucketMetricsConfigurationsResponse.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListBucketMetricsConfigurationsResponse.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListBucketMetricsConfigurationsResponse.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListBucketMetricsConfigurationsResponse.GetMetricsConfigurationList: TObjectList<TMetricsConfiguration>;
begin
  Result := FMetricsConfigurationList;
end;

procedure TListBucketMetricsConfigurationsResponse.SetMetricsConfigurationList(const Value: TObjectList<TMetricsConfiguration>);
begin
  if FMetricsConfigurationList <> Value then
  begin
    if not KeepMetricsConfigurationList then
      FMetricsConfigurationList.Free;
    FMetricsConfigurationList := Value;
  end;
end;

function TListBucketMetricsConfigurationsResponse.GetKeepMetricsConfigurationList: Boolean;
begin
  Result := FKeepMetricsConfigurationList;
end;

procedure TListBucketMetricsConfigurationsResponse.SetKeepMetricsConfigurationList(const Value: Boolean);
begin
  FKeepMetricsConfigurationList := Value;
end;

function TListBucketMetricsConfigurationsResponse.IsSetMetricsConfigurationList: Boolean;
begin
  Result := (FMetricsConfigurationList <> nil) and (FMetricsConfigurationList.Count > 0);
end;

function TListBucketMetricsConfigurationsResponse.GetNextContinuationToken: string;
begin
  Result := FNextContinuationToken.ValueOrDefault;
end;

procedure TListBucketMetricsConfigurationsResponse.SetNextContinuationToken(const Value: string);
begin
  FNextContinuationToken := Value;
end;

function TListBucketMetricsConfigurationsResponse.IsSetNextContinuationToken: Boolean;
begin
  Result := FNextContinuationToken.HasValue;
end;

end.
