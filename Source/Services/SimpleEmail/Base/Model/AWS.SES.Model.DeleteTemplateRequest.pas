unit AWS.SES.Model.DeleteTemplateRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TDeleteTemplateRequest = class;
  
  IDeleteTemplateRequest = interface
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TDeleteTemplateRequest;
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TDeleteTemplateRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteTemplateRequest)
  strict private
    FTemplateName: Nullable<string>;
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TDeleteTemplateRequest;
  public
    function IsSetTemplateName: Boolean;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TDeleteTemplateRequest }

function TDeleteTemplateRequest.Obj: TDeleteTemplateRequest;
begin
  Result := Self;
end;

function TDeleteTemplateRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TDeleteTemplateRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TDeleteTemplateRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
