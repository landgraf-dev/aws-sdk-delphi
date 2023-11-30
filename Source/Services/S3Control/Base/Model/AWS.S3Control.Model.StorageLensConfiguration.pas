unit AWS.S3Control.Model.StorageLensConfiguration;

interface

uses
  AWS.S3Control.Model.AccountLevel, 
  AWS.S3Control.Model.StorageLensAwsOrg, 
  AWS.S3Control.Model.StorageLensDataExport, 
  AWS.S3Control.Model.Exclude, 
  AWS.Nullable, 
  AWS.S3Control.Model.Include;

type
  TStorageLensConfiguration = class;
  
  IStorageLensConfiguration = interface
    function GetAccountLevel: TAccountLevel;
    procedure SetAccountLevel(const Value: TAccountLevel);
    function GetKeepAccountLevel: Boolean;
    procedure SetKeepAccountLevel(const Value: Boolean);
    function GetAwsOrg: TStorageLensAwsOrg;
    procedure SetAwsOrg(const Value: TStorageLensAwsOrg);
    function GetKeepAwsOrg: Boolean;
    procedure SetKeepAwsOrg(const Value: Boolean);
    function GetDataExport: TStorageLensDataExport;
    procedure SetDataExport(const Value: TStorageLensDataExport);
    function GetKeepDataExport: Boolean;
    procedure SetKeepDataExport(const Value: Boolean);
    function GetExclude: TExclude;
    procedure SetExclude(const Value: TExclude);
    function GetKeepExclude: Boolean;
    procedure SetKeepExclude(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetInclude: TInclude;
    procedure SetInclude(const Value: TInclude);
    function GetKeepInclude: Boolean;
    procedure SetKeepInclude(const Value: Boolean);
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function GetStorageLensArn: string;
    procedure SetStorageLensArn(const Value: string);
    function Obj: TStorageLensConfiguration;
    function IsSetAccountLevel: Boolean;
    function IsSetAwsOrg: Boolean;
    function IsSetDataExport: Boolean;
    function IsSetExclude: Boolean;
    function IsSetId: Boolean;
    function IsSetInclude: Boolean;
    function IsSetIsEnabled: Boolean;
    function IsSetStorageLensArn: Boolean;
    property AccountLevel: TAccountLevel read GetAccountLevel write SetAccountLevel;
    property KeepAccountLevel: Boolean read GetKeepAccountLevel write SetKeepAccountLevel;
    property AwsOrg: TStorageLensAwsOrg read GetAwsOrg write SetAwsOrg;
    property KeepAwsOrg: Boolean read GetKeepAwsOrg write SetKeepAwsOrg;
    property DataExport: TStorageLensDataExport read GetDataExport write SetDataExport;
    property KeepDataExport: Boolean read GetKeepDataExport write SetKeepDataExport;
    property Exclude: TExclude read GetExclude write SetExclude;
    property KeepExclude: Boolean read GetKeepExclude write SetKeepExclude;
    property Id: string read GetId write SetId;
    property Include: TInclude read GetInclude write SetInclude;
    property KeepInclude: Boolean read GetKeepInclude write SetKeepInclude;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
    property StorageLensArn: string read GetStorageLensArn write SetStorageLensArn;
  end;
  
  TStorageLensConfiguration = class
  strict private
    FAccountLevel: TAccountLevel;
    FKeepAccountLevel: Boolean;
    FAwsOrg: TStorageLensAwsOrg;
    FKeepAwsOrg: Boolean;
    FDataExport: TStorageLensDataExport;
    FKeepDataExport: Boolean;
    FExclude: TExclude;
    FKeepExclude: Boolean;
    FId: Nullable<string>;
    FInclude: TInclude;
    FKeepInclude: Boolean;
    FIsEnabled: Nullable<Boolean>;
    FStorageLensArn: Nullable<string>;
    function GetAccountLevel: TAccountLevel;
    procedure SetAccountLevel(const Value: TAccountLevel);
    function GetKeepAccountLevel: Boolean;
    procedure SetKeepAccountLevel(const Value: Boolean);
    function GetAwsOrg: TStorageLensAwsOrg;
    procedure SetAwsOrg(const Value: TStorageLensAwsOrg);
    function GetKeepAwsOrg: Boolean;
    procedure SetKeepAwsOrg(const Value: Boolean);
    function GetDataExport: TStorageLensDataExport;
    procedure SetDataExport(const Value: TStorageLensDataExport);
    function GetKeepDataExport: Boolean;
    procedure SetKeepDataExport(const Value: Boolean);
    function GetExclude: TExclude;
    procedure SetExclude(const Value: TExclude);
    function GetKeepExclude: Boolean;
    procedure SetKeepExclude(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetInclude: TInclude;
    procedure SetInclude(const Value: TInclude);
    function GetKeepInclude: Boolean;
    procedure SetKeepInclude(const Value: Boolean);
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function GetStorageLensArn: string;
    procedure SetStorageLensArn(const Value: string);
  strict protected
    function Obj: TStorageLensConfiguration;
  public
    destructor Destroy; override;
    function IsSetAccountLevel: Boolean;
    function IsSetAwsOrg: Boolean;
    function IsSetDataExport: Boolean;
    function IsSetExclude: Boolean;
    function IsSetId: Boolean;
    function IsSetInclude: Boolean;
    function IsSetIsEnabled: Boolean;
    function IsSetStorageLensArn: Boolean;
    property AccountLevel: TAccountLevel read GetAccountLevel write SetAccountLevel;
    property KeepAccountLevel: Boolean read GetKeepAccountLevel write SetKeepAccountLevel;
    property AwsOrg: TStorageLensAwsOrg read GetAwsOrg write SetAwsOrg;
    property KeepAwsOrg: Boolean read GetKeepAwsOrg write SetKeepAwsOrg;
    property DataExport: TStorageLensDataExport read GetDataExport write SetDataExport;
    property KeepDataExport: Boolean read GetKeepDataExport write SetKeepDataExport;
    property Exclude: TExclude read GetExclude write SetExclude;
    property KeepExclude: Boolean read GetKeepExclude write SetKeepExclude;
    property Id: string read GetId write SetId;
    property Include: TInclude read GetInclude write SetInclude;
    property KeepInclude: Boolean read GetKeepInclude write SetKeepInclude;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
    property StorageLensArn: string read GetStorageLensArn write SetStorageLensArn;
  end;
  
implementation

{ TStorageLensConfiguration }

destructor TStorageLensConfiguration.Destroy;
begin
  Include := nil;
  Exclude := nil;
  DataExport := nil;
  AwsOrg := nil;
  AccountLevel := nil;
  inherited;
end;

function TStorageLensConfiguration.Obj: TStorageLensConfiguration;
begin
  Result := Self;
end;

function TStorageLensConfiguration.GetAccountLevel: TAccountLevel;
begin
  Result := FAccountLevel;
end;

procedure TStorageLensConfiguration.SetAccountLevel(const Value: TAccountLevel);
begin
  if FAccountLevel <> Value then
  begin
    if not KeepAccountLevel then
      FAccountLevel.Free;
    FAccountLevel := Value;
  end;
end;

function TStorageLensConfiguration.GetKeepAccountLevel: Boolean;
begin
  Result := FKeepAccountLevel;
end;

procedure TStorageLensConfiguration.SetKeepAccountLevel(const Value: Boolean);
begin
  FKeepAccountLevel := Value;
end;

function TStorageLensConfiguration.IsSetAccountLevel: Boolean;
begin
  Result := FAccountLevel <> nil;
end;

function TStorageLensConfiguration.GetAwsOrg: TStorageLensAwsOrg;
begin
  Result := FAwsOrg;
end;

procedure TStorageLensConfiguration.SetAwsOrg(const Value: TStorageLensAwsOrg);
begin
  if FAwsOrg <> Value then
  begin
    if not KeepAwsOrg then
      FAwsOrg.Free;
    FAwsOrg := Value;
  end;
end;

function TStorageLensConfiguration.GetKeepAwsOrg: Boolean;
begin
  Result := FKeepAwsOrg;
end;

procedure TStorageLensConfiguration.SetKeepAwsOrg(const Value: Boolean);
begin
  FKeepAwsOrg := Value;
end;

function TStorageLensConfiguration.IsSetAwsOrg: Boolean;
begin
  Result := FAwsOrg <> nil;
end;

function TStorageLensConfiguration.GetDataExport: TStorageLensDataExport;
begin
  Result := FDataExport;
end;

procedure TStorageLensConfiguration.SetDataExport(const Value: TStorageLensDataExport);
begin
  if FDataExport <> Value then
  begin
    if not KeepDataExport then
      FDataExport.Free;
    FDataExport := Value;
  end;
end;

function TStorageLensConfiguration.GetKeepDataExport: Boolean;
begin
  Result := FKeepDataExport;
end;

procedure TStorageLensConfiguration.SetKeepDataExport(const Value: Boolean);
begin
  FKeepDataExport := Value;
end;

function TStorageLensConfiguration.IsSetDataExport: Boolean;
begin
  Result := FDataExport <> nil;
end;

function TStorageLensConfiguration.GetExclude: TExclude;
begin
  Result := FExclude;
end;

procedure TStorageLensConfiguration.SetExclude(const Value: TExclude);
begin
  if FExclude <> Value then
  begin
    if not KeepExclude then
      FExclude.Free;
    FExclude := Value;
  end;
end;

function TStorageLensConfiguration.GetKeepExclude: Boolean;
begin
  Result := FKeepExclude;
end;

procedure TStorageLensConfiguration.SetKeepExclude(const Value: Boolean);
begin
  FKeepExclude := Value;
end;

function TStorageLensConfiguration.IsSetExclude: Boolean;
begin
  Result := FExclude <> nil;
end;

function TStorageLensConfiguration.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TStorageLensConfiguration.SetId(const Value: string);
begin
  FId := Value;
end;

function TStorageLensConfiguration.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TStorageLensConfiguration.GetInclude: TInclude;
begin
  Result := FInclude;
end;

procedure TStorageLensConfiguration.SetInclude(const Value: TInclude);
begin
  if FInclude <> Value then
  begin
    if not KeepInclude then
      FInclude.Free;
    FInclude := Value;
  end;
end;

function TStorageLensConfiguration.GetKeepInclude: Boolean;
begin
  Result := FKeepInclude;
end;

procedure TStorageLensConfiguration.SetKeepInclude(const Value: Boolean);
begin
  FKeepInclude := Value;
end;

function TStorageLensConfiguration.IsSetInclude: Boolean;
begin
  Result := FInclude <> nil;
end;

function TStorageLensConfiguration.GetIsEnabled: Boolean;
begin
  Result := FIsEnabled.ValueOrDefault;
end;

procedure TStorageLensConfiguration.SetIsEnabled(const Value: Boolean);
begin
  FIsEnabled := Value;
end;

function TStorageLensConfiguration.IsSetIsEnabled: Boolean;
begin
  Result := FIsEnabled.HasValue;
end;

function TStorageLensConfiguration.GetStorageLensArn: string;
begin
  Result := FStorageLensArn.ValueOrDefault;
end;

procedure TStorageLensConfiguration.SetStorageLensArn(const Value: string);
begin
  FStorageLensArn := Value;
end;

function TStorageLensConfiguration.IsSetStorageLensArn: Boolean;
begin
  Result := FStorageLensArn.HasValue;
end;

end.
