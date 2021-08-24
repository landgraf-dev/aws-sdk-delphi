unit AWS.SESv2.Model.KinesisFirehoseDestination;

interface

uses
  Bcl.Types.Nullable;

type
  TKinesisFirehoseDestination = class;
  
  IKinesisFirehoseDestination = interface
    function GetDeliveryStreamArn: string;
    procedure SetDeliveryStreamArn(const Value: string);
    function GetIamRoleArn: string;
    procedure SetIamRoleArn(const Value: string);
    function Obj: TKinesisFirehoseDestination;
    function IsSetDeliveryStreamArn: Boolean;
    function IsSetIamRoleArn: Boolean;
    property DeliveryStreamArn: string read GetDeliveryStreamArn write SetDeliveryStreamArn;
    property IamRoleArn: string read GetIamRoleArn write SetIamRoleArn;
  end;
  
  TKinesisFirehoseDestination = class
  strict private
    FDeliveryStreamArn: Nullable<string>;
    FIamRoleArn: Nullable<string>;
    function GetDeliveryStreamArn: string;
    procedure SetDeliveryStreamArn(const Value: string);
    function GetIamRoleArn: string;
    procedure SetIamRoleArn(const Value: string);
  strict protected
    function Obj: TKinesisFirehoseDestination;
  public
    function IsSetDeliveryStreamArn: Boolean;
    function IsSetIamRoleArn: Boolean;
    property DeliveryStreamArn: string read GetDeliveryStreamArn write SetDeliveryStreamArn;
    property IamRoleArn: string read GetIamRoleArn write SetIamRoleArn;
  end;
  
implementation

{ TKinesisFirehoseDestination }

function TKinesisFirehoseDestination.Obj: TKinesisFirehoseDestination;
begin
  Result := Self;
end;

function TKinesisFirehoseDestination.GetDeliveryStreamArn: string;
begin
  Result := FDeliveryStreamArn.ValueOrDefault;
end;

procedure TKinesisFirehoseDestination.SetDeliveryStreamArn(const Value: string);
begin
  FDeliveryStreamArn := Value;
end;

function TKinesisFirehoseDestination.IsSetDeliveryStreamArn: Boolean;
begin
  Result := FDeliveryStreamArn.HasValue;
end;

function TKinesisFirehoseDestination.GetIamRoleArn: string;
begin
  Result := FIamRoleArn.ValueOrDefault;
end;

procedure TKinesisFirehoseDestination.SetIamRoleArn(const Value: string);
begin
  FIamRoleArn := Value;
end;

function TKinesisFirehoseDestination.IsSetIamRoleArn: Boolean;
begin
  Result := FIamRoleArn.HasValue;
end;

end.
