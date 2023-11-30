unit AWS.S3Control.Model.StorageLensAwsOrg;

interface

uses
  AWS.Nullable;

type
  TStorageLensAwsOrg = class;
  
  IStorageLensAwsOrg = interface
    function GetArn: string;
    procedure SetArn(const Value: string);
    function Obj: TStorageLensAwsOrg;
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
  TStorageLensAwsOrg = class
  strict private
    FArn: Nullable<string>;
    function GetArn: string;
    procedure SetArn(const Value: string);
  strict protected
    function Obj: TStorageLensAwsOrg;
  public
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
implementation

{ TStorageLensAwsOrg }

function TStorageLensAwsOrg.Obj: TStorageLensAwsOrg;
begin
  Result := Self;
end;

function TStorageLensAwsOrg.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TStorageLensAwsOrg.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TStorageLensAwsOrg.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

end.
