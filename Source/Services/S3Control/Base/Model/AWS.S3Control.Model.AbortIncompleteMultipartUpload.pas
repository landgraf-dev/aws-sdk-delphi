unit AWS.S3Control.Model.AbortIncompleteMultipartUpload;

interface

uses
  AWS.Nullable;

type
  TAbortIncompleteMultipartUpload = class;
  
  IAbortIncompleteMultipartUpload = interface
    function GetDaysAfterInitiation: Integer;
    procedure SetDaysAfterInitiation(const Value: Integer);
    function Obj: TAbortIncompleteMultipartUpload;
    function IsSetDaysAfterInitiation: Boolean;
    property DaysAfterInitiation: Integer read GetDaysAfterInitiation write SetDaysAfterInitiation;
  end;
  
  TAbortIncompleteMultipartUpload = class
  strict private
    FDaysAfterInitiation: Nullable<Integer>;
    function GetDaysAfterInitiation: Integer;
    procedure SetDaysAfterInitiation(const Value: Integer);
  strict protected
    function Obj: TAbortIncompleteMultipartUpload;
  public
    function IsSetDaysAfterInitiation: Boolean;
    property DaysAfterInitiation: Integer read GetDaysAfterInitiation write SetDaysAfterInitiation;
  end;
  
implementation

{ TAbortIncompleteMultipartUpload }

function TAbortIncompleteMultipartUpload.Obj: TAbortIncompleteMultipartUpload;
begin
  Result := Self;
end;

function TAbortIncompleteMultipartUpload.GetDaysAfterInitiation: Integer;
begin
  Result := FDaysAfterInitiation.ValueOrDefault;
end;

procedure TAbortIncompleteMultipartUpload.SetDaysAfterInitiation(const Value: Integer);
begin
  FDaysAfterInitiation := Value;
end;

function TAbortIncompleteMultipartUpload.IsSetDaysAfterInitiation: Boolean;
begin
  Result := FDaysAfterInitiation.HasValue;
end;

end.
