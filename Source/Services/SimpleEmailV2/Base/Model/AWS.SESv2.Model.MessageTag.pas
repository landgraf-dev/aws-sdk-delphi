unit AWS.SESv2.Model.MessageTag;

interface

uses
  AWS.Nullable;

type
  TMessageTag = class;
  
  IMessageTag = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TMessageTag;
    function IsSetName: Boolean;
    function IsSetValue: Boolean;
    property Name: string read GetName write SetName;
    property Value: string read GetValue write SetValue;
  end;
  
  TMessageTag = class
  strict private
    FName: Nullable<string>;
    FValue: Nullable<string>;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TMessageTag;
  public
    function IsSetName: Boolean;
    function IsSetValue: Boolean;
    property Name: string read GetName write SetName;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TMessageTag }

function TMessageTag.Obj: TMessageTag;
begin
  Result := Self;
end;

function TMessageTag.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TMessageTag.SetName(const Value: string);
begin
  FName := Value;
end;

function TMessageTag.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TMessageTag.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TMessageTag.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TMessageTag.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
