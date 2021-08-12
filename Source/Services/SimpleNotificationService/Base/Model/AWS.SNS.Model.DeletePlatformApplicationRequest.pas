unit AWS.SNS.Model.DeletePlatformApplicationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TDeletePlatformApplicationRequest = class;
  
  IDeletePlatformApplicationRequest = interface
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
    function Obj: TDeletePlatformApplicationRequest;
    function IsSetPlatformApplicationArn: Boolean;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
  TDeletePlatformApplicationRequest = class(TAmazonSimpleNotificationServiceRequest, IDeletePlatformApplicationRequest)
  strict private
    FPlatformApplicationArn: Nullable<string>;
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
  strict protected
    function Obj: TDeletePlatformApplicationRequest;
  public
    function IsSetPlatformApplicationArn: Boolean;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
implementation

{ TDeletePlatformApplicationRequest }

function TDeletePlatformApplicationRequest.Obj: TDeletePlatformApplicationRequest;
begin
  Result := Self;
end;

function TDeletePlatformApplicationRequest.GetPlatformApplicationArn: string;
begin
  Result := FPlatformApplicationArn.ValueOrDefault;
end;

procedure TDeletePlatformApplicationRequest.SetPlatformApplicationArn(const Value: string);
begin
  FPlatformApplicationArn := Value;
end;

function TDeletePlatformApplicationRequest.IsSetPlatformApplicationArn: Boolean;
begin
  Result := FPlatformApplicationArn.HasValue;
end;

end.
