unit AWS.Rekognition.Model.HumanLoopQuotaExceededException;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Exception;

type
  EHumanLoopQuotaExceededException = class(EAmazonRekognitionException)
  strict private
    FQuotaCode: Nullable<string>;
    FResourceType: Nullable<string>;
    FServiceCode: Nullable<string>;
    function GetQuotaCode: string;
    procedure SetQuotaCode(const Value: string);
    function GetResourceType: string;
    procedure SetResourceType(const Value: string);
    function GetServiceCode: string;
    procedure SetServiceCode(const Value: string);
  public
    function IsSetQuotaCode: Boolean;
    function IsSetResourceType: Boolean;
    function IsSetServiceCode: Boolean;
    property QuotaCode: string read GetQuotaCode write SetQuotaCode;
    property ResourceType: string read GetResourceType write SetResourceType;
    property ServiceCode: string read GetServiceCode write SetServiceCode;
  end;
  
implementation

{ EHumanLoopQuotaExceededException }

function EHumanLoopQuotaExceededException.GetQuotaCode: string;
begin
  Result := FQuotaCode.ValueOrDefault;
end;

procedure EHumanLoopQuotaExceededException.SetQuotaCode(const Value: string);
begin
  FQuotaCode := Value;
end;

function EHumanLoopQuotaExceededException.IsSetQuotaCode: Boolean;
begin
  Result := FQuotaCode.HasValue;
end;

function EHumanLoopQuotaExceededException.GetResourceType: string;
begin
  Result := FResourceType.ValueOrDefault;
end;

procedure EHumanLoopQuotaExceededException.SetResourceType(const Value: string);
begin
  FResourceType := Value;
end;

function EHumanLoopQuotaExceededException.IsSetResourceType: Boolean;
begin
  Result := FResourceType.HasValue;
end;

function EHumanLoopQuotaExceededException.GetServiceCode: string;
begin
  Result := FServiceCode.ValueOrDefault;
end;

procedure EHumanLoopQuotaExceededException.SetServiceCode(const Value: string);
begin
  FServiceCode := Value;
end;

function EHumanLoopQuotaExceededException.IsSetServiceCode: Boolean;
begin
  Result := FServiceCode.HasValue;
end;

end.
