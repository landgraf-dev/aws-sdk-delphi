unit AWS.SES.Model.UpdateAccountSendingEnabledRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TUpdateAccountSendingEnabledRequest = class;
  
  IUpdateAccountSendingEnabledRequest = interface
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function Obj: TUpdateAccountSendingEnabledRequest;
    function IsSetEnabled: Boolean;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
  TUpdateAccountSendingEnabledRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateAccountSendingEnabledRequest)
  strict private
    FEnabled: Nullable<Boolean>;
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
  strict protected
    function Obj: TUpdateAccountSendingEnabledRequest;
  public
    function IsSetEnabled: Boolean;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
implementation

{ TUpdateAccountSendingEnabledRequest }

function TUpdateAccountSendingEnabledRequest.Obj: TUpdateAccountSendingEnabledRequest;
begin
  Result := Self;
end;

function TUpdateAccountSendingEnabledRequest.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TUpdateAccountSendingEnabledRequest.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TUpdateAccountSendingEnabledRequest.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

end.
