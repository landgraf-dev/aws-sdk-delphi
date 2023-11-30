unit AWS.SESv2.Model.CreateDeliverabilityTestReportRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.EmailContent, 
  AWS.Nullable, 
  AWS.SESv2.Model.Tag;

type
  TCreateDeliverabilityTestReportRequest = class;
  
  ICreateDeliverabilityTestReportRequest = interface
    function GetContent: TEmailContent;
    procedure SetContent(const Value: TEmailContent);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetReportName: string;
    procedure SetReportName(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateDeliverabilityTestReportRequest;
    function IsSetContent: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetReportName: Boolean;
    function IsSetTags: Boolean;
    property Content: TEmailContent read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property ReportName: string read GetReportName write SetReportName;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateDeliverabilityTestReportRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateDeliverabilityTestReportRequest)
  strict private
    FContent: TEmailContent;
    FKeepContent: Boolean;
    FFromEmailAddress: Nullable<string>;
    FReportName: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetContent: TEmailContent;
    procedure SetContent(const Value: TEmailContent);
    function GetKeepContent: Boolean;
    procedure SetKeepContent(const Value: Boolean);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetReportName: string;
    procedure SetReportName(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateDeliverabilityTestReportRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContent: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetReportName: Boolean;
    function IsSetTags: Boolean;
    property Content: TEmailContent read GetContent write SetContent;
    property KeepContent: Boolean read GetKeepContent write SetKeepContent;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property ReportName: string read GetReportName write SetReportName;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateDeliverabilityTestReportRequest }

constructor TCreateDeliverabilityTestReportRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateDeliverabilityTestReportRequest.Destroy;
begin
  Tags := nil;
  Content := nil;
  inherited;
end;

function TCreateDeliverabilityTestReportRequest.Obj: TCreateDeliverabilityTestReportRequest;
begin
  Result := Self;
end;

function TCreateDeliverabilityTestReportRequest.GetContent: TEmailContent;
begin
  Result := FContent;
end;

procedure TCreateDeliverabilityTestReportRequest.SetContent(const Value: TEmailContent);
begin
  if FContent <> Value then
  begin
    if not KeepContent then
      FContent.Free;
    FContent := Value;
  end;
end;

function TCreateDeliverabilityTestReportRequest.GetKeepContent: Boolean;
begin
  Result := FKeepContent;
end;

procedure TCreateDeliverabilityTestReportRequest.SetKeepContent(const Value: Boolean);
begin
  FKeepContent := Value;
end;

function TCreateDeliverabilityTestReportRequest.IsSetContent: Boolean;
begin
  Result := FContent <> nil;
end;

function TCreateDeliverabilityTestReportRequest.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TCreateDeliverabilityTestReportRequest.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TCreateDeliverabilityTestReportRequest.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TCreateDeliverabilityTestReportRequest.GetReportName: string;
begin
  Result := FReportName.ValueOrDefault;
end;

procedure TCreateDeliverabilityTestReportRequest.SetReportName(const Value: string);
begin
  FReportName := Value;
end;

function TCreateDeliverabilityTestReportRequest.IsSetReportName: Boolean;
begin
  Result := FReportName.HasValue;
end;

function TCreateDeliverabilityTestReportRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateDeliverabilityTestReportRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateDeliverabilityTestReportRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateDeliverabilityTestReportRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateDeliverabilityTestReportRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
