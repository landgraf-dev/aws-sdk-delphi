unit AWS.SSM.Model.AssociationStatus;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TAssociationStatus = class;
  
  IAssociationStatus = interface
    function GetAdditionalInfo: string;
    procedure SetAdditionalInfo(const Value: string);
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetName: TAssociationStatusName;
    procedure SetName(const Value: TAssociationStatusName);
    function Obj: TAssociationStatus;
    function IsSetAdditionalInfo: Boolean;
    function IsSetDate: Boolean;
    function IsSetMessage: Boolean;
    function IsSetName: Boolean;
    property AdditionalInfo: string read GetAdditionalInfo write SetAdditionalInfo;
    property Date: TDateTime read GetDate write SetDate;
    property Message: string read GetMessage write SetMessage;
    property Name: TAssociationStatusName read GetName write SetName;
  end;
  
  TAssociationStatus = class
  strict private
    FAdditionalInfo: Nullable<string>;
    FDate: Nullable<TDateTime>;
    FMessage: Nullable<string>;
    FName: Nullable<TAssociationStatusName>;
    function GetAdditionalInfo: string;
    procedure SetAdditionalInfo(const Value: string);
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetName: TAssociationStatusName;
    procedure SetName(const Value: TAssociationStatusName);
  strict protected
    function Obj: TAssociationStatus;
  public
    function IsSetAdditionalInfo: Boolean;
    function IsSetDate: Boolean;
    function IsSetMessage: Boolean;
    function IsSetName: Boolean;
    property AdditionalInfo: string read GetAdditionalInfo write SetAdditionalInfo;
    property Date: TDateTime read GetDate write SetDate;
    property Message: string read GetMessage write SetMessage;
    property Name: TAssociationStatusName read GetName write SetName;
  end;
  
implementation

{ TAssociationStatus }

function TAssociationStatus.Obj: TAssociationStatus;
begin
  Result := Self;
end;

function TAssociationStatus.GetAdditionalInfo: string;
begin
  Result := FAdditionalInfo.ValueOrDefault;
end;

procedure TAssociationStatus.SetAdditionalInfo(const Value: string);
begin
  FAdditionalInfo := Value;
end;

function TAssociationStatus.IsSetAdditionalInfo: Boolean;
begin
  Result := FAdditionalInfo.HasValue;
end;

function TAssociationStatus.GetDate: TDateTime;
begin
  Result := FDate.ValueOrDefault;
end;

procedure TAssociationStatus.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

function TAssociationStatus.IsSetDate: Boolean;
begin
  Result := FDate.HasValue;
end;

function TAssociationStatus.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TAssociationStatus.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TAssociationStatus.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TAssociationStatus.GetName: TAssociationStatusName;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAssociationStatus.SetName(const Value: TAssociationStatusName);
begin
  FName := Value;
end;

function TAssociationStatus.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
