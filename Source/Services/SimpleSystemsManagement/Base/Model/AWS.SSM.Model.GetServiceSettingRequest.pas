unit AWS.SSM.Model.GetServiceSettingRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetServiceSettingRequest = class;
  
  IGetServiceSettingRequest = interface
    function GetSettingId: string;
    procedure SetSettingId(const Value: string);
    function Obj: TGetServiceSettingRequest;
    function IsSetSettingId: Boolean;
    property SettingId: string read GetSettingId write SetSettingId;
  end;
  
  TGetServiceSettingRequest = class(TAmazonSimpleSystemsManagementRequest, IGetServiceSettingRequest)
  strict private
    FSettingId: Nullable<string>;
    function GetSettingId: string;
    procedure SetSettingId(const Value: string);
  strict protected
    function Obj: TGetServiceSettingRequest;
  public
    function IsSetSettingId: Boolean;
    property SettingId: string read GetSettingId write SetSettingId;
  end;
  
implementation

{ TGetServiceSettingRequest }

function TGetServiceSettingRequest.Obj: TGetServiceSettingRequest;
begin
  Result := Self;
end;

function TGetServiceSettingRequest.GetSettingId: string;
begin
  Result := FSettingId.ValueOrDefault;
end;

procedure TGetServiceSettingRequest.SetSettingId(const Value: string);
begin
  FSettingId := Value;
end;

function TGetServiceSettingRequest.IsSetSettingId: Boolean;
begin
  Result := FSettingId.HasValue;
end;

end.
