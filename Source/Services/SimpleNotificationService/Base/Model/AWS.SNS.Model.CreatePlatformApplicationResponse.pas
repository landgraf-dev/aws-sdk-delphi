unit AWS.SNS.Model.CreatePlatformApplicationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreatePlatformApplicationResponse = class;
  
  ICreatePlatformApplicationResponse = interface(IAmazonWebServiceResponse)
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
    function Obj: TCreatePlatformApplicationResponse;
    function IsSetPlatformApplicationArn: Boolean;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
  TCreatePlatformApplicationResponse = class(TAmazonWebServiceResponse, ICreatePlatformApplicationResponse)
  strict private
    FPlatformApplicationArn: Nullable<string>;
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
  strict protected
    function Obj: TCreatePlatformApplicationResponse;
  public
    function IsSetPlatformApplicationArn: Boolean;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
implementation

{ TCreatePlatformApplicationResponse }

function TCreatePlatformApplicationResponse.Obj: TCreatePlatformApplicationResponse;
begin
  Result := Self;
end;

function TCreatePlatformApplicationResponse.GetPlatformApplicationArn: string;
begin
  Result := FPlatformApplicationArn.ValueOrDefault;
end;

procedure TCreatePlatformApplicationResponse.SetPlatformApplicationArn(const Value: string);
begin
  FPlatformApplicationArn := Value;
end;

function TCreatePlatformApplicationResponse.IsSetPlatformApplicationArn: Boolean;
begin
  Result := FPlatformApplicationArn.HasValue;
end;

end.
