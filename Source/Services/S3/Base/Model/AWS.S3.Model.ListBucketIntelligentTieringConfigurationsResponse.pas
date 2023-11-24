unit AWS.S3.Model.ListBucketIntelligentTieringConfigurationsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.IntelligentTieringConfiguration;

type
  TListBucketIntelligentTieringConfigurationsResponse = class;
  
  IListBucketIntelligentTieringConfigurationsResponse = interface(IAmazonWebServiceResponse)
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetIntelligentTieringConfigurationList: TObjectList<TIntelligentTieringConfiguration>;
    procedure SetIntelligentTieringConfigurationList(const Value: TObjectList<TIntelligentTieringConfiguration>);
    function GetKeepIntelligentTieringConfigurationList: Boolean;
    procedure SetKeepIntelligentTieringConfigurationList(const Value: Boolean);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
    function Obj: TListBucketIntelligentTieringConfigurationsResponse;
    function IsSetContinuationToken: Boolean;
    function IsSetIntelligentTieringConfigurationList: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetNextContinuationToken: Boolean;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property IntelligentTieringConfigurationList: TObjectList<TIntelligentTieringConfiguration> read GetIntelligentTieringConfigurationList write SetIntelligentTieringConfigurationList;
    property KeepIntelligentTieringConfigurationList: Boolean read GetKeepIntelligentTieringConfigurationList write SetKeepIntelligentTieringConfigurationList;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
  end;
  
  TListBucketIntelligentTieringConfigurationsResponse = class(TAmazonWebServiceResponse, IListBucketIntelligentTieringConfigurationsResponse)
  strict private
    FContinuationToken: Nullable<string>;
    FIntelligentTieringConfigurationList: TObjectList<TIntelligentTieringConfiguration>;
    FKeepIntelligentTieringConfigurationList: Boolean;
    FIsTruncated: Nullable<Boolean>;
    FNextContinuationToken: Nullable<string>;
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetIntelligentTieringConfigurationList: TObjectList<TIntelligentTieringConfiguration>;
    procedure SetIntelligentTieringConfigurationList(const Value: TObjectList<TIntelligentTieringConfiguration>);
    function GetKeepIntelligentTieringConfigurationList: Boolean;
    procedure SetKeepIntelligentTieringConfigurationList(const Value: Boolean);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetNextContinuationToken: string;
    procedure SetNextContinuationToken(const Value: string);
  strict protected
    function Obj: TListBucketIntelligentTieringConfigurationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContinuationToken: Boolean;
    function IsSetIntelligentTieringConfigurationList: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetNextContinuationToken: Boolean;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property IntelligentTieringConfigurationList: TObjectList<TIntelligentTieringConfiguration> read GetIntelligentTieringConfigurationList write SetIntelligentTieringConfigurationList;
    property KeepIntelligentTieringConfigurationList: Boolean read GetKeepIntelligentTieringConfigurationList write SetKeepIntelligentTieringConfigurationList;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property NextContinuationToken: string read GetNextContinuationToken write SetNextContinuationToken;
  end;
  
implementation

{ TListBucketIntelligentTieringConfigurationsResponse }

constructor TListBucketIntelligentTieringConfigurationsResponse.Create;
begin
  inherited;
  FIntelligentTieringConfigurationList := TObjectList<TIntelligentTieringConfiguration>.Create;
end;

destructor TListBucketIntelligentTieringConfigurationsResponse.Destroy;
begin
  IntelligentTieringConfigurationList := nil;
  inherited;
end;

function TListBucketIntelligentTieringConfigurationsResponse.Obj: TListBucketIntelligentTieringConfigurationsResponse;
begin
  Result := Self;
end;

function TListBucketIntelligentTieringConfigurationsResponse.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListBucketIntelligentTieringConfigurationsResponse.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListBucketIntelligentTieringConfigurationsResponse.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListBucketIntelligentTieringConfigurationsResponse.GetIntelligentTieringConfigurationList: TObjectList<TIntelligentTieringConfiguration>;
begin
  Result := FIntelligentTieringConfigurationList;
end;

procedure TListBucketIntelligentTieringConfigurationsResponse.SetIntelligentTieringConfigurationList(const Value: TObjectList<TIntelligentTieringConfiguration>);
begin
  if FIntelligentTieringConfigurationList <> Value then
  begin
    if not KeepIntelligentTieringConfigurationList then
      FIntelligentTieringConfigurationList.Free;
    FIntelligentTieringConfigurationList := Value;
  end;
end;

function TListBucketIntelligentTieringConfigurationsResponse.GetKeepIntelligentTieringConfigurationList: Boolean;
begin
  Result := FKeepIntelligentTieringConfigurationList;
end;

procedure TListBucketIntelligentTieringConfigurationsResponse.SetKeepIntelligentTieringConfigurationList(const Value: Boolean);
begin
  FKeepIntelligentTieringConfigurationList := Value;
end;

function TListBucketIntelligentTieringConfigurationsResponse.IsSetIntelligentTieringConfigurationList: Boolean;
begin
  Result := (FIntelligentTieringConfigurationList <> nil) and (FIntelligentTieringConfigurationList.Count > 0);
end;

function TListBucketIntelligentTieringConfigurationsResponse.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListBucketIntelligentTieringConfigurationsResponse.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListBucketIntelligentTieringConfigurationsResponse.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListBucketIntelligentTieringConfigurationsResponse.GetNextContinuationToken: string;
begin
  Result := FNextContinuationToken.ValueOrDefault;
end;

procedure TListBucketIntelligentTieringConfigurationsResponse.SetNextContinuationToken(const Value: string);
begin
  FNextContinuationToken := Value;
end;

function TListBucketIntelligentTieringConfigurationsResponse.IsSetNextContinuationToken: Boolean;
begin
  Result := FNextContinuationToken.HasValue;
end;

end.
