unit AWS.SESv2.Model.ListImportJobsRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TListImportJobsRequest = class;
  
  IListImportJobsRequest = interface
    function GetImportDestinationType: TImportDestinationType;
    procedure SetImportDestinationType(const Value: TImportDestinationType);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function Obj: TListImportJobsRequest;
    function IsSetImportDestinationType: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property ImportDestinationType: TImportDestinationType read GetImportDestinationType write SetImportDestinationType;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
  TListImportJobsRequest = class(TAmazonSimpleEmailServiceV2Request, IListImportJobsRequest)
  strict private
    FImportDestinationType: Nullable<TImportDestinationType>;
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    function GetImportDestinationType: TImportDestinationType;
    procedure SetImportDestinationType(const Value: TImportDestinationType);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
  strict protected
    function Obj: TListImportJobsRequest;
  public
    function IsSetImportDestinationType: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    property ImportDestinationType: TImportDestinationType read GetImportDestinationType write SetImportDestinationType;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
  end;
  
implementation

{ TListImportJobsRequest }

function TListImportJobsRequest.Obj: TListImportJobsRequest;
begin
  Result := Self;
end;

function TListImportJobsRequest.GetImportDestinationType: TImportDestinationType;
begin
  Result := FImportDestinationType.ValueOrDefault;
end;

procedure TListImportJobsRequest.SetImportDestinationType(const Value: TImportDestinationType);
begin
  FImportDestinationType := Value;
end;

function TListImportJobsRequest.IsSetImportDestinationType: Boolean;
begin
  Result := FImportDestinationType.HasValue;
end;

function TListImportJobsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListImportJobsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListImportJobsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListImportJobsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TListImportJobsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TListImportJobsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

end.
