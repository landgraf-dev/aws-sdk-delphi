unit AWS.SES.Model.ListReceiptFiltersResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ReceiptFilter;

type
  TListReceiptFiltersResponse = class;
  
  IListReceiptFiltersResponse = interface(IAmazonWebServiceResponse)
    function GetFilters: TObjectList<TReceiptFilter>;
    procedure SetFilters(const Value: TObjectList<TReceiptFilter>);
    function Obj: TListReceiptFiltersResponse;
    function IsSetFilters: Boolean;
    property Filters: TObjectList<TReceiptFilter> read GetFilters write SetFilters;
  end;
  
  TListReceiptFiltersResponse = class(TAmazonWebServiceResponse, IListReceiptFiltersResponse)
  strict private
    FFilters: TObjectList<TReceiptFilter>;
    function GetFilters: TObjectList<TReceiptFilter>;
    procedure SetFilters(const Value: TObjectList<TReceiptFilter>);
  strict protected
    function Obj: TListReceiptFiltersResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    property Filters: TObjectList<TReceiptFilter> read GetFilters write SetFilters;
  end;
  
implementation

{ TListReceiptFiltersResponse }

constructor TListReceiptFiltersResponse.Create;
begin
  inherited;
  FFilters := TObjectList<TReceiptFilter>.Create;
end;

destructor TListReceiptFiltersResponse.Destroy;
begin
  Filters := nil;
  inherited;
end;

function TListReceiptFiltersResponse.Obj: TListReceiptFiltersResponse;
begin
  Result := Self;
end;

function TListReceiptFiltersResponse.GetFilters: TObjectList<TReceiptFilter>;
begin
  Result := FFilters;
end;

procedure TListReceiptFiltersResponse.SetFilters(const Value: TObjectList<TReceiptFilter>);
begin
  if FFilters <> Value then
  begin
    FFilters.Free;
    FFilters := Value;
  end;
end;

function TListReceiptFiltersResponse.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

end.
