unit AWS.SESv2.Model.CreateConfigurationSetRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.Request, 
  AWS.Nullable, 
  AWS.SESv2.Model.DeliveryOptions, 
  AWS.SESv2.Model.ReputationOptions, 
  AWS.SESv2.Model.SendingOptions, 
  AWS.SESv2.Model.SuppressionOptions, 
  AWS.SESv2.Model.Tag, 
  AWS.SESv2.Model.TrackingOptions;

type
  TCreateConfigurationSetRequest = class;
  
  ICreateConfigurationSetRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDeliveryOptions: TDeliveryOptions;
    procedure SetDeliveryOptions(const Value: TDeliveryOptions);
    function GetKeepDeliveryOptions: Boolean;
    procedure SetKeepDeliveryOptions(const Value: Boolean);
    function GetReputationOptions: TReputationOptions;
    procedure SetReputationOptions(const Value: TReputationOptions);
    function GetKeepReputationOptions: Boolean;
    procedure SetKeepReputationOptions(const Value: Boolean);
    function GetSendingOptions: TSendingOptions;
    procedure SetSendingOptions(const Value: TSendingOptions);
    function GetKeepSendingOptions: Boolean;
    procedure SetKeepSendingOptions(const Value: Boolean);
    function GetSuppressionOptions: TSuppressionOptions;
    procedure SetSuppressionOptions(const Value: TSuppressionOptions);
    function GetKeepSuppressionOptions: Boolean;
    procedure SetKeepSuppressionOptions(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
    function GetKeepTrackingOptions: Boolean;
    procedure SetKeepTrackingOptions(const Value: Boolean);
    function Obj: TCreateConfigurationSetRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDeliveryOptions: Boolean;
    function IsSetReputationOptions: Boolean;
    function IsSetSendingOptions: Boolean;
    function IsSetSuppressionOptions: Boolean;
    function IsSetTags: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DeliveryOptions: TDeliveryOptions read GetDeliveryOptions write SetDeliveryOptions;
    property KeepDeliveryOptions: Boolean read GetKeepDeliveryOptions write SetKeepDeliveryOptions;
    property ReputationOptions: TReputationOptions read GetReputationOptions write SetReputationOptions;
    property KeepReputationOptions: Boolean read GetKeepReputationOptions write SetKeepReputationOptions;
    property SendingOptions: TSendingOptions read GetSendingOptions write SetSendingOptions;
    property KeepSendingOptions: Boolean read GetKeepSendingOptions write SetKeepSendingOptions;
    property SuppressionOptions: TSuppressionOptions read GetSuppressionOptions write SetSuppressionOptions;
    property KeepSuppressionOptions: Boolean read GetKeepSuppressionOptions write SetKeepSuppressionOptions;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
    property KeepTrackingOptions: Boolean read GetKeepTrackingOptions write SetKeepTrackingOptions;
  end;
  
  TCreateConfigurationSetRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateConfigurationSetRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FDeliveryOptions: TDeliveryOptions;
    FKeepDeliveryOptions: Boolean;
    FReputationOptions: TReputationOptions;
    FKeepReputationOptions: Boolean;
    FSendingOptions: TSendingOptions;
    FKeepSendingOptions: Boolean;
    FSuppressionOptions: TSuppressionOptions;
    FKeepSuppressionOptions: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTrackingOptions: TTrackingOptions;
    FKeepTrackingOptions: Boolean;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDeliveryOptions: TDeliveryOptions;
    procedure SetDeliveryOptions(const Value: TDeliveryOptions);
    function GetKeepDeliveryOptions: Boolean;
    procedure SetKeepDeliveryOptions(const Value: Boolean);
    function GetReputationOptions: TReputationOptions;
    procedure SetReputationOptions(const Value: TReputationOptions);
    function GetKeepReputationOptions: Boolean;
    procedure SetKeepReputationOptions(const Value: Boolean);
    function GetSendingOptions: TSendingOptions;
    procedure SetSendingOptions(const Value: TSendingOptions);
    function GetKeepSendingOptions: Boolean;
    procedure SetKeepSendingOptions(const Value: Boolean);
    function GetSuppressionOptions: TSuppressionOptions;
    procedure SetSuppressionOptions(const Value: TSuppressionOptions);
    function GetKeepSuppressionOptions: Boolean;
    procedure SetKeepSuppressionOptions(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
    function GetKeepTrackingOptions: Boolean;
    procedure SetKeepTrackingOptions(const Value: Boolean);
  strict protected
    function Obj: TCreateConfigurationSetRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDeliveryOptions: Boolean;
    function IsSetReputationOptions: Boolean;
    function IsSetSendingOptions: Boolean;
    function IsSetSuppressionOptions: Boolean;
    function IsSetTags: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DeliveryOptions: TDeliveryOptions read GetDeliveryOptions write SetDeliveryOptions;
    property KeepDeliveryOptions: Boolean read GetKeepDeliveryOptions write SetKeepDeliveryOptions;
    property ReputationOptions: TReputationOptions read GetReputationOptions write SetReputationOptions;
    property KeepReputationOptions: Boolean read GetKeepReputationOptions write SetKeepReputationOptions;
    property SendingOptions: TSendingOptions read GetSendingOptions write SetSendingOptions;
    property KeepSendingOptions: Boolean read GetKeepSendingOptions write SetKeepSendingOptions;
    property SuppressionOptions: TSuppressionOptions read GetSuppressionOptions write SetSuppressionOptions;
    property KeepSuppressionOptions: Boolean read GetKeepSuppressionOptions write SetKeepSuppressionOptions;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
    property KeepTrackingOptions: Boolean read GetKeepTrackingOptions write SetKeepTrackingOptions;
  end;
  
implementation

{ TCreateConfigurationSetRequest }

constructor TCreateConfigurationSetRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateConfigurationSetRequest.Destroy;
begin
  TrackingOptions := nil;
  Tags := nil;
  SuppressionOptions := nil;
  SendingOptions := nil;
  ReputationOptions := nil;
  DeliveryOptions := nil;
  inherited;
end;

function TCreateConfigurationSetRequest.Obj: TCreateConfigurationSetRequest;
begin
  Result := Self;
end;

function TCreateConfigurationSetRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TCreateConfigurationSetRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TCreateConfigurationSetRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TCreateConfigurationSetRequest.GetDeliveryOptions: TDeliveryOptions;
begin
  Result := FDeliveryOptions;
end;

procedure TCreateConfigurationSetRequest.SetDeliveryOptions(const Value: TDeliveryOptions);
begin
  if FDeliveryOptions <> Value then
  begin
    if not KeepDeliveryOptions then
      FDeliveryOptions.Free;
    FDeliveryOptions := Value;
  end;
end;

function TCreateConfigurationSetRequest.GetKeepDeliveryOptions: Boolean;
begin
  Result := FKeepDeliveryOptions;
end;

procedure TCreateConfigurationSetRequest.SetKeepDeliveryOptions(const Value: Boolean);
begin
  FKeepDeliveryOptions := Value;
end;

function TCreateConfigurationSetRequest.IsSetDeliveryOptions: Boolean;
begin
  Result := FDeliveryOptions <> nil;
end;

function TCreateConfigurationSetRequest.GetReputationOptions: TReputationOptions;
begin
  Result := FReputationOptions;
end;

procedure TCreateConfigurationSetRequest.SetReputationOptions(const Value: TReputationOptions);
begin
  if FReputationOptions <> Value then
  begin
    if not KeepReputationOptions then
      FReputationOptions.Free;
    FReputationOptions := Value;
  end;
end;

function TCreateConfigurationSetRequest.GetKeepReputationOptions: Boolean;
begin
  Result := FKeepReputationOptions;
end;

procedure TCreateConfigurationSetRequest.SetKeepReputationOptions(const Value: Boolean);
begin
  FKeepReputationOptions := Value;
end;

function TCreateConfigurationSetRequest.IsSetReputationOptions: Boolean;
begin
  Result := FReputationOptions <> nil;
end;

function TCreateConfigurationSetRequest.GetSendingOptions: TSendingOptions;
begin
  Result := FSendingOptions;
end;

procedure TCreateConfigurationSetRequest.SetSendingOptions(const Value: TSendingOptions);
begin
  if FSendingOptions <> Value then
  begin
    if not KeepSendingOptions then
      FSendingOptions.Free;
    FSendingOptions := Value;
  end;
end;

function TCreateConfigurationSetRequest.GetKeepSendingOptions: Boolean;
begin
  Result := FKeepSendingOptions;
end;

procedure TCreateConfigurationSetRequest.SetKeepSendingOptions(const Value: Boolean);
begin
  FKeepSendingOptions := Value;
end;

function TCreateConfigurationSetRequest.IsSetSendingOptions: Boolean;
begin
  Result := FSendingOptions <> nil;
end;

function TCreateConfigurationSetRequest.GetSuppressionOptions: TSuppressionOptions;
begin
  Result := FSuppressionOptions;
end;

procedure TCreateConfigurationSetRequest.SetSuppressionOptions(const Value: TSuppressionOptions);
begin
  if FSuppressionOptions <> Value then
  begin
    if not KeepSuppressionOptions then
      FSuppressionOptions.Free;
    FSuppressionOptions := Value;
  end;
end;

function TCreateConfigurationSetRequest.GetKeepSuppressionOptions: Boolean;
begin
  Result := FKeepSuppressionOptions;
end;

procedure TCreateConfigurationSetRequest.SetKeepSuppressionOptions(const Value: Boolean);
begin
  FKeepSuppressionOptions := Value;
end;

function TCreateConfigurationSetRequest.IsSetSuppressionOptions: Boolean;
begin
  Result := FSuppressionOptions <> nil;
end;

function TCreateConfigurationSetRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateConfigurationSetRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateConfigurationSetRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateConfigurationSetRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateConfigurationSetRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TCreateConfigurationSetRequest.GetTrackingOptions: TTrackingOptions;
begin
  Result := FTrackingOptions;
end;

procedure TCreateConfigurationSetRequest.SetTrackingOptions(const Value: TTrackingOptions);
begin
  if FTrackingOptions <> Value then
  begin
    if not KeepTrackingOptions then
      FTrackingOptions.Free;
    FTrackingOptions := Value;
  end;
end;

function TCreateConfigurationSetRequest.GetKeepTrackingOptions: Boolean;
begin
  Result := FKeepTrackingOptions;
end;

procedure TCreateConfigurationSetRequest.SetKeepTrackingOptions(const Value: Boolean);
begin
  FKeepTrackingOptions := Value;
end;

function TCreateConfigurationSetRequest.IsSetTrackingOptions: Boolean;
begin
  Result := FTrackingOptions <> nil;
end;

end.
