unit AWS.S3Control.Model.VpcConfiguration;

interface

uses
  AWS.Nullable;

type
  TVpcConfiguration = class;
  
  IVpcConfiguration = interface
    function GetVpcId: string;
    procedure SetVpcId(const Value: string);
    function Obj: TVpcConfiguration;
    function IsSetVpcId: Boolean;
    property VpcId: string read GetVpcId write SetVpcId;
  end;
  
  TVpcConfiguration = class
  strict private
    FVpcId: Nullable<string>;
    function GetVpcId: string;
    procedure SetVpcId(const Value: string);
  strict protected
    function Obj: TVpcConfiguration;
  public
    function IsSetVpcId: Boolean;
    property VpcId: string read GetVpcId write SetVpcId;
  end;
  
implementation

{ TVpcConfiguration }

function TVpcConfiguration.Obj: TVpcConfiguration;
begin
  Result := Self;
end;

function TVpcConfiguration.GetVpcId: string;
begin
  Result := FVpcId.ValueOrDefault;
end;

procedure TVpcConfiguration.SetVpcId(const Value: string);
begin
  FVpcId := Value;
end;

function TVpcConfiguration.IsSetVpcId: Boolean;
begin
  Result := FVpcId.HasValue;
end;

end.
