unit AWS.SES.Model.KinesisFirehoseDestination;

interface

uses
  AWS.Nullable;

type
  TKinesisFirehoseDestination = class;
  
  IKinesisFirehoseDestination = interface
    function GetDeliveryStreamARN: string;
    procedure SetDeliveryStreamARN(const Value: string);
    function GetIAMRoleARN: string;
    procedure SetIAMRoleARN(const Value: string);
    function Obj: TKinesisFirehoseDestination;
    function IsSetDeliveryStreamARN: Boolean;
    function IsSetIAMRoleARN: Boolean;
    property DeliveryStreamARN: string read GetDeliveryStreamARN write SetDeliveryStreamARN;
    property IAMRoleARN: string read GetIAMRoleARN write SetIAMRoleARN;
  end;
  
  TKinesisFirehoseDestination = class
  strict private
    FDeliveryStreamARN: Nullable<string>;
    FIAMRoleARN: Nullable<string>;
    function GetDeliveryStreamARN: string;
    procedure SetDeliveryStreamARN(const Value: string);
    function GetIAMRoleARN: string;
    procedure SetIAMRoleARN(const Value: string);
  strict protected
    function Obj: TKinesisFirehoseDestination;
  public
    function IsSetDeliveryStreamARN: Boolean;
    function IsSetIAMRoleARN: Boolean;
    property DeliveryStreamARN: string read GetDeliveryStreamARN write SetDeliveryStreamARN;
    property IAMRoleARN: string read GetIAMRoleARN write SetIAMRoleARN;
  end;
  
implementation

{ TKinesisFirehoseDestination }

function TKinesisFirehoseDestination.Obj: TKinesisFirehoseDestination;
begin
  Result := Self;
end;

function TKinesisFirehoseDestination.GetDeliveryStreamARN: string;
begin
  Result := FDeliveryStreamARN.ValueOrDefault;
end;

procedure TKinesisFirehoseDestination.SetDeliveryStreamARN(const Value: string);
begin
  FDeliveryStreamARN := Value;
end;

function TKinesisFirehoseDestination.IsSetDeliveryStreamARN: Boolean;
begin
  Result := FDeliveryStreamARN.HasValue;
end;

function TKinesisFirehoseDestination.GetIAMRoleARN: string;
begin
  Result := FIAMRoleARN.ValueOrDefault;
end;

procedure TKinesisFirehoseDestination.SetIAMRoleARN(const Value: string);
begin
  FIAMRoleARN := Value;
end;

function TKinesisFirehoseDestination.IsSetIAMRoleARN: Boolean;
begin
  Result := FIAMRoleARN.HasValue;
end;

end.
