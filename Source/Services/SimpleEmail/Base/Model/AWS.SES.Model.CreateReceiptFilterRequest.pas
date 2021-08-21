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
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function Obj: TCreateReceiptFilterRequest;
    function IsSetFilter: Boolean;
    property Filter: TReceiptFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
  end;
  
  TCreateReceiptFilterRequest = class(TAmazonSimpleEmailServiceRequest, ICreateReceiptFilterRequest)
  strict private
    FFilter: TReceiptFilter;
    FKeepFilter: Boolean;
    function GetFilter: TReceiptFilter;
    procedure SetFilter(const Value: TReceiptFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
  strict protected
    function Obj: TCreateReceiptFilterRequest;
  public
    destructor Destroy; override;
    function IsSetFilter: Boolean;
    property Filter: TReceiptFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
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
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TCreateReceiptFilterRequest.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TCreateReceiptFilterRequest.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TCreateReceiptFilterRequest.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

end.
