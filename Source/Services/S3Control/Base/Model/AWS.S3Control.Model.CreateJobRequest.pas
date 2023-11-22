unit AWS.S3Control.Model.CreateJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3Control.Model.Request, 
  AWS.S3Control.Model.JobManifest, 
  AWS.S3Control.Model.JobOperation, 
  AWS.S3Control.Model.JobReport, 
  AWS.S3Control.Model.S3Tag;

type
  TCreateJobRequest = class;
  
  ICreateJobRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetConfirmationRequired: Boolean;
    procedure SetConfirmationRequired(const Value: Boolean);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetManifest: TJobManifest;
    procedure SetManifest(const Value: TJobManifest);
    function GetKeepManifest: Boolean;
    procedure SetKeepManifest(const Value: Boolean);
    function GetOperation: TJobOperation;
    procedure SetOperation(const Value: TJobOperation);
    function GetKeepOperation: Boolean;
    procedure SetKeepOperation(const Value: Boolean);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetReport: TJobReport;
    procedure SetReport(const Value: TJobReport);
    function GetKeepReport: Boolean;
    procedure SetKeepReport(const Value: Boolean);
    function GetRoleArn: string;
    procedure SetRoleArn(const Value: string);
    function GetTags: TObjectList<TS3Tag>;
    procedure SetTags(const Value: TObjectList<TS3Tag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateJobRequest;
    function IsSetAccountId: Boolean;
    function IsSetClientRequestToken: Boolean;
    function IsSetConfirmationRequired: Boolean;
    function IsSetDescription: Boolean;
    function IsSetManifest: Boolean;
    function IsSetOperation: Boolean;
    function IsSetPriority: Boolean;
    function IsSetReport: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetTags: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property ConfirmationRequired: Boolean read GetConfirmationRequired write SetConfirmationRequired;
    property Description: string read GetDescription write SetDescription;
    property Manifest: TJobManifest read GetManifest write SetManifest;
    property KeepManifest: Boolean read GetKeepManifest write SetKeepManifest;
    property Operation: TJobOperation read GetOperation write SetOperation;
    property KeepOperation: Boolean read GetKeepOperation write SetKeepOperation;
    property Priority: Integer read GetPriority write SetPriority;
    property Report: TJobReport read GetReport write SetReport;
    property KeepReport: Boolean read GetKeepReport write SetKeepReport;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property Tags: TObjectList<TS3Tag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateJobRequest = class(TAmazonS3ControlRequest, ICreateJobRequest)
  strict private
    FAccountId: Nullable<string>;
    FClientRequestToken: Nullable<string>;
    FConfirmationRequired: Nullable<Boolean>;
    FDescription: Nullable<string>;
    FManifest: TJobManifest;
    FKeepManifest: Boolean;
    FOperation: TJobOperation;
    FKeepOperation: Boolean;
    FPriority: Nullable<Integer>;
    FReport: TJobReport;
    FKeepReport: Boolean;
    FRoleArn: Nullable<string>;
    FTags: TObjectList<TS3Tag>;
    FKeepTags: Boolean;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetClientRequestToken: string;
    procedure SetClientRequestToken(const Value: string);
    function GetConfirmationRequired: Boolean;
    procedure SetConfirmationRequired(const Value: Boolean);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetManifest: TJobManifest;
    procedure SetManifest(const Value: TJobManifest);
    function GetKeepManifest: Boolean;
    procedure SetKeepManifest(const Value: Boolean);
    function GetOperation: TJobOperation;
    procedure SetOperation(const Value: TJobOperation);
    function GetKeepOperation: Boolean;
    procedure SetKeepOperation(const Value: Boolean);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetReport: TJobReport;
    procedure SetReport(const Value: TJobReport);
    function GetKeepReport: Boolean;
    procedure SetKeepReport(const Value: Boolean);
    function GetRoleArn: string;
    procedure SetRoleArn(const Value: string);
    function GetTags: TObjectList<TS3Tag>;
    procedure SetTags(const Value: TObjectList<TS3Tag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateJobRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetClientRequestToken: Boolean;
    function IsSetConfirmationRequired: Boolean;
    function IsSetDescription: Boolean;
    function IsSetManifest: Boolean;
    function IsSetOperation: Boolean;
    function IsSetPriority: Boolean;
    function IsSetReport: Boolean;
    function IsSetRoleArn: Boolean;
    function IsSetTags: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property ClientRequestToken: string read GetClientRequestToken write SetClientRequestToken;
    property ConfirmationRequired: Boolean read GetConfirmationRequired write SetConfirmationRequired;
    property Description: string read GetDescription write SetDescription;
    property Manifest: TJobManifest read GetManifest write SetManifest;
    property KeepManifest: Boolean read GetKeepManifest write SetKeepManifest;
    property Operation: TJobOperation read GetOperation write SetOperation;
    property KeepOperation: Boolean read GetKeepOperation write SetKeepOperation;
    property Priority: Integer read GetPriority write SetPriority;
    property Report: TJobReport read GetReport write SetReport;
    property KeepReport: Boolean read GetKeepReport write SetKeepReport;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property Tags: TObjectList<TS3Tag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateJobRequest }

constructor TCreateJobRequest.Create;
begin
  inherited;
  FTags := TObjectList<TS3Tag>.Create;
end;

destructor TCreateJobRequest.Destroy;
begin
  Tags := nil;
  Report := nil;
  Operation := nil;
  Manifest := nil;
  inherited;
end;

function TCreateJobRequest.Obj: TCreateJobRequest;
begin
  Result := Self;
end;

function TCreateJobRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TCreateJobRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TCreateJobRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TCreateJobRequest.GetClientRequestToken: string;
begin
  Result := FClientRequestToken.ValueOrDefault;
end;

procedure TCreateJobRequest.SetClientRequestToken(const Value: string);
begin
  FClientRequestToken := Value;
end;

function TCreateJobRequest.IsSetClientRequestToken: Boolean;
begin
  Result := FClientRequestToken.HasValue;
end;

function TCreateJobRequest.GetConfirmationRequired: Boolean;
begin
  Result := FConfirmationRequired.ValueOrDefault;
end;

procedure TCreateJobRequest.SetConfirmationRequired(const Value: Boolean);
begin
  FConfirmationRequired := Value;
end;

function TCreateJobRequest.IsSetConfirmationRequired: Boolean;
begin
  Result := FConfirmationRequired.HasValue;
end;

function TCreateJobRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TCreateJobRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TCreateJobRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TCreateJobRequest.GetManifest: TJobManifest;
begin
  Result := FManifest;
end;

procedure TCreateJobRequest.SetManifest(const Value: TJobManifest);
begin
  if FManifest <> Value then
  begin
    if not KeepManifest then
      FManifest.Free;
    FManifest := Value;
  end;
end;

function TCreateJobRequest.GetKeepManifest: Boolean;
begin
  Result := FKeepManifest;
end;

procedure TCreateJobRequest.SetKeepManifest(const Value: Boolean);
begin
  FKeepManifest := Value;
end;

function TCreateJobRequest.IsSetManifest: Boolean;
begin
  Result := FManifest <> nil;
end;

function TCreateJobRequest.GetOperation: TJobOperation;
begin
  Result := FOperation;
end;

procedure TCreateJobRequest.SetOperation(const Value: TJobOperation);
begin
  if FOperation <> Value then
  begin
    if not KeepOperation then
      FOperation.Free;
    FOperation := Value;
  end;
end;

function TCreateJobRequest.GetKeepOperation: Boolean;
begin
  Result := FKeepOperation;
end;

procedure TCreateJobRequest.SetKeepOperation(const Value: Boolean);
begin
  FKeepOperation := Value;
end;

function TCreateJobRequest.IsSetOperation: Boolean;
begin
  Result := FOperation <> nil;
end;

function TCreateJobRequest.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TCreateJobRequest.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TCreateJobRequest.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TCreateJobRequest.GetReport: TJobReport;
begin
  Result := FReport;
end;

procedure TCreateJobRequest.SetReport(const Value: TJobReport);
begin
  if FReport <> Value then
  begin
    if not KeepReport then
      FReport.Free;
    FReport := Value;
  end;
end;

function TCreateJobRequest.GetKeepReport: Boolean;
begin
  Result := FKeepReport;
end;

procedure TCreateJobRequest.SetKeepReport(const Value: Boolean);
begin
  FKeepReport := Value;
end;

function TCreateJobRequest.IsSetReport: Boolean;
begin
  Result := FReport <> nil;
end;

function TCreateJobRequest.GetRoleArn: string;
begin
  Result := FRoleArn.ValueOrDefault;
end;

procedure TCreateJobRequest.SetRoleArn(const Value: string);
begin
  FRoleArn := Value;
end;

function TCreateJobRequest.IsSetRoleArn: Boolean;
begin
  Result := FRoleArn.HasValue;
end;

function TCreateJobRequest.GetTags: TObjectList<TS3Tag>;
begin
  Result := FTags;
end;

procedure TCreateJobRequest.SetTags(const Value: TObjectList<TS3Tag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateJobRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateJobRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateJobRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
