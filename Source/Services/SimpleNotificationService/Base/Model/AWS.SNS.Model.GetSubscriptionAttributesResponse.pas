unit AWS.SNS.Model.GetSubscriptionAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetSubscriptionAttributesResponse = class;
  
  IGetSubscriptionAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function Obj: TGetSubscriptionAttributesResponse;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
  TGetSubscriptionAttributesResponse = class(TAmazonWebServiceResponse, IGetSubscriptionAttributesResponse)
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetSubscriptionAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
implementation

{ TGetSubscriptionAttributesResponse }

constructor TGetSubscriptionAttributesResponse.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TGetSubscriptionAttributesResponse.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TGetSubscriptionAttributesResponse.Obj: TGetSubscriptionAttributesResponse;
begin
  Result := Self;
end;

function TGetSubscriptionAttributesResponse.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TGetSubscriptionAttributesResponse.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TGetSubscriptionAttributesResponse.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TGetSubscriptionAttributesResponse.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TGetSubscriptionAttributesResponse.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
