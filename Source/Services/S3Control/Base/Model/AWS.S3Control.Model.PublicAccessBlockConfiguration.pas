unit AWS.S3Control.Model.PublicAccessBlockConfiguration;

interface

uses
  Bcl.Types.Nullable;

type
  TPublicAccessBlockConfiguration = class;
  
  IPublicAccessBlockConfiguration = interface
    function GetBlockPublicAcls: Boolean;
    procedure SetBlockPublicAcls(const Value: Boolean);
    function GetBlockPublicPolicy: Boolean;
    procedure SetBlockPublicPolicy(const Value: Boolean);
    function GetIgnorePublicAcls: Boolean;
    procedure SetIgnorePublicAcls(const Value: Boolean);
    function GetRestrictPublicBuckets: Boolean;
    procedure SetRestrictPublicBuckets(const Value: Boolean);
    function Obj: TPublicAccessBlockConfiguration;
    function IsSetBlockPublicAcls: Boolean;
    function IsSetBlockPublicPolicy: Boolean;
    function IsSetIgnorePublicAcls: Boolean;
    function IsSetRestrictPublicBuckets: Boolean;
    property BlockPublicAcls: Boolean read GetBlockPublicAcls write SetBlockPublicAcls;
    property BlockPublicPolicy: Boolean read GetBlockPublicPolicy write SetBlockPublicPolicy;
    property IgnorePublicAcls: Boolean read GetIgnorePublicAcls write SetIgnorePublicAcls;
    property RestrictPublicBuckets: Boolean read GetRestrictPublicBuckets write SetRestrictPublicBuckets;
  end;
  
  TPublicAccessBlockConfiguration = class
  strict private
    FBlockPublicAcls: Nullable<Boolean>;
    FBlockPublicPolicy: Nullable<Boolean>;
    FIgnorePublicAcls: Nullable<Boolean>;
    FRestrictPublicBuckets: Nullable<Boolean>;
    function GetBlockPublicAcls: Boolean;
    procedure SetBlockPublicAcls(const Value: Boolean);
    function GetBlockPublicPolicy: Boolean;
    procedure SetBlockPublicPolicy(const Value: Boolean);
    function GetIgnorePublicAcls: Boolean;
    procedure SetIgnorePublicAcls(const Value: Boolean);
    function GetRestrictPublicBuckets: Boolean;
    procedure SetRestrictPublicBuckets(const Value: Boolean);
  strict protected
    function Obj: TPublicAccessBlockConfiguration;
  public
    function IsSetBlockPublicAcls: Boolean;
    function IsSetBlockPublicPolicy: Boolean;
    function IsSetIgnorePublicAcls: Boolean;
    function IsSetRestrictPublicBuckets: Boolean;
    property BlockPublicAcls: Boolean read GetBlockPublicAcls write SetBlockPublicAcls;
    property BlockPublicPolicy: Boolean read GetBlockPublicPolicy write SetBlockPublicPolicy;
    property IgnorePublicAcls: Boolean read GetIgnorePublicAcls write SetIgnorePublicAcls;
    property RestrictPublicBuckets: Boolean read GetRestrictPublicBuckets write SetRestrictPublicBuckets;
  end;
  
implementation

{ TPublicAccessBlockConfiguration }

function TPublicAccessBlockConfiguration.Obj: TPublicAccessBlockConfiguration;
begin
  Result := Self;
end;

function TPublicAccessBlockConfiguration.GetBlockPublicAcls: Boolean;
begin
  Result := FBlockPublicAcls.ValueOrDefault;
end;

procedure TPublicAccessBlockConfiguration.SetBlockPublicAcls(const Value: Boolean);
begin
  FBlockPublicAcls := Value;
end;

function TPublicAccessBlockConfiguration.IsSetBlockPublicAcls: Boolean;
begin
  Result := FBlockPublicAcls.HasValue;
end;

function TPublicAccessBlockConfiguration.GetBlockPublicPolicy: Boolean;
begin
  Result := FBlockPublicPolicy.ValueOrDefault;
end;

procedure TPublicAccessBlockConfiguration.SetBlockPublicPolicy(const Value: Boolean);
begin
  FBlockPublicPolicy := Value;
end;

function TPublicAccessBlockConfiguration.IsSetBlockPublicPolicy: Boolean;
begin
  Result := FBlockPublicPolicy.HasValue;
end;

function TPublicAccessBlockConfiguration.GetIgnorePublicAcls: Boolean;
begin
  Result := FIgnorePublicAcls.ValueOrDefault;
end;

procedure TPublicAccessBlockConfiguration.SetIgnorePublicAcls(const Value: Boolean);
begin
  FIgnorePublicAcls := Value;
end;

function TPublicAccessBlockConfiguration.IsSetIgnorePublicAcls: Boolean;
begin
  Result := FIgnorePublicAcls.HasValue;
end;

function TPublicAccessBlockConfiguration.GetRestrictPublicBuckets: Boolean;
begin
  Result := FRestrictPublicBuckets.ValueOrDefault;
end;

procedure TPublicAccessBlockConfiguration.SetRestrictPublicBuckets(const Value: Boolean);
begin
  FRestrictPublicBuckets := Value;
end;

function TPublicAccessBlockConfiguration.IsSetRestrictPublicBuckets: Boolean;
begin
  Result := FRestrictPublicBuckets.HasValue;
end;

end.
