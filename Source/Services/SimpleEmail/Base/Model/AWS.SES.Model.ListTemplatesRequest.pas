unit AWS.SES.Model.ListTemplatesRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TListTemplatesRequest = class;
  
  IListTemplatesRequest = interface
    function GetMaxItems: Integer;
    procedure SetMaxItems(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListTemplatesRequest;
    function IsSetMaxItems: Boolean;
    function IsSetNextToken: Boolean;
    property MaxItems: Integer read GetMaxItems write SetMaxItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListTemplatesRequest = class(TAmazonSimpleEmailServiceRequest, IListTemplatesRequest)
  strict private
    FMaxItems: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxItems: Integer;
    procedure SetMaxItems(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListTemplatesRequest;
  public
    function IsSetMaxItems: Boolean;
    function IsSetNextToken: Boolean;
    property MaxItems: Integer read GetMaxItems write SetMaxItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListTemplatesRequest }

function TListTemplatesRequest.Obj: TListTemplatesRequest;
begin
  Result := Self;
end;

function TListTemplatesRequest.GetMaxItems: Integer;
begin
  Result := FMaxItems.ValueOrDefault;
end;

procedure TListTemplatesRequest.SetMaxItems(const Value: Integer);
begin
  FMaxItems := Value;
end;

function TListTemplatesRequest.IsSetMaxItems: Boolean;
begin
  Result := FMaxItems.HasValue;
end;

function TListTemplatesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTemplatesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTemplatesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
