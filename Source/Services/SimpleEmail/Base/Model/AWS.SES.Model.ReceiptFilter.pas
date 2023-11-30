unit AWS.SES.Model.ReceiptFilter;

interface

uses
  AWS.SES.Model.ReceiptIpFilter, 
  AWS.Nullable;

type
  TReceiptFilter = class;
  
  IReceiptFilter = interface
    function GetIpFilter: TReceiptIpFilter;
    procedure SetIpFilter(const Value: TReceiptIpFilter);
    function GetKeepIpFilter: Boolean;
    procedure SetKeepIpFilter(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function Obj: TReceiptFilter;
    function IsSetIpFilter: Boolean;
    function IsSetName: Boolean;
    property IpFilter: TReceiptIpFilter read GetIpFilter write SetIpFilter;
    property KeepIpFilter: Boolean read GetKeepIpFilter write SetKeepIpFilter;
    property Name: string read GetName write SetName;
  end;
  
  TReceiptFilter = class
  strict private
    FIpFilter: TReceiptIpFilter;
    FKeepIpFilter: Boolean;
    FName: Nullable<string>;
    function GetIpFilter: TReceiptIpFilter;
    procedure SetIpFilter(const Value: TReceiptIpFilter);
    function GetKeepIpFilter: Boolean;
    procedure SetKeepIpFilter(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
  strict protected
    function Obj: TReceiptFilter;
  public
    destructor Destroy; override;
    function IsSetIpFilter: Boolean;
    function IsSetName: Boolean;
    property IpFilter: TReceiptIpFilter read GetIpFilter write SetIpFilter;
    property KeepIpFilter: Boolean read GetKeepIpFilter write SetKeepIpFilter;
    property Name: string read GetName write SetName;
  end;
  
implementation

{ TReceiptFilter }

destructor TReceiptFilter.Destroy;
begin
  IpFilter := nil;
  inherited;
end;

function TReceiptFilter.Obj: TReceiptFilter;
begin
  Result := Self;
end;

function TReceiptFilter.GetIpFilter: TReceiptIpFilter;
begin
  Result := FIpFilter;
end;

procedure TReceiptFilter.SetIpFilter(const Value: TReceiptIpFilter);
begin
  if FIpFilter <> Value then
  begin
    if not KeepIpFilter then
      FIpFilter.Free;
    FIpFilter := Value;
  end;
end;

function TReceiptFilter.GetKeepIpFilter: Boolean;
begin
  Result := FKeepIpFilter;
end;

procedure TReceiptFilter.SetKeepIpFilter(const Value: Boolean);
begin
  FKeepIpFilter := Value;
end;

function TReceiptFilter.IsSetIpFilter: Boolean;
begin
  Result := FIpFilter <> nil;
end;

function TReceiptFilter.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TReceiptFilter.SetName(const Value: string);
begin
  FName := Value;
end;

function TReceiptFilter.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

end.
