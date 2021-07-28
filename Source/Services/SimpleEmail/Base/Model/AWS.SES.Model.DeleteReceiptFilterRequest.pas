unit AWS.SES.Model.DeleteReceiptFilterRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDeleteReceiptFilterRequest = class;
  
  IDeleteReceiptFilterRequest = interface
    function GetFilterName: string;
    procedure SetFilterName(const Value: string);
    function Obj: TDeleteReceiptFilterRequest;
    function IsSetFilterName: Boolean;
    property FilterName: string read GetFilterName write SetFilterName;
  end;
  
  TDeleteReceiptFilterRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteReceiptFilterRequest)
  strict private
    FFilterName: Nullable<string>;
    function GetFilterName: string;
    procedure SetFilterName(const Value: string);
  strict protected
    function Obj: TDeleteReceiptFilterRequest;
  public
    function IsSetFilterName: Boolean;
    property FilterName: string read GetFilterName write SetFilterName;
  end;
  
implementation

{ TDeleteReceiptFilterRequest }

function TDeleteReceiptFilterRequest.Obj: TDeleteReceiptFilterRequest;
begin
  Result := Self;
end;

function TDeleteReceiptFilterRequest.GetFilterName: string;
begin
  Result := FFilterName.ValueOrDefault;
end;

procedure TDeleteReceiptFilterRequest.SetFilterName(const Value: string);
begin
  FFilterName := Value;
end;

function TDeleteReceiptFilterRequest.IsSetFilterName: Boolean;
begin
  Result := FFilterName.HasValue;
end;

end.
