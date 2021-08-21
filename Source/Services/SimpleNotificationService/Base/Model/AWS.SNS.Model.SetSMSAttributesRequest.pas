unit AWS.SNS.Model.SetSMSAttributesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SNS.Model.Request;

type
  TSetSMSAttributesRequest = class;
  
  ISetSMSAttributesRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function Obj: TSetSMSAttributesRequest;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
  TSetSMSAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, ISetSMSAttributesRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
  strict protected
    function Obj: TSetSMSAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
implementation

{ TSetSMSAttributesRequest }

constructor TSetSMSAttributesRequest.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TSetSMSAttributesRequest.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TSetSMSAttributesRequest.Obj: TSetSMSAttributesRequest;
begin
  Result := Self;
end;

function TSetSMSAttributesRequest.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TSetSMSAttributesRequest.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TSetSMSAttributesRequest.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TSetSMSAttributesRequest.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TSetSMSAttributesRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
