unit AWS.SES.Model.CreateReceiptFilterRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.SES.Model.ReceiptFilter;

type
  TCreateReceiptFilterRequest = class;
  
  ICreateReceiptFilterRequest = interface
    function GetFilter: TReceiptFilter;
    procedure SetFilter(const Value: TReceiptFilter);
    function Obj: TCreateReceiptFilterRequest;
    function IsSetFilter: Boolean;
    property Filter: TReceiptFilter read GetFilter write SetFilter;
  end;
  
  TCreateReceiptFilterRequest = class(TAmazonSimpleEmailServiceRequest, ICreateReceiptFilterRequest)
  strict private
    FFilter: TReceiptFilter;
    function GetFilter: TReceiptFilter;
    procedure SetFilter(const Value: TReceiptFilter);
  strict protected
    function Obj: TCreateReceiptFilterRequest;
  public
    destructor Destroy; override;
    function IsSetFilter: Boolean;
    property Filter: TReceiptFilter read GetFilter write SetFilter;
  end;
  
implementation

{ TCreateReceiptFilterRequest }

destructor TCreateReceiptFilterRequest.Destroy;
begin
  Filter := nil;
  inherited;
end;

function TCreateReceiptFilterRequest.Obj: TCreateReceiptFilterRequest;
begin
  Result := Self;
end;

function TCreateReceiptFilterRequest.GetFilter: TReceiptFilter;
begin
  Result := FFilter;
end;

procedure TCreateReceiptFilterRequest.SetFilter(const Value: TReceiptFilter);
begin
  if FFilter <> Value then
  begin
    FFilter.Free;
    FFilter := Value;
  end;
end;

function TCreateReceiptFilterRequest.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

end.
