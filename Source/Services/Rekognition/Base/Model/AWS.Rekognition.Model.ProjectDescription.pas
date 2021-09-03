unit AWS.Rekognition.Model.ProjectDescription;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Enums;

type
  TProjectDescription = class;
  
  IProjectDescription = interface
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function GetStatus: TProjectStatus;
    procedure SetStatus(const Value: TProjectStatus);
    function Obj: TProjectDescription;
    function IsSetCreationTimestamp: Boolean;
    function IsSetProjectArn: Boolean;
    function IsSetStatus: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
    property Status: TProjectStatus read GetStatus write SetStatus;
  end;
  
  TProjectDescription = class
  strict private
    FCreationTimestamp: Nullable<TDateTime>;
    FProjectArn: Nullable<string>;
    FStatus: Nullable<TProjectStatus>;
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function GetStatus: TProjectStatus;
    procedure SetStatus(const Value: TProjectStatus);
  strict protected
    function Obj: TProjectDescription;
  public
    function IsSetCreationTimestamp: Boolean;
    function IsSetProjectArn: Boolean;
    function IsSetStatus: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
    property Status: TProjectStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TProjectDescription }

function TProjectDescription.Obj: TProjectDescription;
begin
  Result := Self;
end;

function TProjectDescription.GetCreationTimestamp: TDateTime;
begin
  Result := FCreationTimestamp.ValueOrDefault;
end;

procedure TProjectDescription.SetCreationTimestamp(const Value: TDateTime);
begin
  FCreationTimestamp := Value;
end;

function TProjectDescription.IsSetCreationTimestamp: Boolean;
begin
  Result := FCreationTimestamp.HasValue;
end;

function TProjectDescription.GetProjectArn: string;
begin
  Result := FProjectArn.ValueOrDefault;
end;

procedure TProjectDescription.SetProjectArn(const Value: string);
begin
  FProjectArn := Value;
end;

function TProjectDescription.IsSetProjectArn: Boolean;
begin
  Result := FProjectArn.HasValue;
end;

function TProjectDescription.GetStatus: TProjectStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TProjectDescription.SetStatus(const Value: TProjectStatus);
begin
  FStatus := Value;
end;

function TProjectDescription.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
