unit AWS.SSM.Model.S3OutputUrl;

interface

uses
  AWS.Nullable;

type
  TS3OutputUrl = class;
  
  IS3OutputUrl = interface
    function GetOutputUrl: string;
    procedure SetOutputUrl(const Value: string);
    function Obj: TS3OutputUrl;
    function IsSetOutputUrl: Boolean;
    property OutputUrl: string read GetOutputUrl write SetOutputUrl;
  end;
  
  TS3OutputUrl = class
  strict private
    FOutputUrl: Nullable<string>;
    function GetOutputUrl: string;
    procedure SetOutputUrl(const Value: string);
  strict protected
    function Obj: TS3OutputUrl;
  public
    function IsSetOutputUrl: Boolean;
    property OutputUrl: string read GetOutputUrl write SetOutputUrl;
  end;
  
implementation

{ TS3OutputUrl }

function TS3OutputUrl.Obj: TS3OutputUrl;
begin
  Result := Self;
end;

function TS3OutputUrl.GetOutputUrl: string;
begin
  Result := FOutputUrl.ValueOrDefault;
end;

procedure TS3OutputUrl.SetOutputUrl(const Value: string);
begin
  FOutputUrl := Value;
end;

function TS3OutputUrl.IsSetOutputUrl: Boolean;
begin
  Result := FOutputUrl.HasValue;
end;

end.
