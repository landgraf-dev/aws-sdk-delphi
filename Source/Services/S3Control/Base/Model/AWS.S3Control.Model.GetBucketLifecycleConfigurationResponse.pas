unit AWS.S3Control.Model.GetBucketLifecycleConfigurationResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.LifecycleRule;

type
  TGetBucketLifecycleConfigurationResponse = class;
  
  IGetBucketLifecycleConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetRules: TObjectList<TLifecycleRule>;
    procedure SetRules(const Value: TObjectList<TLifecycleRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
    function Obj: TGetBucketLifecycleConfigurationResponse;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TLifecycleRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
  TGetBucketLifecycleConfigurationResponse = class(TAmazonWebServiceResponse, IGetBucketLifecycleConfigurationResponse)
  strict private
    FRules: TObjectList<TLifecycleRule>;
    FKeepRules: Boolean;
    function GetRules: TObjectList<TLifecycleRule>;
    procedure SetRules(const Value: TObjectList<TLifecycleRule>);
    function GetKeepRules: Boolean;
    procedure SetKeepRules(const Value: Boolean);
  strict protected
    function Obj: TGetBucketLifecycleConfigurationResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRules: Boolean;
    property Rules: TObjectList<TLifecycleRule> read GetRules write SetRules;
    property KeepRules: Boolean read GetKeepRules write SetKeepRules;
  end;
  
implementation

{ TGetBucketLifecycleConfigurationResponse }

constructor TGetBucketLifecycleConfigurationResponse.Create;
begin
  inherited;
  FRules := TObjectList<TLifecycleRule>.Create;
end;

destructor TGetBucketLifecycleConfigurationResponse.Destroy;
begin
  Rules := nil;
  inherited;
end;

function TGetBucketLifecycleConfigurationResponse.Obj: TGetBucketLifecycleConfigurationResponse;
begin
  Result := Self;
end;

function TGetBucketLifecycleConfigurationResponse.GetRules: TObjectList<TLifecycleRule>;
begin
  Result := FRules;
end;

procedure TGetBucketLifecycleConfigurationResponse.SetRules(const Value: TObjectList<TLifecycleRule>);
begin
  if FRules <> Value then
  begin
    if not KeepRules then
      FRules.Free;
    FRules := Value;
  end;
end;

function TGetBucketLifecycleConfigurationResponse.GetKeepRules: Boolean;
begin
  Result := FKeepRules;
end;

procedure TGetBucketLifecycleConfigurationResponse.SetKeepRules(const Value: Boolean);
begin
  FKeepRules := Value;
end;

function TGetBucketLifecycleConfigurationResponse.IsSetRules: Boolean;
begin
  Result := (FRules <> nil) and (FRules.Count > 0);
end;

end.
