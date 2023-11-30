unit AWS.S3Control.Model.CreateBucketConfiguration;

interface

uses
  AWS.Nullable, 
  AWS.S3Control.Enums;

type
  TCreateBucketConfiguration = class;
  
  ICreateBucketConfiguration = interface
    function GetLocationConstraint: TBucketLocationConstraint;
    procedure SetLocationConstraint(const Value: TBucketLocationConstraint);
    function Obj: TCreateBucketConfiguration;
    function IsSetLocationConstraint: Boolean;
    property LocationConstraint: TBucketLocationConstraint read GetLocationConstraint write SetLocationConstraint;
  end;
  
  TCreateBucketConfiguration = class
  strict private
    FLocationConstraint: Nullable<TBucketLocationConstraint>;
    function GetLocationConstraint: TBucketLocationConstraint;
    procedure SetLocationConstraint(const Value: TBucketLocationConstraint);
  strict protected
    function Obj: TCreateBucketConfiguration;
  public
    function IsSetLocationConstraint: Boolean;
    property LocationConstraint: TBucketLocationConstraint read GetLocationConstraint write SetLocationConstraint;
  end;
  
implementation

{ TCreateBucketConfiguration }

function TCreateBucketConfiguration.Obj: TCreateBucketConfiguration;
begin
  Result := Self;
end;

function TCreateBucketConfiguration.GetLocationConstraint: TBucketLocationConstraint;
begin
  Result := FLocationConstraint.ValueOrDefault;
end;

procedure TCreateBucketConfiguration.SetLocationConstraint(const Value: TBucketLocationConstraint);
begin
  FLocationConstraint := Value;
end;

function TCreateBucketConfiguration.IsSetLocationConstraint: Boolean;
begin
  Result := FLocationConstraint.HasValue;
end;

end.
