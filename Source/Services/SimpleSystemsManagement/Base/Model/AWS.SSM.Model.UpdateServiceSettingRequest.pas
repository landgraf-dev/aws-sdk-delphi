unit AWS.SSM.Model.UpdateServiceSettingRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TUpdateServiceSettingRequest = class;
  
  IUpdateServiceSettingRequest = interface
    function GetSettingId: string;
    procedure SetSettingId(const Value: string);
    function GetSettingValue: string;
    procedure SetSettingValue(const Value: string);
    function Obj: TUpdateServiceSettingRequest;
    function IsSetSettingId: Boolean;
    function IsSetSettingValue: Boolean;
    property SettingId: string read GetSettingId write SetSettingId;
    property SettingValue: string read GetSettingValue write SetSettingValue;
  end;
  
  TUpdateServiceSettingRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateServiceSettingRequest)
  strict private
    FSettingId: Nullable<string>;
    FSettingValue: Nullable<string>;
    function GetSettingId: string;
    procedure SetSettingId(const Value: string);
    function GetSettingValue: string;
    procedure SetSettingValue(const Value: string);
  strict protected
    function Obj: TUpdateServiceSettingRequest;
  public
    function IsSetSettingId: Boolean;
    function IsSetSettingValue: Boolean;
    property SettingId: string read GetSettingId write SetSettingId;
    property SettingValue: string read GetSettingValue write SetSettingValue;
  end;
  
implementation

{ TUpdateServiceSettingRequest }

function TUpdateServiceSettingRequest.Obj: TUpdateServiceSettingRequest;
begin
  Result := Self;
end;

function TUpdateServiceSettingRequest.GetSettingId: string;
begin
  Result := FSettingId.ValueOrDefault;
end;

procedure TUpdateServiceSettingRequest.SetSettingId(const Value: string);
begin
  FSettingId := Value;
end;

function TUpdateServiceSettingRequest.IsSetSettingId: Boolean;
begin
  Result := FSettingId.HasValue;
end;

function TUpdateServiceSettingRequest.GetSettingValue: string;
begin
  Result := FSettingValue.ValueOrDefault;
end;

procedure TUpdateServiceSettingRequest.SetSettingValue(const Value: string);
begin
  FSettingValue := Value;
end;

function TUpdateServiceSettingRequest.IsSetSettingValue: Boolean;
begin
  Result := FSettingValue.HasValue;
end;

end.
