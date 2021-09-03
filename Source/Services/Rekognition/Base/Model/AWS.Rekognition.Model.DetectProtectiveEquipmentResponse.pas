unit AWS.Rekognition.Model.DetectProtectiveEquipmentResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.ProtectiveEquipmentPerson, 
  AWS.Rekognition.Model.ProtectiveEquipmentSummary;

type
  TDetectProtectiveEquipmentResponse = class;
  
  IDetectProtectiveEquipmentResponse = interface(IAmazonWebServiceResponse)
    function GetPersons: TObjectList<TProtectiveEquipmentPerson>;
    procedure SetPersons(const Value: TObjectList<TProtectiveEquipmentPerson>);
    function GetKeepPersons: Boolean;
    procedure SetKeepPersons(const Value: Boolean);
    function GetProtectiveEquipmentModelVersion: string;
    procedure SetProtectiveEquipmentModelVersion(const Value: string);
    function GetSummary: TProtectiveEquipmentSummary;
    procedure SetSummary(const Value: TProtectiveEquipmentSummary);
    function GetKeepSummary: Boolean;
    procedure SetKeepSummary(const Value: Boolean);
    function Obj: TDetectProtectiveEquipmentResponse;
    function IsSetPersons: Boolean;
    function IsSetProtectiveEquipmentModelVersion: Boolean;
    function IsSetSummary: Boolean;
    property Persons: TObjectList<TProtectiveEquipmentPerson> read GetPersons write SetPersons;
    property KeepPersons: Boolean read GetKeepPersons write SetKeepPersons;
    property ProtectiveEquipmentModelVersion: string read GetProtectiveEquipmentModelVersion write SetProtectiveEquipmentModelVersion;
    property Summary: TProtectiveEquipmentSummary read GetSummary write SetSummary;
    property KeepSummary: Boolean read GetKeepSummary write SetKeepSummary;
  end;
  
  TDetectProtectiveEquipmentResponse = class(TAmazonWebServiceResponse, IDetectProtectiveEquipmentResponse)
  strict private
    FPersons: TObjectList<TProtectiveEquipmentPerson>;
    FKeepPersons: Boolean;
    FProtectiveEquipmentModelVersion: Nullable<string>;
    FSummary: TProtectiveEquipmentSummary;
    FKeepSummary: Boolean;
    function GetPersons: TObjectList<TProtectiveEquipmentPerson>;
    procedure SetPersons(const Value: TObjectList<TProtectiveEquipmentPerson>);
    function GetKeepPersons: Boolean;
    procedure SetKeepPersons(const Value: Boolean);
    function GetProtectiveEquipmentModelVersion: string;
    procedure SetProtectiveEquipmentModelVersion(const Value: string);
    function GetSummary: TProtectiveEquipmentSummary;
    procedure SetSummary(const Value: TProtectiveEquipmentSummary);
    function GetKeepSummary: Boolean;
    procedure SetKeepSummary(const Value: Boolean);
  strict protected
    function Obj: TDetectProtectiveEquipmentResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPersons: Boolean;
    function IsSetProtectiveEquipmentModelVersion: Boolean;
    function IsSetSummary: Boolean;
    property Persons: TObjectList<TProtectiveEquipmentPerson> read GetPersons write SetPersons;
    property KeepPersons: Boolean read GetKeepPersons write SetKeepPersons;
    property ProtectiveEquipmentModelVersion: string read GetProtectiveEquipmentModelVersion write SetProtectiveEquipmentModelVersion;
    property Summary: TProtectiveEquipmentSummary read GetSummary write SetSummary;
    property KeepSummary: Boolean read GetKeepSummary write SetKeepSummary;
  end;
  
implementation

{ TDetectProtectiveEquipmentResponse }

constructor TDetectProtectiveEquipmentResponse.Create;
begin
  inherited;
  FPersons := TObjectList<TProtectiveEquipmentPerson>.Create;
end;

destructor TDetectProtectiveEquipmentResponse.Destroy;
begin
  Summary := nil;
  Persons := nil;
  inherited;
end;

function TDetectProtectiveEquipmentResponse.Obj: TDetectProtectiveEquipmentResponse;
begin
  Result := Self;
end;

function TDetectProtectiveEquipmentResponse.GetPersons: TObjectList<TProtectiveEquipmentPerson>;
begin
  Result := FPersons;
end;

procedure TDetectProtectiveEquipmentResponse.SetPersons(const Value: TObjectList<TProtectiveEquipmentPerson>);
begin
  if FPersons <> Value then
  begin
    if not KeepPersons then
      FPersons.Free;
    FPersons := Value;
  end;
end;

function TDetectProtectiveEquipmentResponse.GetKeepPersons: Boolean;
begin
  Result := FKeepPersons;
end;

procedure TDetectProtectiveEquipmentResponse.SetKeepPersons(const Value: Boolean);
begin
  FKeepPersons := Value;
end;

function TDetectProtectiveEquipmentResponse.IsSetPersons: Boolean;
begin
  Result := (FPersons <> nil) and (FPersons.Count > 0);
end;

function TDetectProtectiveEquipmentResponse.GetProtectiveEquipmentModelVersion: string;
begin
  Result := FProtectiveEquipmentModelVersion.ValueOrDefault;
end;

procedure TDetectProtectiveEquipmentResponse.SetProtectiveEquipmentModelVersion(const Value: string);
begin
  FProtectiveEquipmentModelVersion := Value;
end;

function TDetectProtectiveEquipmentResponse.IsSetProtectiveEquipmentModelVersion: Boolean;
begin
  Result := FProtectiveEquipmentModelVersion.HasValue;
end;

function TDetectProtectiveEquipmentResponse.GetSummary: TProtectiveEquipmentSummary;
begin
  Result := FSummary;
end;

procedure TDetectProtectiveEquipmentResponse.SetSummary(const Value: TProtectiveEquipmentSummary);
begin
  if FSummary <> Value then
  begin
    if not KeepSummary then
      FSummary.Free;
    FSummary := Value;
  end;
end;

function TDetectProtectiveEquipmentResponse.GetKeepSummary: Boolean;
begin
  Result := FKeepSummary;
end;

procedure TDetectProtectiveEquipmentResponse.SetKeepSummary(const Value: Boolean);
begin
  FKeepSummary := Value;
end;

function TDetectProtectiveEquipmentResponse.IsSetSummary: Boolean;
begin
  Result := FSummary <> nil;
end;

end.
