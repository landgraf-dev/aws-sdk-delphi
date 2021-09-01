unit AWS.Translate.Model.JobDetails;

interface

uses
  Bcl.Types.Nullable;

type
  TJobDetails = class;
  
  IJobDetails = interface
    function GetDocumentsWithErrorsCount: Integer;
    procedure SetDocumentsWithErrorsCount(const Value: Integer);
    function GetInputDocumentsCount: Integer;
    procedure SetInputDocumentsCount(const Value: Integer);
    function GetTranslatedDocumentsCount: Integer;
    procedure SetTranslatedDocumentsCount(const Value: Integer);
    function Obj: TJobDetails;
    function IsSetDocumentsWithErrorsCount: Boolean;
    function IsSetInputDocumentsCount: Boolean;
    function IsSetTranslatedDocumentsCount: Boolean;
    property DocumentsWithErrorsCount: Integer read GetDocumentsWithErrorsCount write SetDocumentsWithErrorsCount;
    property InputDocumentsCount: Integer read GetInputDocumentsCount write SetInputDocumentsCount;
    property TranslatedDocumentsCount: Integer read GetTranslatedDocumentsCount write SetTranslatedDocumentsCount;
  end;
  
  TJobDetails = class
  strict private
    FDocumentsWithErrorsCount: Nullable<Integer>;
    FInputDocumentsCount: Nullable<Integer>;
    FTranslatedDocumentsCount: Nullable<Integer>;
    function GetDocumentsWithErrorsCount: Integer;
    procedure SetDocumentsWithErrorsCount(const Value: Integer);
    function GetInputDocumentsCount: Integer;
    procedure SetInputDocumentsCount(const Value: Integer);
    function GetTranslatedDocumentsCount: Integer;
    procedure SetTranslatedDocumentsCount(const Value: Integer);
  strict protected
    function Obj: TJobDetails;
  public
    function IsSetDocumentsWithErrorsCount: Boolean;
    function IsSetInputDocumentsCount: Boolean;
    function IsSetTranslatedDocumentsCount: Boolean;
    property DocumentsWithErrorsCount: Integer read GetDocumentsWithErrorsCount write SetDocumentsWithErrorsCount;
    property InputDocumentsCount: Integer read GetInputDocumentsCount write SetInputDocumentsCount;
    property TranslatedDocumentsCount: Integer read GetTranslatedDocumentsCount write SetTranslatedDocumentsCount;
  end;
  
implementation

{ TJobDetails }

function TJobDetails.Obj: TJobDetails;
begin
  Result := Self;
end;

function TJobDetails.GetDocumentsWithErrorsCount: Integer;
begin
  Result := FDocumentsWithErrorsCount.ValueOrDefault;
end;

procedure TJobDetails.SetDocumentsWithErrorsCount(const Value: Integer);
begin
  FDocumentsWithErrorsCount := Value;
end;

function TJobDetails.IsSetDocumentsWithErrorsCount: Boolean;
begin
  Result := FDocumentsWithErrorsCount.HasValue;
end;

function TJobDetails.GetInputDocumentsCount: Integer;
begin
  Result := FInputDocumentsCount.ValueOrDefault;
end;

procedure TJobDetails.SetInputDocumentsCount(const Value: Integer);
begin
  FInputDocumentsCount := Value;
end;

function TJobDetails.IsSetInputDocumentsCount: Boolean;
begin
  Result := FInputDocumentsCount.HasValue;
end;

function TJobDetails.GetTranslatedDocumentsCount: Integer;
begin
  Result := FTranslatedDocumentsCount.ValueOrDefault;
end;

procedure TJobDetails.SetTranslatedDocumentsCount(const Value: Integer);
begin
  FTranslatedDocumentsCount := Value;
end;

function TJobDetails.IsSetTranslatedDocumentsCount: Boolean;
begin
  Result := FTranslatedDocumentsCount.HasValue;
end;

end.
