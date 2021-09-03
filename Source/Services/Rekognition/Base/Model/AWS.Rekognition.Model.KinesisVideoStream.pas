unit AWS.Rekognition.Model.KinesisVideoStream;

interface

uses
  Bcl.Types.Nullable;

type
  TKinesisVideoStream = class;
  
  IKinesisVideoStream = interface
    function GetArn: string;
    procedure SetArn(const Value: string);
    function Obj: TKinesisVideoStream;
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
  TKinesisVideoStream = class
  strict private
    FArn: Nullable<string>;
    function GetArn: string;
    procedure SetArn(const Value: string);
  strict protected
    function Obj: TKinesisVideoStream;
  public
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
implementation

{ TKinesisVideoStream }

function TKinesisVideoStream.Obj: TKinesisVideoStream;
begin
  Result := Self;
end;

function TKinesisVideoStream.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TKinesisVideoStream.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TKinesisVideoStream.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

end.
