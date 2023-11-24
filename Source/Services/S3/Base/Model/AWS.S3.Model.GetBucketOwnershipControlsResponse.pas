unit AWS.S3.Model.GetBucketOwnershipControlsResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.OwnershipControls;

type
  TGetBucketOwnershipControlsResponse = class;
  
  IGetBucketOwnershipControlsResponse = interface(IAmazonWebServiceResponse)
    function GetOwnershipControls: TOwnershipControls;
    procedure SetOwnershipControls(const Value: TOwnershipControls);
    function GetKeepOwnershipControls: Boolean;
    procedure SetKeepOwnershipControls(const Value: Boolean);
    function Obj: TGetBucketOwnershipControlsResponse;
    function IsSetOwnershipControls: Boolean;
    property OwnershipControls: TOwnershipControls read GetOwnershipControls write SetOwnershipControls;
    property KeepOwnershipControls: Boolean read GetKeepOwnershipControls write SetKeepOwnershipControls;
  end;
  
  TGetBucketOwnershipControlsResponse = class(TAmazonWebServiceResponse, IGetBucketOwnershipControlsResponse)
  strict private
    FOwnershipControls: TOwnershipControls;
    FKeepOwnershipControls: Boolean;
    function GetOwnershipControls: TOwnershipControls;
    procedure SetOwnershipControls(const Value: TOwnershipControls);
    function GetKeepOwnershipControls: Boolean;
    procedure SetKeepOwnershipControls(const Value: Boolean);
  strict protected
    function Obj: TGetBucketOwnershipControlsResponse;
  public
    destructor Destroy; override;
    function IsSetOwnershipControls: Boolean;
    property OwnershipControls: TOwnershipControls read GetOwnershipControls write SetOwnershipControls;
    property KeepOwnershipControls: Boolean read GetKeepOwnershipControls write SetKeepOwnershipControls;
  end;
  
implementation

{ TGetBucketOwnershipControlsResponse }

destructor TGetBucketOwnershipControlsResponse.Destroy;
begin
  OwnershipControls := nil;
  inherited;
end;

function TGetBucketOwnershipControlsResponse.Obj: TGetBucketOwnershipControlsResponse;
begin
  Result := Self;
end;

function TGetBucketOwnershipControlsResponse.GetOwnershipControls: TOwnershipControls;
begin
  Result := FOwnershipControls;
end;

procedure TGetBucketOwnershipControlsResponse.SetOwnershipControls(const Value: TOwnershipControls);
begin
  if FOwnershipControls <> Value then
  begin
    if not KeepOwnershipControls then
      FOwnershipControls.Free;
    FOwnershipControls := Value;
  end;
end;

function TGetBucketOwnershipControlsResponse.GetKeepOwnershipControls: Boolean;
begin
  Result := FKeepOwnershipControls;
end;

procedure TGetBucketOwnershipControlsResponse.SetKeepOwnershipControls(const Value: Boolean);
begin
  FKeepOwnershipControls := Value;
end;

function TGetBucketOwnershipControlsResponse.IsSetOwnershipControls: Boolean;
begin
  Result := FOwnershipControls <> nil;
end;

end.
