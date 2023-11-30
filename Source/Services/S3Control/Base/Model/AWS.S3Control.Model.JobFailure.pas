unit AWS.S3Control.Model.JobFailure;

interface

uses
  AWS.Nullable;

type
  TJobFailure = class;
  
  IJobFailure = interface
    function GetFailureCode: string;
    procedure SetFailureCode(const Value: string);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function Obj: TJobFailure;
    function IsSetFailureCode: Boolean;
    function IsSetFailureReason: Boolean;
    property FailureCode: string read GetFailureCode write SetFailureCode;
    property FailureReason: string read GetFailureReason write SetFailureReason;
  end;
  
  TJobFailure = class
  strict private
    FFailureCode: Nullable<string>;
    FFailureReason: Nullable<string>;
    function GetFailureCode: string;
    procedure SetFailureCode(const Value: string);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
  strict protected
    function Obj: TJobFailure;
  public
    function IsSetFailureCode: Boolean;
    function IsSetFailureReason: Boolean;
    property FailureCode: string read GetFailureCode write SetFailureCode;
    property FailureReason: string read GetFailureReason write SetFailureReason;
  end;
  
implementation

{ TJobFailure }

function TJobFailure.Obj: TJobFailure;
begin
  Result := Self;
end;

function TJobFailure.GetFailureCode: string;
begin
  Result := FFailureCode.ValueOrDefault;
end;

procedure TJobFailure.SetFailureCode(const Value: string);
begin
  FFailureCode := Value;
end;

function TJobFailure.IsSetFailureCode: Boolean;
begin
  Result := FFailureCode.HasValue;
end;

function TJobFailure.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TJobFailure.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TJobFailure.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

end.
