unit AWS.S3.Model.CommonPrefix;

interface

uses
  AWS.Nullable;

type
  TCommonPrefix = class;
  
  ICommonPrefix = interface
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function Obj: TCommonPrefix;
    function IsSetPrefix: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
  TCommonPrefix = class
  strict private
    FPrefix: Nullable<string>;
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
  strict protected
    function Obj: TCommonPrefix;
  public
    function IsSetPrefix: Boolean;
    property Prefix: string read GetPrefix write SetPrefix;
  end;
  
implementation

{ TCommonPrefix }

function TCommonPrefix.Obj: TCommonPrefix;
begin
  Result := Self;
end;

function TCommonPrefix.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TCommonPrefix.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TCommonPrefix.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

end.
