unit AWS.SSM.Model.InstanceAssociation;

interface

uses
  AWS.Nullable;

type
  TInstanceAssociation = class;
  
  IInstanceAssociation = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function Obj: TInstanceAssociation;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetContent: Boolean;
    function IsSetInstanceId: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property Content: string read GetContent write SetContent;
    property InstanceId: string read GetInstanceId write SetInstanceId;
  end;
  
  TInstanceAssociation = class
  strict private
    FAssociationId: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FContent: Nullable<string>;
    FInstanceId: Nullable<string>;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
  strict protected
    function Obj: TInstanceAssociation;
  public
    function IsSetAssociationId: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetContent: Boolean;
    function IsSetInstanceId: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property Content: string read GetContent write SetContent;
    property InstanceId: string read GetInstanceId write SetInstanceId;
  end;
  
implementation

{ TInstanceAssociation }

function TInstanceAssociation.Obj: TInstanceAssociation;
begin
  Result := Self;
end;

function TInstanceAssociation.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TInstanceAssociation.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TInstanceAssociation.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TInstanceAssociation.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TInstanceAssociation.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TInstanceAssociation.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TInstanceAssociation.GetContent: string;
begin
  Result := FContent.ValueOrDefault;
end;

procedure TInstanceAssociation.SetContent(const Value: string);
begin
  FContent := Value;
end;

function TInstanceAssociation.IsSetContent: Boolean;
begin
  Result := FContent.HasValue;
end;

function TInstanceAssociation.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TInstanceAssociation.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TInstanceAssociation.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

end.
