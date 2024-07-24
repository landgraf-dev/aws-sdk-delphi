unit AWS.SSM.Model.DocumentDefaultVersionDescription;

interface

uses
  AWS.Nullable;

type
  TDocumentDefaultVersionDescription = class;
  
  IDocumentDefaultVersionDescription = interface
    function GetDefaultVersion: string;
    procedure SetDefaultVersion(const Value: string);
    function GetDefaultVersionName: string;
    procedure SetDefaultVersionName(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TDocumentDefaultVersionDescription;
    function IsSetDefaultVersion: Boolean;
    function IsSetDefaultVersionName: Boolean;
    function IsSetName: Boolean;
    property DefaultVersion: string read GetDefaultVersion write SetDefaultVersion;
    property DefaultVersionName: string read GetDefaultVersionName write SetDefaultVersionName;
    property Name: string read GetName write SetName;
  end;
  
  TDocumentDefaultVersionDescription = class
  strict private
    FDefaultVersion: Nullable<string>;
    FDefaultVersionName: Nullable<string>;
    FName: Nullable<string>;
    function GetDefaultVersion: string;
    procedure SetDefaultVersion(const Value: string);
    function GetDefaultVersionName: string;
    procedure SetDefaultVersionName(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TDocumentDefaultVersionDescription;
  public
    function IsSetDefaultVersion: Boolean;
    function IsSetDefaultVersionName: Boolean;
    function IsSetName: Boolean;
    property DefaultVersion: string read GetDefaultVersion write SetDefaultVersion;
    property DefaultVersionName: string read GetDefaultVersionName write SetDefaultVersionName;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TDocumentDefaultVersionDescription }

function TDocumentDefaultVersionDescription.Obj: TDocumentDefaultVersionDescription;
begin
  Result := Self;
end;

function TDocumentDefaultVersionDescription.GetDefaultVersion: string;
begin
  Result := FDefaultVersion.ValueOrDefault;
end;

procedure TDocumentDefaultVersionDescription.SetDefaultVersion(const Value: string);
begin
  FDefaultVersion := Value;
end;

function TDocumentDefaultVersionDescription.IsSetDefaultVersion: Boolean;
begin
  Result := FDefaultVersion.HasValue;
end;

function TDocumentDefaultVersionDescription.GetDefaultVersionName: string;
begin
  Result := FDefaultVersionName.ValueOrDefault;
end;

procedure TDocumentDefaultVersionDescription.SetDefaultVersionName(const Value: string);
begin
  FDefaultVersionName := Value;
end;

function TDocumentDefaultVersionDescription.IsSetDefaultVersionName: Boolean;
begin
  Result := FDefaultVersionName.HasValue;
end;

function TDocumentDefaultVersionDescription.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TDocumentDefaultVersionDescription.SetName(const Value: string);
begin
  FName := Value;
end;

function TDocumentDefaultVersionDescription.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
