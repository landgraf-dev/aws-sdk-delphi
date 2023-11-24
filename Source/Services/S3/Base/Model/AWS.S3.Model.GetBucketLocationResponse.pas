unit AWS.S3.Model.GetBucketLocationResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Enums;

type
  TGetBucketLocationResponse = class;
  
  IGetBucketLocationResponse = interface(IAmazonWebServiceResponse)
    function GetLocationConstraint: TBucketLocationConstraint;
    procedure SetLocationConstraint(const Value: TBucketLocationConstraint);
    function Obj: TGetBucketLocationResponse;
    function IsSetLocationConstraint: Boolean;
    property LocationConstraint: TBucketLocationConstraint read GetLocationConstraint write SetLocationConstraint;
  end;
  
  TGetBucketLocationResponse = class(TAmazonWebServiceResponse, IGetBucketLocationResponse)
  strict private
    FLocationConstraint: Nullable<TBucketLocationConstraint>;
    function GetLocationConstraint: TBucketLocationConstraint;
    procedure SetLocationConstraint(const Value: TBucketLocationConstraint);
  strict protected
    function Obj: TGetBucketLocationResponse;
  public
    function IsSetLocationConstraint: Boolean;
    property LocationConstraint: TBucketLocationConstraint read GetLocationConstraint write SetLocationConstraint;
  end;
  
implementation

{ TGetBucketLocationResponse }

function TGetBucketLocationResponse.Obj: TGetBucketLocationResponse;
begin
  Result := Self;
end;

function TGetBucketLocationResponse.GetLocationConstraint: TBucketLocationConstraint;
begin
  Result := FLocationConstraint.ValueOrDefault;
end;

procedure TGetBucketLocationResponse.SetLocationConstraint(const Value: TBucketLocationConstraint);
begin
  FLocationConstraint := Value;
end;

function TGetBucketLocationResponse.IsSetLocationConstraint: Boolean;
begin
  Result := FLocationConstraint.HasValue;
end;

end.
