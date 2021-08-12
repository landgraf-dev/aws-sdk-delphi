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
    function Obj: TSetSMSAttributesRequest;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
  end;
  
  TSetSMSAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, ISetSMSAttributesRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
  strict protected
    function Obj: TSetSMSAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
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
  FAttributes.Free;
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
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TSetSMSAttributesRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
