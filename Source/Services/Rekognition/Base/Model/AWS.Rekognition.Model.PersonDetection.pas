unit AWS.Rekognition.Model.PersonDetection;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.PersonDetail;

type
  TPersonDetection = class;
  
  IPersonDetection = interface
    function GetPerson: TPersonDetail;
    procedure SetPerson(const Value: TPersonDetail);
    function GetKeepPerson: Boolean;
    procedure SetKeepPerson(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
    function Obj: TPersonDetection;
    function IsSetPerson: Boolean;
    function IsSetTimestamp: Boolean;
    property Person: TPersonDetail read GetPerson write SetPerson;
    property KeepPerson: Boolean read GetKeepPerson write SetKeepPerson;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
  TPersonDetection = class
  strict private
    FPerson: TPersonDetail;
    FKeepPerson: Boolean;
    FTimestamp: Nullable<Int64>;
    function GetPerson: TPersonDetail;
    procedure SetPerson(const Value: TPersonDetail);
    function GetKeepPerson: Boolean;
    procedure SetKeepPerson(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
  strict protected
    function Obj: TPersonDetection;
  public
    destructor Destroy; override;
    function IsSetPerson: Boolean;
    function IsSetTimestamp: Boolean;
    property Person: TPersonDetail read GetPerson write SetPerson;
    property KeepPerson: Boolean read GetKeepPerson write SetKeepPerson;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
implementation

{ TPersonDetection }

destructor TPersonDetection.Destroy;
begin
  Person := nil;
  inherited;
end;

function TPersonDetection.Obj: TPersonDetection;
begin
  Result := Self;
end;

function TPersonDetection.GetPerson: TPersonDetail;
begin
  Result := FPerson;
end;

procedure TPersonDetection.SetPerson(const Value: TPersonDetail);
begin
  if FPerson <> Value then
  begin
    if not KeepPerson then
      FPerson.Free;
    FPerson := Value;
  end;
end;

function TPersonDetection.GetKeepPerson: Boolean;
begin
  Result := FKeepPerson;
end;

procedure TPersonDetection.SetKeepPerson(const Value: Boolean);
begin
  FKeepPerson := Value;
end;

function TPersonDetection.IsSetPerson: Boolean;
begin
  Result := FPerson <> nil;
end;

function TPersonDetection.GetTimestamp: Int64;
begin
  Result := FTimestamp.ValueOrDefault;
end;

procedure TPersonDetection.SetTimestamp(const Value: Int64);
begin
  FTimestamp := Value;
end;

function TPersonDetection.IsSetTimestamp: Boolean;
begin
  Result := FTimestamp.HasValue;
end;

end.
