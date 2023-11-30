unit AWS.Rekognition.Model.KinesisDataStream;

interface

uses
  AWS.Nullable;

type
  TKinesisDataStream = class;
  
  IKinesisDataStream = interface
    function GetArn: string;
    procedure SetArn(const Value: string);
    function Obj: TKinesisDataStream;
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
  TKinesisDataStream = class
  strict private
    FArn: Nullable<string>;
    function GetArn: string;
    procedure SetArn(const Value: string);
  strict protected
    function Obj: TKinesisDataStream;
  public
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
implementation

{ TKinesisDataStream }

function TKinesisDataStream.Obj: TKinesisDataStream;
begin
  Result := Self;
end;

function TKinesisDataStream.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TKinesisDataStream.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TKinesisDataStream.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

end.
