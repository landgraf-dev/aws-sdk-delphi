unit AWS.S3Control.Model.CreateBucketResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreateBucketResponse = class;
  
  ICreateBucketResponse = interface(IAmazonWebServiceResponse)
    function GetBucketArn: string;
    procedure SetBucketArn(const Value: string);
    function GetLocation: string;
    procedure SetLocation(const Value: string);
    function Obj: TCreateBucketResponse;
    function IsSetBucketArn: Boolean;
    function IsSetLocation: Boolean;
    property BucketArn: string read GetBucketArn write SetBucketArn;
    property Location: string read GetLocation write SetLocation;
  end;
  
  TCreateBucketResponse = class(TAmazonWebServiceResponse, ICreateBucketResponse)
  strict private
    FBucketArn: Nullable<string>;
    FLocation: Nullable<string>;
    function GetBucketArn: string;
    procedure SetBucketArn(const Value: string);
    function GetLocation: string;
    procedure SetLocation(const Value: string);
  strict protected
    function Obj: TCreateBucketResponse;
  public
    function IsSetBucketArn: Boolean;
    function IsSetLocation: Boolean;
    property BucketArn: string read GetBucketArn write SetBucketArn;
    property Location: string read GetLocation write SetLocation;
  end;
  
implementation

{ TCreateBucketResponse }

function TCreateBucketResponse.Obj: TCreateBucketResponse;
begin
  Result := Self;
end;

function TCreateBucketResponse.GetBucketArn: string;
begin
  Result := FBucketArn.ValueOrDefault;
end;

procedure TCreateBucketResponse.SetBucketArn(const Value: string);
begin
  FBucketArn := Value;
end;

function TCreateBucketResponse.IsSetBucketArn: Boolean;
begin
  Result := FBucketArn.HasValue;
end;

function TCreateBucketResponse.GetLocation: string;
begin
  Result := FLocation.ValueOrDefault;
end;

procedure TCreateBucketResponse.SetLocation(const Value: string);
begin
  FLocation := Value;
end;

function TCreateBucketResponse.IsSetLocation: Boolean;
begin
  Result := FLocation.HasValue;
end;

end.
