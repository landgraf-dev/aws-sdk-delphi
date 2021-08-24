unit AWS.SESv2.Model.SendingOptions;

interface

uses
  Bcl.Types.Nullable;

type
  TSendingOptions = class;
  
  ISendingOptions = interface
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
    function Obj: TSendingOptions;
    function IsSetSendingEnabled: Boolean;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
  TSendingOptions = class
  strict private
    FSendingEnabled: Nullable<Boolean>;
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
  strict protected
    function Obj: TSendingOptions;
  public
    function IsSetSendingEnabled: Boolean;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
implementation

{ TSendingOptions }

function TSendingOptions.Obj: TSendingOptions;
begin
  Result := Self;
end;

function TSendingOptions.GetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.ValueOrDefault;
end;

procedure TSendingOptions.SetSendingEnabled(const Value: Boolean);
begin
  FSendingEnabled := Value;
end;

function TSendingOptions.IsSetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.HasValue;
end;

end.
