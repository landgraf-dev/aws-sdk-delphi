unit AWS.SES.Model.TemplateMetadata;

interface

uses
  Bcl.Types.Nullable;

type
  TTemplateMetadata = class;
  
  ITemplateMetadata = interface
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TTemplateMetadata;
    function IsSetCreatedTimestamp: Boolean;
    function IsSetName: Boolean;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property Name: string read GetName write SetName;
  end;
  
  TTemplateMetadata = class
  strict private
    FCreatedTimestamp: Nullable<TDateTime>;
    FName: Nullable<string>;
    function GetCreatedTimestamp: TDateTime;
    procedure SetCreatedTimestamp(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TTemplateMetadata;
  public
    function IsSetCreatedTimestamp: Boolean;
    function IsSetName: Boolean;
    property CreatedTimestamp: TDateTime read GetCreatedTimestamp write SetCreatedTimestamp;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TTemplateMetadata }

function TTemplateMetadata.Obj: TTemplateMetadata;
begin
  Result := Self;
end;

function TTemplateMetadata.GetCreatedTimestamp: TDateTime;
begin
  Result := FCreatedTimestamp.ValueOrDefault;
end;

procedure TTemplateMetadata.SetCreatedTimestamp(const Value: TDateTime);
begin
  FCreatedTimestamp := Value;
end;

function TTemplateMetadata.IsSetCreatedTimestamp: Boolean;
begin
  Result := FCreatedTimestamp.HasValue;
end;

function TTemplateMetadata.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TTemplateMetadata.SetName(const Value: string);
begin
  FName := Value;
end;

function TTemplateMetadata.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
