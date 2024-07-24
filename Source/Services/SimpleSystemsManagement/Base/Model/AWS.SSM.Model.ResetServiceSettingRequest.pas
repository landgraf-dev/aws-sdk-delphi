unit AWS.SSM.Model.ResetServiceSettingRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TResetServiceSettingRequest = class;
  
  IResetServiceSettingRequest = interface
    function GetSettingId: string;
    procedure SetSettingId(const Value: string);
    function Obj: TResetServiceSettingRequest;
    function IsSetSettingId: Boolean;
    property SettingId: string read GetSettingId write SetSettingId;
  end;
  
  TResetServiceSettingRequest = class(TAmazonSimpleSystemsManagementRequest, IResetServiceSettingRequest)
  strict private
    FSettingId: Nullable<string>;
    function GetSettingId: string;
    procedure SetSettingId(const Value: string);
  strict protected
    function Obj: TResetServiceSettingRequest;
  public
    function IsSetSettingId: Boolean;
    property SettingId: string read GetSettingId write SetSettingId;
  end;
  
implementation

{ TResetServiceSettingRequest }

function TResetServiceSettingRequest.Obj: TResetServiceSettingRequest;
begin
  Result := Self;
end;

function TResetServiceSettingRequest.GetSettingId: string;
begin
  Result := FSettingId.ValueOrDefault;
end;

procedure TResetServiceSettingRequest.SetSettingId(const Value: string);
begin
  FSettingId := Value;
end;

function TResetServiceSettingRequest.IsSetSettingId: Boolean;
begin
  Result := FSettingId.HasValue;
end;

end.
