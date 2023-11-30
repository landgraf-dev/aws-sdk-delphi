unit AWS.Transcribe.Model.InputDataConfig;

interface

uses
  AWS.Nullable;

type
  TInputDataConfig = class;
  
  IInputDataConfig = interface
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
    function GetTuningDataS3Uri: string;
    procedure SetTuningDataS3Uri(const Value: string);
    function Obj: TInputDataConfig;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetS3Uri: Boolean;
    function IsSetTuningDataS3Uri: Boolean;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property S3Uri: string read GetS3Uri write SetS3Uri;
    property TuningDataS3Uri: string read GetTuningDataS3Uri write SetTuningDataS3Uri;
  end;
  
  TInputDataConfig = class
  strict private
    FDataAccessRoleArn: Nullable<string>;
    FS3Uri: Nullable<string>;
    FTuningDataS3Uri: Nullable<string>;
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetS3Uri: string;
    procedure SetS3Uri(const Value: string);
    function GetTuningDataS3Uri: string;
    procedure SetTuningDataS3Uri(const Value: string);
  strict protected
    function Obj: TInputDataConfig;
  public
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetS3Uri: Boolean;
    function IsSetTuningDataS3Uri: Boolean;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property S3Uri: string read GetS3Uri write SetS3Uri;
    property TuningDataS3Uri: string read GetTuningDataS3Uri write SetTuningDataS3Uri;
  end;
  
implementation

{ TInputDataConfig }

function TInputDataConfig.Obj: TInputDataConfig;
begin
  Result := Self;
end;

function TInputDataConfig.GetDataAccessRoleArn: string;
begin
  Result := FDataAccessRoleArn.ValueOrDefault;
end;

procedure TInputDataConfig.SetDataAccessRoleArn(const Value: string);
begin
  FDataAccessRoleArn := Value;
end;

function TInputDataConfig.IsSetDataAccessRoleArn: Boolean;
begin
  Result := FDataAccessRoleArn.HasValue;
end;

function TInputDataConfig.GetS3Uri: string;
begin
  Result := FS3Uri.ValueOrDefault;
end;

procedure TInputDataConfig.SetS3Uri(const Value: string);
begin
  FS3Uri := Value;
end;

function TInputDataConfig.IsSetS3Uri: Boolean;
begin
  Result := FS3Uri.HasValue;
end;

function TInputDataConfig.GetTuningDataS3Uri: string;
begin
  Result := FTuningDataS3Uri.ValueOrDefault;
end;

procedure TInputDataConfig.SetTuningDataS3Uri(const Value: string);
begin
  FTuningDataS3Uri := Value;
end;

function TInputDataConfig.IsSetTuningDataS3Uri: Boolean;
begin
  Result := FTuningDataS3Uri.HasValue;
end;

end.
