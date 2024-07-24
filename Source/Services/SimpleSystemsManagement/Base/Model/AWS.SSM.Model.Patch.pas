unit AWS.SSM.Model.Patch;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TPatch = class;
  
  IPatch = interface
    function GetAdvisoryIds: TList<string>;
    procedure SetAdvisoryIds(const Value: TList<string>);
    function GetKeepAdvisoryIds: Boolean;
    procedure SetKeepAdvisoryIds(const Value: Boolean);
    function GetArch: string;
    procedure SetArch(const Value: string);
    function GetBugzillaIds: TList<string>;
    procedure SetBugzillaIds(const Value: TList<string>);
    function GetKeepBugzillaIds: Boolean;
    procedure SetKeepBugzillaIds(const Value: Boolean);
    function GetCVEIds: TList<string>;
    procedure SetCVEIds(const Value: TList<string>);
    function GetKeepCVEIds: Boolean;
    procedure SetKeepCVEIds(const Value: Boolean);
    function GetClassification: string;
    procedure SetClassification(const Value: string);
    function GetContentUrl: string;
    procedure SetContentUrl(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetEpoch: Integer;
    procedure SetEpoch(const Value: Integer);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetKbNumber: string;
    procedure SetKbNumber(const Value: string);
    function GetLanguage: string;
    procedure SetLanguage(const Value: string);
    function GetMsrcNumber: string;
    procedure SetMsrcNumber(const Value: string);
    function GetMsrcSeverity: string;
    procedure SetMsrcSeverity(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetProduct: string;
    procedure SetProduct(const Value: string);
    function GetProductFamily: string;
    procedure SetProductFamily(const Value: string);
    function GetRelease: string;
    procedure SetRelease(const Value: string);
    function GetReleaseDate: TDateTime;
    procedure SetReleaseDate(const Value: TDateTime);
    function GetRepository: string;
    procedure SetRepository(const Value: string);
    function GetSeverity: string;
    procedure SetSeverity(const Value: string);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function GetVendor: string;
    procedure SetVendor(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    function Obj: TPatch;
    function IsSetAdvisoryIds: Boolean;
    function IsSetArch: Boolean;
    function IsSetBugzillaIds: Boolean;
    function IsSetCVEIds: Boolean;
    function IsSetClassification: Boolean;
    function IsSetContentUrl: Boolean;
    function IsSetDescription: Boolean;
    function IsSetEpoch: Boolean;
    function IsSetId: Boolean;
    function IsSetKbNumber: Boolean;
    function IsSetLanguage: Boolean;
    function IsSetMsrcNumber: Boolean;
    function IsSetMsrcSeverity: Boolean;
    function IsSetName: Boolean;
    function IsSetProduct: Boolean;
    function IsSetProductFamily: Boolean;
    function IsSetRelease: Boolean;
    function IsSetReleaseDate: Boolean;
    function IsSetRepository: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetTitle: Boolean;
    function IsSetVendor: Boolean;
    function IsSetVersion: Boolean;
    property AdvisoryIds: TList<string> read GetAdvisoryIds write SetAdvisoryIds;
    property KeepAdvisoryIds: Boolean read GetKeepAdvisoryIds write SetKeepAdvisoryIds;
    property Arch: string read GetArch write SetArch;
    property BugzillaIds: TList<string> read GetBugzillaIds write SetBugzillaIds;
    property KeepBugzillaIds: Boolean read GetKeepBugzillaIds write SetKeepBugzillaIds;
    property CVEIds: TList<string> read GetCVEIds write SetCVEIds;
    property KeepCVEIds: Boolean read GetKeepCVEIds write SetKeepCVEIds;
    property Classification: string read GetClassification write SetClassification;
    property ContentUrl: string read GetContentUrl write SetContentUrl;
    property Description: string read GetDescription write SetDescription;
    property Epoch: Integer read GetEpoch write SetEpoch;
    property Id: string read GetId write SetId;
    property KbNumber: string read GetKbNumber write SetKbNumber;
    property Language: string read GetLanguage write SetLanguage;
    property MsrcNumber: string read GetMsrcNumber write SetMsrcNumber;
    property MsrcSeverity: string read GetMsrcSeverity write SetMsrcSeverity;
    property Name: string read GetName write SetName;
    property Product: string read GetProduct write SetProduct;
    property ProductFamily: string read GetProductFamily write SetProductFamily;
    property Release: string read GetRelease write SetRelease;
    property ReleaseDate: TDateTime read GetReleaseDate write SetReleaseDate;
    property Repository: string read GetRepository write SetRepository;
    property Severity: string read GetSeverity write SetSeverity;
    property Title: string read GetTitle write SetTitle;
    property Vendor: string read GetVendor write SetVendor;
    property Version: string read GetVersion write SetVersion;
  end;
  
  TPatch = class
  strict private
    FAdvisoryIds: TList<string>;
    FKeepAdvisoryIds: Boolean;
    FArch: Nullable<string>;
    FBugzillaIds: TList<string>;
    FKeepBugzillaIds: Boolean;
    FCVEIds: TList<string>;
    FKeepCVEIds: Boolean;
    FClassification: Nullable<string>;
    FContentUrl: Nullable<string>;
    FDescription: Nullable<string>;
    FEpoch: Nullable<Integer>;
    FId: Nullable<string>;
    FKbNumber: Nullable<string>;
    FLanguage: Nullable<string>;
    FMsrcNumber: Nullable<string>;
    FMsrcSeverity: Nullable<string>;
    FName: Nullable<string>;
    FProduct: Nullable<string>;
    FProductFamily: Nullable<string>;
    FRelease: Nullable<string>;
    FReleaseDate: Nullable<TDateTime>;
    FRepository: Nullable<string>;
    FSeverity: Nullable<string>;
    FTitle: Nullable<string>;
    FVendor: Nullable<string>;
    FVersion: Nullable<string>;
    function GetAdvisoryIds: TList<string>;
    procedure SetAdvisoryIds(const Value: TList<string>);
    function GetKeepAdvisoryIds: Boolean;
    procedure SetKeepAdvisoryIds(const Value: Boolean);
    function GetArch: string;
    procedure SetArch(const Value: string);
    function GetBugzillaIds: TList<string>;
    procedure SetBugzillaIds(const Value: TList<string>);
    function GetKeepBugzillaIds: Boolean;
    procedure SetKeepBugzillaIds(const Value: Boolean);
    function GetCVEIds: TList<string>;
    procedure SetCVEIds(const Value: TList<string>);
    function GetKeepCVEIds: Boolean;
    procedure SetKeepCVEIds(const Value: Boolean);
    function GetClassification: string;
    procedure SetClassification(const Value: string);
    function GetContentUrl: string;
    procedure SetContentUrl(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetEpoch: Integer;
    procedure SetEpoch(const Value: Integer);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetKbNumber: string;
    procedure SetKbNumber(const Value: string);
    function GetLanguage: string;
    procedure SetLanguage(const Value: string);
    function GetMsrcNumber: string;
    procedure SetMsrcNumber(const Value: string);
    function GetMsrcSeverity: string;
    procedure SetMsrcSeverity(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetProduct: string;
    procedure SetProduct(const Value: string);
    function GetProductFamily: string;
    procedure SetProductFamily(const Value: string);
    function GetRelease: string;
    procedure SetRelease(const Value: string);
    function GetReleaseDate: TDateTime;
    procedure SetReleaseDate(const Value: TDateTime);
    function GetRepository: string;
    procedure SetRepository(const Value: string);
    function GetSeverity: string;
    procedure SetSeverity(const Value: string);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function GetVendor: string;
    procedure SetVendor(const Value: string);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
  strict protected
    function Obj: TPatch;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAdvisoryIds: Boolean;
    function IsSetArch: Boolean;
    function IsSetBugzillaIds: Boolean;
    function IsSetCVEIds: Boolean;
    function IsSetClassification: Boolean;
    function IsSetContentUrl: Boolean;
    function IsSetDescription: Boolean;
    function IsSetEpoch: Boolean;
    function IsSetId: Boolean;
    function IsSetKbNumber: Boolean;
    function IsSetLanguage: Boolean;
    function IsSetMsrcNumber: Boolean;
    function IsSetMsrcSeverity: Boolean;
    function IsSetName: Boolean;
    function IsSetProduct: Boolean;
    function IsSetProductFamily: Boolean;
    function IsSetRelease: Boolean;
    function IsSetReleaseDate: Boolean;
    function IsSetRepository: Boolean;
    function IsSetSeverity: Boolean;
    function IsSetTitle: Boolean;
    function IsSetVendor: Boolean;
    function IsSetVersion: Boolean;
    property AdvisoryIds: TList<string> read GetAdvisoryIds write SetAdvisoryIds;
    property KeepAdvisoryIds: Boolean read GetKeepAdvisoryIds write SetKeepAdvisoryIds;
    property Arch: string read GetArch write SetArch;
    property BugzillaIds: TList<string> read GetBugzillaIds write SetBugzillaIds;
    property KeepBugzillaIds: Boolean read GetKeepBugzillaIds write SetKeepBugzillaIds;
    property CVEIds: TList<string> read GetCVEIds write SetCVEIds;
    property KeepCVEIds: Boolean read GetKeepCVEIds write SetKeepCVEIds;
    property Classification: string read GetClassification write SetClassification;
    property ContentUrl: string read GetContentUrl write SetContentUrl;
    property Description: string read GetDescription write SetDescription;
    property Epoch: Integer read GetEpoch write SetEpoch;
    property Id: string read GetId write SetId;
    property KbNumber: string read GetKbNumber write SetKbNumber;
    property Language: string read GetLanguage write SetLanguage;
    property MsrcNumber: string read GetMsrcNumber write SetMsrcNumber;
    property MsrcSeverity: string read GetMsrcSeverity write SetMsrcSeverity;
    property Name: string read GetName write SetName;
    property Product: string read GetProduct write SetProduct;
    property ProductFamily: string read GetProductFamily write SetProductFamily;
    property Release: string read GetRelease write SetRelease;
    property ReleaseDate: TDateTime read GetReleaseDate write SetReleaseDate;
    property Repository: string read GetRepository write SetRepository;
    property Severity: string read GetSeverity write SetSeverity;
    property Title: string read GetTitle write SetTitle;
    property Vendor: string read GetVendor write SetVendor;
    property Version: string read GetVersion write SetVersion;
  end;
  
implementation

{ TPatch }

constructor TPatch.Create;
begin
  inherited;
  FAdvisoryIds := TList<string>.Create;
  FBugzillaIds := TList<string>.Create;
  FCVEIds := TList<string>.Create;
end;

destructor TPatch.Destroy;
begin
  CVEIds := nil;
  BugzillaIds := nil;
  AdvisoryIds := nil;
  inherited;
end;

function TPatch.Obj: TPatch;
begin
  Result := Self;
end;

function TPatch.GetAdvisoryIds: TList<string>;
begin
  Result := FAdvisoryIds;
end;

procedure TPatch.SetAdvisoryIds(const Value: TList<string>);
begin
  if FAdvisoryIds <> Value then
  begin
    if not KeepAdvisoryIds then
      FAdvisoryIds.Free;
    FAdvisoryIds := Value;
  end;
end;

function TPatch.GetKeepAdvisoryIds: Boolean;
begin
  Result := FKeepAdvisoryIds;
end;

procedure TPatch.SetKeepAdvisoryIds(const Value: Boolean);
begin
  FKeepAdvisoryIds := Value;
end;

function TPatch.IsSetAdvisoryIds: Boolean;
begin
  Result := (FAdvisoryIds <> nil) and (FAdvisoryIds.Count > 0);
end;

function TPatch.GetArch: string;
begin
  Result := FArch.ValueOrDefault;
end;

procedure TPatch.SetArch(const Value: string);
begin
  FArch := Value;
end;

function TPatch.IsSetArch: Boolean;
begin
  Result := FArch.HasValue;
end;

function TPatch.GetBugzillaIds: TList<string>;
begin
  Result := FBugzillaIds;
end;

procedure TPatch.SetBugzillaIds(const Value: TList<string>);
begin
  if FBugzillaIds <> Value then
  begin
    if not KeepBugzillaIds then
      FBugzillaIds.Free;
    FBugzillaIds := Value;
  end;
end;

function TPatch.GetKeepBugzillaIds: Boolean;
begin
  Result := FKeepBugzillaIds;
end;

procedure TPatch.SetKeepBugzillaIds(const Value: Boolean);
begin
  FKeepBugzillaIds := Value;
end;

function TPatch.IsSetBugzillaIds: Boolean;
begin
  Result := (FBugzillaIds <> nil) and (FBugzillaIds.Count > 0);
end;

function TPatch.GetCVEIds: TList<string>;
begin
  Result := FCVEIds;
end;

procedure TPatch.SetCVEIds(const Value: TList<string>);
begin
  if FCVEIds <> Value then
  begin
    if not KeepCVEIds then
      FCVEIds.Free;
    FCVEIds := Value;
  end;
end;

function TPatch.GetKeepCVEIds: Boolean;
begin
  Result := FKeepCVEIds;
end;

procedure TPatch.SetKeepCVEIds(const Value: Boolean);
begin
  FKeepCVEIds := Value;
end;

function TPatch.IsSetCVEIds: Boolean;
begin
  Result := (FCVEIds <> nil) and (FCVEIds.Count > 0);
end;

function TPatch.GetClassification: string;
begin
  Result := FClassification.ValueOrDefault;
end;

procedure TPatch.SetClassification(const Value: string);
begin
  FClassification := Value;
end;

function TPatch.IsSetClassification: Boolean;
begin
  Result := FClassification.HasValue;
end;

function TPatch.GetContentUrl: string;
begin
  Result := FContentUrl.ValueOrDefault;
end;

procedure TPatch.SetContentUrl(const Value: string);
begin
  FContentUrl := Value;
end;

function TPatch.IsSetContentUrl: Boolean;
begin
  Result := FContentUrl.HasValue;
end;

function TPatch.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TPatch.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TPatch.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TPatch.GetEpoch: Integer;
begin
  Result := FEpoch.ValueOrDefault;
end;

procedure TPatch.SetEpoch(const Value: Integer);
begin
  FEpoch := Value;
end;

function TPatch.IsSetEpoch: Boolean;
begin
  Result := FEpoch.HasValue;
end;

function TPatch.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TPatch.SetId(const Value: string);
begin
  FId := Value;
end;

function TPatch.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TPatch.GetKbNumber: string;
begin
  Result := FKbNumber.ValueOrDefault;
end;

procedure TPatch.SetKbNumber(const Value: string);
begin
  FKbNumber := Value;
end;

function TPatch.IsSetKbNumber: Boolean;
begin
  Result := FKbNumber.HasValue;
end;

function TPatch.GetLanguage: string;
begin
  Result := FLanguage.ValueOrDefault;
end;

procedure TPatch.SetLanguage(const Value: string);
begin
  FLanguage := Value;
end;

function TPatch.IsSetLanguage: Boolean;
begin
  Result := FLanguage.HasValue;
end;

function TPatch.GetMsrcNumber: string;
begin
  Result := FMsrcNumber.ValueOrDefault;
end;

procedure TPatch.SetMsrcNumber(const Value: string);
begin
  FMsrcNumber := Value;
end;

function TPatch.IsSetMsrcNumber: Boolean;
begin
  Result := FMsrcNumber.HasValue;
end;

function TPatch.GetMsrcSeverity: string;
begin
  Result := FMsrcSeverity.ValueOrDefault;
end;

procedure TPatch.SetMsrcSeverity(const Value: string);
begin
  FMsrcSeverity := Value;
end;

function TPatch.IsSetMsrcSeverity: Boolean;
begin
  Result := FMsrcSeverity.HasValue;
end;

function TPatch.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TPatch.SetName(const Value: string);
begin
  FName := Value;
end;

function TPatch.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TPatch.GetProduct: string;
begin
  Result := FProduct.ValueOrDefault;
end;

procedure TPatch.SetProduct(const Value: string);
begin
  FProduct := Value;
end;

function TPatch.IsSetProduct: Boolean;
begin
  Result := FProduct.HasValue;
end;

function TPatch.GetProductFamily: string;
begin
  Result := FProductFamily.ValueOrDefault;
end;

procedure TPatch.SetProductFamily(const Value: string);
begin
  FProductFamily := Value;
end;

function TPatch.IsSetProductFamily: Boolean;
begin
  Result := FProductFamily.HasValue;
end;

function TPatch.GetRelease: string;
begin
  Result := FRelease.ValueOrDefault;
end;

procedure TPatch.SetRelease(const Value: string);
begin
  FRelease := Value;
end;

function TPatch.IsSetRelease: Boolean;
begin
  Result := FRelease.HasValue;
end;

function TPatch.GetReleaseDate: TDateTime;
begin
  Result := FReleaseDate.ValueOrDefault;
end;

procedure TPatch.SetReleaseDate(const Value: TDateTime);
begin
  FReleaseDate := Value;
end;

function TPatch.IsSetReleaseDate: Boolean;
begin
  Result := FReleaseDate.HasValue;
end;

function TPatch.GetRepository: string;
begin
  Result := FRepository.ValueOrDefault;
end;

procedure TPatch.SetRepository(const Value: string);
begin
  FRepository := Value;
end;

function TPatch.IsSetRepository: Boolean;
begin
  Result := FRepository.HasValue;
end;

function TPatch.GetSeverity: string;
begin
  Result := FSeverity.ValueOrDefault;
end;

procedure TPatch.SetSeverity(const Value: string);
begin
  FSeverity := Value;
end;

function TPatch.IsSetSeverity: Boolean;
begin
  Result := FSeverity.HasValue;
end;

function TPatch.GetTitle: string;
begin
  Result := FTitle.ValueOrDefault;
end;

procedure TPatch.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

function TPatch.IsSetTitle: Boolean;
begin
  Result := FTitle.HasValue;
end;

function TPatch.GetVendor: string;
begin
  Result := FVendor.ValueOrDefault;
end;

procedure TPatch.SetVendor(const Value: string);
begin
  FVendor := Value;
end;

function TPatch.IsSetVendor: Boolean;
begin
  Result := FVendor.HasValue;
end;

function TPatch.GetVersion: string;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TPatch.SetVersion(const Value: string);
begin
  FVersion := Value;
end;

function TPatch.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
