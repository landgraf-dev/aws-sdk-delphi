unit AWS.SESv2.Model.FailureInfo;

interface

uses
  Bcl.Types.Nullable;

type
  TFailureInfo = class;
  
  IFailureInfo = interface
    function GetErrorMessage: string;
    procedure SetErrorMessage(const Value: string);
    function GetFailedRecordsS3Url: string;
    procedure SetFailedRecordsS3Url(const Value: string);
    function Obj: TFailureInfo;
    function IsSetErrorMessage: Boolean;
    function IsSetFailedRecordsS3Url: Boolean;
    property ErrorMessage: string read GetErrorMessage write SetErrorMessage;
    property FailedRecordsS3Url: string read GetFailedRecordsS3Url write SetFailedRecordsS3Url;
  end;
  
  TFailureInfo = class
  strict private
    FErrorMessage: Nullable<string>;
    FFailedRecordsS3Url: Nullable<string>;
    function GetErrorMessage: string;
    procedure SetErrorMessage(const Value: string);
    function GetFailedRecordsS3Url: string;
    procedure SetFailedRecordsS3Url(const Value: string);
  strict protected
    function Obj: TFailureInfo;
  public
    function IsSetErrorMessage: Boolean;
    function IsSetFailedRecordsS3Url: Boolean;
    property ErrorMessage: string read GetErrorMessage write SetErrorMessage;
    property FailedRecordsS3Url: string read GetFailedRecordsS3Url write SetFailedRecordsS3Url;
  end;
  
implementation

{ TFailureInfo }

function TFailureInfo.Obj: TFailureInfo;
begin
  Result := Self;
end;

function TFailureInfo.GetErrorMessage: string;
begin
  Result := FErrorMessage.ValueOrDefault;
end;

procedure TFailureInfo.SetErrorMessage(const Value: string);
begin
  FErrorMessage := Value;
end;

function TFailureInfo.IsSetErrorMessage: Boolean;
begin
  Result := FErrorMessage.HasValue;
end;

function TFailureInfo.GetFailedRecordsS3Url: string;
begin
  Result := FFailedRecordsS3Url.ValueOrDefault;
end;

procedure TFailureInfo.SetFailedRecordsS3Url(const Value: string);
begin
  FFailedRecordsS3Url := Value;
end;

function TFailureInfo.IsSetFailedRecordsS3Url: Boolean;
begin
  Result := FFailedRecordsS3Url.HasValue;
end;

end.
