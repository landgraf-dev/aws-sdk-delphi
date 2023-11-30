unit AWS.SESv2.Model.PutAccountSendingAttributesRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TPutAccountSendingAttributesRequest = class;
  
  IPutAccountSendingAttributesRequest = interface
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
    function Obj: TPutAccountSendingAttributesRequest;
    function IsSetSendingEnabled: Boolean;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
  TPutAccountSendingAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutAccountSendingAttributesRequest)
  strict private
    FSendingEnabled: Nullable<Boolean>;
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
  strict protected
    function Obj: TPutAccountSendingAttributesRequest;
  public
    function IsSetSendingEnabled: Boolean;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
implementation

{ TPutAccountSendingAttributesRequest }

function TPutAccountSendingAttributesRequest.Obj: TPutAccountSendingAttributesRequest;
begin
  Result := Self;
end;

function TPutAccountSendingAttributesRequest.GetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.ValueOrDefault;
end;

procedure TPutAccountSendingAttributesRequest.SetSendingEnabled(const Value: Boolean);
begin
  FSendingEnabled := Value;
end;

function TPutAccountSendingAttributesRequest.IsSetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.HasValue;
end;

end.
