unit AWS.SSM.Model.ListResourceDataSyncRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TListResourceDataSyncRequest = class;
  
  IListResourceDataSyncRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
    function Obj: TListResourceDataSyncRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSyncType: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
  TListResourceDataSyncRequest = class(TAmazonSimpleSystemsManagementRequest, IListResourceDataSyncRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FSyncType: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
  strict protected
    function Obj: TListResourceDataSyncRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSyncType: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
implementation

{ TListResourceDataSyncRequest }

function TListResourceDataSyncRequest.Obj: TListResourceDataSyncRequest;
begin
  Result := Self;
end;

function TListResourceDataSyncRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListResourceDataSyncRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListResourceDataSyncRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListResourceDataSyncRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListResourceDataSyncRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListResourceDataSyncRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListResourceDataSyncRequest.GetSyncType: string;
begin
  Result := FSyncType.ValueOrDefault;
end;

procedure TListResourceDataSyncRequest.SetSyncType(const Value: string);
begin
  FSyncType := Value;
end;

function TListResourceDataSyncRequest.IsSetSyncType: Boolean;
begin
  Result := FSyncType.HasValue;
end;

end.
