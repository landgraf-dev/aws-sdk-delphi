unit AWS.Rekognition.Model.DetectProtectiveEquipmentRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.Image, 
  AWS.Rekognition.Model.ProtectiveEquipmentSummarizationAttributes;

type
  TDetectProtectiveEquipmentRequest = class;
  
  IDetectProtectiveEquipmentRequest = interface
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetSummarizationAttributes: TProtectiveEquipmentSummarizationAttributes;
    procedure SetSummarizationAttributes(const Value: TProtectiveEquipmentSummarizationAttributes);
    function GetKeepSummarizationAttributes: Boolean;
    procedure SetKeepSummarizationAttributes(const Value: Boolean);
    function Obj: TDetectProtectiveEquipmentRequest;
    function IsSetImage: Boolean;
    function IsSetSummarizationAttributes: Boolean;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property SummarizationAttributes: TProtectiveEquipmentSummarizationAttributes read GetSummarizationAttributes write SetSummarizationAttributes;
    property KeepSummarizationAttributes: Boolean read GetKeepSummarizationAttributes write SetKeepSummarizationAttributes;
  end;
  
  TDetectProtectiveEquipmentRequest = class(TAmazonRekognitionRequest, IDetectProtectiveEquipmentRequest)
  strict private
    FImage: TImage;
    FKeepImage: Boolean;
    FSummarizationAttributes: TProtectiveEquipmentSummarizationAttributes;
    FKeepSummarizationAttributes: Boolean;
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function GetSummarizationAttributes: TProtectiveEquipmentSummarizationAttributes;
    procedure SetSummarizationAttributes(const Value: TProtectiveEquipmentSummarizationAttributes);
    function GetKeepSummarizationAttributes: Boolean;
    procedure SetKeepSummarizationAttributes(const Value: Boolean);
  strict protected
    function Obj: TDetectProtectiveEquipmentRequest;
  public
    destructor Destroy; override;
    function IsSetImage: Boolean;
    function IsSetSummarizationAttributes: Boolean;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
    property SummarizationAttributes: TProtectiveEquipmentSummarizationAttributes read GetSummarizationAttributes write SetSummarizationAttributes;
    property KeepSummarizationAttributes: Boolean read GetKeepSummarizationAttributes write SetKeepSummarizationAttributes;
  end;
  
implementation

{ TDetectProtectiveEquipmentRequest }

destructor TDetectProtectiveEquipmentRequest.Destroy;
begin
  SummarizationAttributes := nil;
  Image := nil;
  inherited;
end;

function TDetectProtectiveEquipmentRequest.Obj: TDetectProtectiveEquipmentRequest;
begin
  Result := Self;
end;

function TDetectProtectiveEquipmentRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TDetectProtectiveEquipmentRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TDetectProtectiveEquipmentRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TDetectProtectiveEquipmentRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TDetectProtectiveEquipmentRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

function TDetectProtectiveEquipmentRequest.GetSummarizationAttributes: TProtectiveEquipmentSummarizationAttributes;
begin
  Result := FSummarizationAttributes;
end;

procedure TDetectProtectiveEquipmentRequest.SetSummarizationAttributes(const Value: TProtectiveEquipmentSummarizationAttributes);
begin
  if FSummarizationAttributes <> Value then
  begin
    if not KeepSummarizationAttributes then
      FSummarizationAttributes.Free;
    FSummarizationAttributes := Value;
  end;
end;

function TDetectProtectiveEquipmentRequest.GetKeepSummarizationAttributes: Boolean;
begin
  Result := FKeepSummarizationAttributes;
end;

procedure TDetectProtectiveEquipmentRequest.SetKeepSummarizationAttributes(const Value: Boolean);
begin
  FKeepSummarizationAttributes := Value;
end;

function TDetectProtectiveEquipmentRequest.IsSetSummarizationAttributes: Boolean;
begin
  Result := FSummarizationAttributes <> nil;
end;

end.
