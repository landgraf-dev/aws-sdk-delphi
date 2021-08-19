unit AWS.Polly.Model.ListSpeechSynthesisTasksRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Model.Request, 
  AWS.Polly.Enums;

type
  TListSpeechSynthesisTasksRequest = class;
  
  IListSpeechSynthesisTasksRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTaskStatus;
    procedure SetStatus(const Value: TTaskStatus);
    function Obj: TListSpeechSynthesisTasksRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTaskStatus read GetStatus write SetStatus;
  end;
  
  TListSpeechSynthesisTasksRequest = class(TAmazonPollyRequest, IListSpeechSynthesisTasksRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FStatus: Nullable<TTaskStatus>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TTaskStatus;
    procedure SetStatus(const Value: TTaskStatus);
  strict protected
    function Obj: TListSpeechSynthesisTasksRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TTaskStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TListSpeechSynthesisTasksRequest }

function TListSpeechSynthesisTasksRequest.Obj: TListSpeechSynthesisTasksRequest;
begin
  Result := Self;
end;

function TListSpeechSynthesisTasksRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListSpeechSynthesisTasksRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListSpeechSynthesisTasksRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListSpeechSynthesisTasksRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSpeechSynthesisTasksRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSpeechSynthesisTasksRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListSpeechSynthesisTasksRequest.GetStatus: TTaskStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListSpeechSynthesisTasksRequest.SetStatus(const Value: TTaskStatus);
begin
  FStatus := Value;
end;

function TListSpeechSynthesisTasksRequest.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
