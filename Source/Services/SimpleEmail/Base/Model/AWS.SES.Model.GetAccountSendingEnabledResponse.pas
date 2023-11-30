unit AWS.SES.Model.GetAccountSendingEnabledResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TGetAccountSendingEnabledResponse = class;
  
  IGetAccountSendingEnabledResponse = interface(IAmazonWebServiceResponse)
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function Obj: TGetAccountSendingEnabledResponse;
    function IsSetEnabled: Boolean;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
  TGetAccountSendingEnabledResponse = class(TAmazonWebServiceResponse, IGetAccountSendingEnabledResponse)
  strict private
    FEnabled: Nullable<Boolean>;
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
  strict protected
    function Obj: TGetAccountSendingEnabledResponse;
  public
    function IsSetEnabled: Boolean;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
implementation

{ TGetAccountSendingEnabledResponse }

function TGetAccountSendingEnabledResponse.Obj: TGetAccountSendingEnabledResponse;
begin
  Result := Self;
end;

function TGetAccountSendingEnabledResponse.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TGetAccountSendingEnabledResponse.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TGetAccountSendingEnabledResponse.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

end.
