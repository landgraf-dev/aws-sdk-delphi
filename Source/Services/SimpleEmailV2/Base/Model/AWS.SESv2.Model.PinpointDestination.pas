unit AWS.SESv2.Model.PinpointDestination;

interface

uses
  Bcl.Types.Nullable;

type
  TPinpointDestination = class;
  
  IPinpointDestination = interface
    function GetApplicationArn: string;
    procedure SetApplicationArn(const Value: string);
    function Obj: TPinpointDestination;
    function IsSetApplicationArn: Boolean;
    property ApplicationArn: string read GetApplicationArn write SetApplicationArn;
  end;
  
  TPinpointDestination = class
  strict private
    FApplicationArn: Nullable<string>;
    function GetApplicationArn: string;
    procedure SetApplicationArn(const Value: string);
  strict protected
    function Obj: TPinpointDestination;
  public
    function IsSetApplicationArn: Boolean;
    property ApplicationArn: string read GetApplicationArn write SetApplicationArn;
  end;
  
implementation

{ TPinpointDestination }

function TPinpointDestination.Obj: TPinpointDestination;
begin
  Result := Self;
end;

function TPinpointDestination.GetApplicationArn: string;
begin
  Result := FApplicationArn.ValueOrDefault;
end;

procedure TPinpointDestination.SetApplicationArn(const Value: string);
begin
  FApplicationArn := Value;
end;

function TPinpointDestination.IsSetApplicationArn: Boolean;
begin
  Result := FApplicationArn.HasValue;
end;

end.
