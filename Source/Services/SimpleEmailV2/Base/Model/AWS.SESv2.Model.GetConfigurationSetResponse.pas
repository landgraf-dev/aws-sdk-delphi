unit AWS.SESv2.Model.GetConfigurationSetResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SESv2.Model.DeliveryOptions, 
  AWS.SESv2.Model.ReputationOptions, 
  AWS.SESv2.Model.SendingOptions, 
  AWS.SESv2.Model.SuppressionOptions, 
  AWS.SESv2.Model.Tag, 
  AWS.SESv2.Model.TrackingOptions;

type
  TGetConfigurationSetResponse = class;
  
  IGetConfigurationSetResponse = interface(IAmazonWebServiceResponse)
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
    function Obj: TGetConfigurationSetResponse;
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
  
  TGetConfigurationSetResponse = class(TAmazonWebServiceResponse, IGetConfigurationSetResponse)
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
    function Obj: TGetConfigurationSetResponse;
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

{ TGetConfigurationSetResponse }

constructor TGetConfigurationSetResponse.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TGetConfigurationSetResponse.Destroy;
begin
  TrackingOptions := nil;
  Tags := nil;
  SuppressionOptions := nil;
  SendingOptions := nil;
  ReputationOptions := nil;
  DeliveryOptions := nil;
  inherited;
end;

function TGetConfigurationSetResponse.Obj: TGetConfigurationSetResponse;
begin
  Result := Self;
end;

function TGetConfigurationSetResponse.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TGetConfigurationSetResponse.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TGetConfigurationSetResponse.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TGetConfigurationSetResponse.GetDeliveryOptions: TDeliveryOptions;
begin
  Result := FDeliveryOptions;
end;

procedure TGetConfigurationSetResponse.SetDeliveryOptions(const Value: TDeliveryOptions);
begin
  if FDeliveryOptions <> Value then
  begin
    if not KeepDeliveryOptions then
      FDeliveryOptions.Free;
    FDeliveryOptions := Value;
  end;
end;

function TGetConfigurationSetResponse.GetKeepDeliveryOptions: Boolean;
begin
  Result := FKeepDeliveryOptions;
end;

procedure TGetConfigurationSetResponse.SetKeepDeliveryOptions(const Value: Boolean);
begin
  FKeepDeliveryOptions := Value;
end;

function TGetConfigurationSetResponse.IsSetDeliveryOptions: Boolean;
begin
  Result := FDeliveryOptions <> nil;
end;

function TGetConfigurationSetResponse.GetReputationOptions: TReputationOptions;
begin
  Result := FReputationOptions;
end;

procedure TGetConfigurationSetResponse.SetReputationOptions(const Value: TReputationOptions);
begin
  if FReputationOptions <> Value then
  begin
    if not KeepReputationOptions then
      FReputationOptions.Free;
    FReputationOptions := Value;
  end;
end;

function TGetConfigurationSetResponse.GetKeepReputationOptions: Boolean;
begin
  Result := FKeepReputationOptions;
end;

procedure TGetConfigurationSetResponse.SetKeepReputationOptions(const Value: Boolean);
begin
  FKeepReputationOptions := Value;
end;

function TGetConfigurationSetResponse.IsSetReputationOptions: Boolean;
begin
  Result := FReputationOptions <> nil;
end;

function TGetConfigurationSetResponse.GetSendingOptions: TSendingOptions;
begin
  Result := FSendingOptions;
end;

procedure TGetConfigurationSetResponse.SetSendingOptions(const Value: TSendingOptions);
begin
  if FSendingOptions <> Value then
  begin
    if not KeepSendingOptions then
      FSendingOptions.Free;
    FSendingOptions := Value;
  end;
end;

function TGetConfigurationSetResponse.GetKeepSendingOptions: Boolean;
begin
  Result := FKeepSendingOptions;
end;

procedure TGetConfigurationSetResponse.SetKeepSendingOptions(const Value: Boolean);
begin
  FKeepSendingOptions := Value;
end;

function TGetConfigurationSetResponse.IsSetSendingOptions: Boolean;
begin
  Result := FSendingOptions <> nil;
end;

function TGetConfigurationSetResponse.GetSuppressionOptions: TSuppressionOptions;
begin
  Result := FSuppressionOptions;
end;

procedure TGetConfigurationSetResponse.SetSuppressionOptions(const Value: TSuppressionOptions);
begin
  if FSuppressionOptions <> Value then
  begin
    if not KeepSuppressionOptions then
      FSuppressionOptions.Free;
    FSuppressionOptions := Value;
  end;
end;

function TGetConfigurationSetResponse.GetKeepSuppressionOptions: Boolean;
begin
  Result := FKeepSuppressionOptions;
end;

procedure TGetConfigurationSetResponse.SetKeepSuppressionOptions(const Value: Boolean);
begin
  FKeepSuppressionOptions := Value;
end;

function TGetConfigurationSetResponse.IsSetSuppressionOptions: Boolean;
begin
  Result := FSuppressionOptions <> nil;
end;

function TGetConfigurationSetResponse.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TGetConfigurationSetResponse.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TGetConfigurationSetResponse.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TGetConfigurationSetResponse.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TGetConfigurationSetResponse.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TGetConfigurationSetResponse.GetTrackingOptions: TTrackingOptions;
begin
  Result := FTrackingOptions;
end;

procedure TGetConfigurationSetResponse.SetTrackingOptions(const Value: TTrackingOptions);
begin
  if FTrackingOptions <> Value then
  begin
    if not KeepTrackingOptions then
      FTrackingOptions.Free;
    FTrackingOptions := Value;
  end;
end;

function TGetConfigurationSetResponse.GetKeepTrackingOptions: Boolean;
begin
  Result := FKeepTrackingOptions;
end;

procedure TGetConfigurationSetResponse.SetKeepTrackingOptions(const Value: Boolean);
begin
  FKeepTrackingOptions := Value;
end;

function TGetConfigurationSetResponse.IsSetTrackingOptions: Boolean;
begin
  Result := FTrackingOptions <> nil;
end;

end.
