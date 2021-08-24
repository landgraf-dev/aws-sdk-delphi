unit AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Model.Request;

type
  TPutConfigurationSetSuppressionOptionsRequest = class;
  
  IPutConfigurationSetSuppressionOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetSuppressedReasons: TList<string>;
    procedure SetSuppressedReasons(const Value: TList<string>);
    function GetKeepSuppressedReasons: Boolean;
    procedure SetKeepSuppressedReasons(const Value: Boolean);
    function Obj: TPutConfigurationSetSuppressionOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetSuppressedReasons: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property SuppressedReasons: TList<string> read GetSuppressedReasons write SetSuppressedReasons;
    property KeepSuppressedReasons: Boolean read GetKeepSuppressedReasons write SetKeepSuppressedReasons;
  end;
  
  TPutConfigurationSetSuppressionOptionsRequest = class(TAmazonSimpleEmailServiceV2Request, IPutConfigurationSetSuppressionOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FSuppressedReasons: TList<string>;
    FKeepSuppressedReasons: Boolean;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetSuppressedReasons: TList<string>;
    procedure SetSuppressedReasons(const Value: TList<string>);
    function GetKeepSuppressedReasons: Boolean;
    procedure SetKeepSuppressedReasons(const Value: Boolean);
  strict protected
    function Obj: TPutConfigurationSetSuppressionOptionsRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetSuppressedReasons: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property SuppressedReasons: TList<string> read GetSuppressedReasons write SetSuppressedReasons;
    property KeepSuppressedReasons: Boolean read GetKeepSuppressedReasons write SetKeepSuppressedReasons;
  end;
  
implementation

{ TPutConfigurationSetSuppressionOptionsRequest }

constructor TPutConfigurationSetSuppressionOptionsRequest.Create;
begin
  inherited;
  FSuppressedReasons := TList<string>.Create;
end;

destructor TPutConfigurationSetSuppressionOptionsRequest.Destroy;
begin
  SuppressedReasons := nil;
  inherited;
end;

function TPutConfigurationSetSuppressionOptionsRequest.Obj: TPutConfigurationSetSuppressionOptionsRequest;
begin
  Result := Self;
end;

function TPutConfigurationSetSuppressionOptionsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TPutConfigurationSetSuppressionOptionsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TPutConfigurationSetSuppressionOptionsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TPutConfigurationSetSuppressionOptionsRequest.GetSuppressedReasons: TList<string>;
begin
  Result := FSuppressedReasons;
end;

procedure TPutConfigurationSetSuppressionOptionsRequest.SetSuppressedReasons(const Value: TList<string>);
begin
  if FSuppressedReasons <> Value then
  begin
    if not KeepSuppressedReasons then
      FSuppressedReasons.Free;
    FSuppressedReasons := Value;
  end;
end;

function TPutConfigurationSetSuppressionOptionsRequest.GetKeepSuppressedReasons: Boolean;
begin
  Result := FKeepSuppressedReasons;
end;

procedure TPutConfigurationSetSuppressionOptionsRequest.SetKeepSuppressedReasons(const Value: Boolean);
begin
  FKeepSuppressedReasons := Value;
end;

function TPutConfigurationSetSuppressionOptionsRequest.IsSetSuppressedReasons: Boolean;
begin
  Result := (FSuppressedReasons <> nil) and (FSuppressedReasons.Count > 0);
end;

end.
