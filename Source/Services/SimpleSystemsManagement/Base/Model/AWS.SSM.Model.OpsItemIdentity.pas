unit AWS.SSM.Model.OpsItemIdentity;

interface

uses
  AWS.Nullable;

type
  TOpsItemIdentity = class;
  
  IOpsItemIdentity = interface
    function GetArn: string;
    procedure SetArn(const Value: string);
    function Obj: TOpsItemIdentity;
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
  TOpsItemIdentity = class
  strict private
    FArn: Nullable<string>;
    function GetArn: string;
    procedure SetArn(const Value: string);
  strict protected
    function Obj: TOpsItemIdentity;
  public
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
implementation

{ TOpsItemIdentity }

function TOpsItemIdentity.Obj: TOpsItemIdentity;
begin
  Result := Self;
end;

function TOpsItemIdentity.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TOpsItemIdentity.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TOpsItemIdentity.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

end.
