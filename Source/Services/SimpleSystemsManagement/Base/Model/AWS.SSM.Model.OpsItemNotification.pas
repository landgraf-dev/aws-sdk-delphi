unit AWS.SSM.Model.OpsItemNotification;

interface

uses
  AWS.Nullable;

type
  TOpsItemNotification = class;
  
  IOpsItemNotification = interface
    function GetArn: string;
    procedure SetArn(const Value: string);
    function Obj: TOpsItemNotification;
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
  TOpsItemNotification = class
  strict private
    FArn: Nullable<string>;
    function GetArn: string;
    procedure SetArn(const Value: string);
  strict protected
    function Obj: TOpsItemNotification;
  public
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
implementation

{ TOpsItemNotification }

function TOpsItemNotification.Obj: TOpsItemNotification;
begin
  Result := Self;
end;

function TOpsItemNotification.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TOpsItemNotification.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TOpsItemNotification.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

end.
