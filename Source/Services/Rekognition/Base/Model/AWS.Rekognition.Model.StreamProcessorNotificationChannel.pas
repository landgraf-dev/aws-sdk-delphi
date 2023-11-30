unit AWS.Rekognition.Model.StreamProcessorNotificationChannel;

interface

uses
  AWS.Nullable;

type
  TStreamProcessorNotificationChannel = class;
  
  IStreamProcessorNotificationChannel = interface
    function GetSNSTopicArn: string;
    procedure SetSNSTopicArn(const Value: string);
    function Obj: TStreamProcessorNotificationChannel;
    function IsSetSNSTopicArn: Boolean;
    property SNSTopicArn: string read GetSNSTopicArn write SetSNSTopicArn;
  end;
  
  TStreamProcessorNotificationChannel = class
  strict private
    FSNSTopicArn: Nullable<string>;
    function GetSNSTopicArn: string;
    procedure SetSNSTopicArn(const Value: string);
  strict protected
    function Obj: TStreamProcessorNotificationChannel;
  public
    function IsSetSNSTopicArn: Boolean;
    property SNSTopicArn: string read GetSNSTopicArn write SetSNSTopicArn;
  end;
  
implementation

{ TStreamProcessorNotificationChannel }

function TStreamProcessorNotificationChannel.Obj: TStreamProcessorNotificationChannel;
begin
  Result := Self;
end;

function TStreamProcessorNotificationChannel.GetSNSTopicArn: string;
begin
  Result := FSNSTopicArn.ValueOrDefault;
end;

procedure TStreamProcessorNotificationChannel.SetSNSTopicArn(const Value: string);
begin
  FSNSTopicArn := Value;
end;

function TStreamProcessorNotificationChannel.IsSetSNSTopicArn: Boolean;
begin
  Result := FSNSTopicArn.HasValue;
end;

end.
