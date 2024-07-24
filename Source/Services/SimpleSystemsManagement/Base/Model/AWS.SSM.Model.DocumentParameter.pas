unit AWS.SSM.Model.DocumentParameter;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDocumentParameter = class;
  
  IDocumentParameter = interface
    function GetDefaultValue: string;
    procedure SetDefaultValue(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetType: TDocumentParameterType;
    procedure SetType(const Value: TDocumentParameterType);
    function Obj: TDocumentParameter;
    function IsSetDefaultValue: Boolean;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetType: Boolean;
    property DefaultValue: string read GetDefaultValue write SetDefaultValue;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property &Type: TDocumentParameterType read GetType write SetType;
  end;
  
  TDocumentParameter = class
  strict private
    FDefaultValue: Nullable<string>;
    FDescription: Nullable<string>;
    FName: Nullable<string>;
    FType: Nullable<TDocumentParameterType>;
    function GetDefaultValue: string;
    procedure SetDefaultValue(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetType: TDocumentParameterType;
    procedure SetType(const Value: TDocumentParameterType);
  strict protected
    function Obj: TDocumentParameter;
  public
    function IsSetDefaultValue: Boolean;
    function IsSetDescription: Boolean;
    function IsSetName: Boolean;
    function IsSetType: Boolean;
    property DefaultValue: string read GetDefaultValue write SetDefaultValue;
    property Description: string read GetDescription write SetDescription;
    property Name: string read GetName write SetName;
    property &Type: TDocumentParameterType read GetType write SetType;
  end;
  
implementation

{ TDocumentParameter }

function TDocumentParameter.Obj: TDocumentParameter;
begin
  Result := Self;
end;

function TDocumentParameter.GetDefaultValue: string;
begin
  Result := FDefaultValue.ValueOrDefault;
end;

procedure TDocumentParameter.SetDefaultValue(const Value: string);
begin
  FDefaultValue := Value;
end;

function TDocumentParameter.IsSetDefaultValue: Boolean;
begin
  Result := FDefaultValue.HasValue;
end;

function TDocumentParameter.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TDocumentParameter.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TDocumentParameter.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TDocumentParameter.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDocumentParameter.SetName(const Value: string);
begin
  FName := Value;
end;

function TDocumentParameter.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TDocumentParameter.GetType: TDocumentParameterType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TDocumentParameter.SetType(const Value: TDocumentParameterType);
begin
  FType := Value;
end;

function TDocumentParameter.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
