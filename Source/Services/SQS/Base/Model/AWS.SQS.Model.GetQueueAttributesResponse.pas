unit AWS.SQS.Model.GetQueueAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetQueueAttributesResponse = class;
  
  IGetQueueAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function Obj: TGetQueueAttributesResponse;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
  TGetQueueAttributesResponse = class(TAmazonWebServiceResponse, IGetQueueAttributesResponse)
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetQueueAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
implementation

{ TGetQueueAttributesResponse }

constructor TGetQueueAttributesResponse.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TGetQueueAttributesResponse.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TGetQueueAttributesResponse.Obj: TGetQueueAttributesResponse;
begin
  Result := Self;
end;

function TGetQueueAttributesResponse.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TGetQueueAttributesResponse.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TGetQueueAttributesResponse.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TGetQueueAttributesResponse.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TGetQueueAttributesResponse.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
