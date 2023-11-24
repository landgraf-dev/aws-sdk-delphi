unit AWS.S3.Model.ListBucketAnalyticsConfigurationsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Model.AnalyticsConfiguration;

type
  TListBucketAnalyticsConfigurationsResponse = class;
  
  IListBucketAnalyticsConfigurationsResponse = interface(IAmazonWebServiceResponse)
    function GetAnalyticsConfigurationList: TObjectList<TAnalyticsConfiguration>;
    procedure SetAnalyticsConfigurationList(const Value: TObjectList<TAnalyticsConfiguration>);
    function GetKeepAnalyticsConfigurationList: Boolean;
    procedure SetKeepAnalyticsConfigurationList(const Value: Boolean);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
    function Obj: TListBucketAnalyticsConfigurationsResponse;
    function IsSetAnalyticsConfigurationList: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetNextContinuationToken: Boolean;
    property AnalyticsConfigurationList: TObjectList<TAnalyticsConfiguration> read GetAnalyticsConfigurationList write SetAnalyticsConfigurationList;
    property KeepAnalyticsConfigurationList: Boolean read GetKeepAnalyticsConfigurationList write SetKeepAnalyticsConfigurationList;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
  end;
  
  TListBucketAnalyticsConfigurationsResponse = class(TAmazonWebServiceResponse, IListBucketAnalyticsConfigurationsResponse)
  strict private
    FAnalyticsConfigurationList: TObjectList<TAnalyticsConfiguration>;
    FKeepAnalyticsConfigurationList: Boolean;
    FContinuationToken: Nullable<string>;
    FIsTruncated: Nullable<Boolean>;
    FNextContinuationToken: Nullable<string>;
    function GetAnalyticsConfigurationList: TObjectList<TAnalyticsConfiguration>;
    procedure SetAnalyticsConfigurationList(const Value: TObjectList<TAnalyticsConfiguration>);
    function GetKeepAnalyticsConfigurationList: Boolean;
    procedure SetKeepAnalyticsConfigurationList(const Value: Boolean);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
  strict protected
    function Obj: TListBucketAnalyticsConfigurationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAnalyticsConfigurationList: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetNextContinuationToken: Boolean;
    property AnalyticsConfigurationList: TObjectList<TAnalyticsConfiguration> read GetAnalyticsConfigurationList write SetAnalyticsConfigurationList;
    property KeepAnalyticsConfigurationList: Boolean read GetKeepAnalyticsConfigurationList write SetKeepAnalyticsConfigurationList;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
  end;
  
implementation

{ TListBucketAnalyticsConfigurationsResponse }

constructor TListBucketAnalyticsConfigurationsResponse.Create;
begin
  inherited;
  FAnalyticsConfigurationList := TObjectList<TAnalyticsConfiguration>.Create;
end;

destructor TListBucketAnalyticsConfigurationsResponse.Destroy;
begin
  AnalyticsConfigurationList := nil;
  inherited;
end;

function TListBucketAnalyticsConfigurationsResponse.Obj: TListBucketAnalyticsConfigurationsResponse;
begin
  Result := Self;
end;

function TListBucketAnalyticsConfigurationsResponse.GetAnalyticsConfigurationList: TObjectList<TAnalyticsConfiguration>;
begin
  Result := FAnalyticsConfigurationList;
end;

procedure TListBucketAnalyticsConfigurationsResponse.SetAnalyticsConfigurationList(const Value: TObjectList<TAnalyticsConfiguration>);
begin
  if FAnalyticsConfigurationList <> Value then
  begin
    if not KeepAnalyticsConfigurationList then
      FAnalyticsConfigurationList.Free;
    FAnalyticsConfigurationList := Value;
  end;
end;

function TListBucketAnalyticsConfigurationsResponse.GetKeepAnalyticsConfigurationList: Boolean;
begin
  Result := FKeepAnalyticsConfigurationList;
end;

procedure TListBucketAnalyticsConfigurationsResponse.SetKeepAnalyticsConfigurationList(const Value: Boolean);
begin
  FKeepAnalyticsConfigurationList := Value;
end;

function TListBucketAnalyticsConfigurationsResponse.IsSetAnalyticsConfigurationList: Boolean;
begin
  Result := (FAnalyticsConfigurationList <> nil) and (FAnalyticsConfigurationList.Count > 0);
end;

function TListBucketAnalyticsConfigurationsResponse.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListBucketAnalyticsConfigurationsResponse.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListBucketAnalyticsConfigurationsResponse.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListBucketAnalyticsConfigurationsResponse.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListBucketAnalyticsConfigurationsResponse.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListBucketAnalyticsConfigurationsResponse.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListBucketAnalyticsConfigurationsResponse.GetNextContinuationToken: string;
begin
  Result := FNextContinuationToken.ValueOrDefault;
end;

procedure TListBucketAnalyticsConfigurationsResponse.SetNextContinuationToken(const Value: string);
begin
  FNextContinuationToken := Value;
end;

function TListBucketAnalyticsConfigurationsResponse.IsSetNextContinuationToken: Boolean;
begin
  Result := FNextContinuationToken.HasValue;
end;

end.
