unit AWS.S3Control.Model.Transition;

interface

uses
  AWS.Nullable, 
  AWS.S3Control.Enums;

type
  TTransition = class;
  
  ITransition = interface
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function GetStorageClass: TTransitionStorageClass;
    procedure SetStorageClass(const Value: TTransitionStorageClass);
    function Obj: TTransition;
    function IsSetDate: Boolean;
    function IsSetDays: Boolean;
    function IsSetStorageClass: Boolean;
    property Date: TDateTime read GetDate write SetDate;
    property Days: Integer read GetDays write SetDays;
    property StorageClass: TTransitionStorageClass read GetStorageClass write SetStorageClass;
  end;
  
  TTransition = class
  strict private
    FDate: Nullable<TDateTime>;
    FDays: Nullable<Integer>;
    FStorageClass: Nullable<TTransitionStorageClass>;
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function GetStorageClass: TTransitionStorageClass;
    procedure SetStorageClass(const Value: TTransitionStorageClass);
  strict protected
    function Obj: TTransition;
  public
    function IsSetDate: Boolean;
    function IsSetDays: Boolean;
    function IsSetStorageClass: Boolean;
    property Date: TDateTime read GetDate write SetDate;
    property Days: Integer read GetDays write SetDays;
    property StorageClass: TTransitionStorageClass read GetStorageClass write SetStorageClass;
  end;
  
implementation

{ TTransition }

function TTransition.Obj: TTransition;
begin
  Result := Self;
end;

function TTransition.GetDate: TDateTime;
begin
  Result := FDate.ValueOrDefault;
end;

procedure TTransition.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

function TTransition.IsSetDate: Boolean;
begin
  Result := FDate.HasValue;
end;

function TTransition.GetDays: Integer;
begin
  Result := FDays.ValueOrDefault;
end;

procedure TTransition.SetDays(const Value: Integer);
begin
  FDays := Value;
end;

function TTransition.IsSetDays: Boolean;
begin
  Result := FDays.HasValue;
end;

function TTransition.GetStorageClass: TTransitionStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TTransition.SetStorageClass(const Value: TTransitionStorageClass);
begin
  FStorageClass := Value;
end;

function TTransition.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

end.
