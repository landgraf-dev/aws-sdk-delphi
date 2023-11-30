unit AWS.Polly.Model.ListSpeechSynthesisTasksResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Polly.Model.SynthesisTask;

type
  TListSpeechSynthesisTasksResponse = class;
  
  IListSpeechSynthesisTasksResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSynthesisTasks: TObjectList<TSynthesisTask>;
    procedure SetSynthesisTasks(const Value: TObjectList<TSynthesisTask>);
    function GetKeepSynthesisTasks: Boolean;
    procedure SetKeepSynthesisTasks(const Value: Boolean);
    function Obj: TListSpeechSynthesisTasksResponse;
    function IsSetNextToken: Boolean;
    function IsSetSynthesisTasks: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property SynthesisTasks: TObjectList<TSynthesisTask> read GetSynthesisTasks write SetSynthesisTasks;
    property KeepSynthesisTasks: Boolean read GetKeepSynthesisTasks write SetKeepSynthesisTasks;
  end;
  
  TListSpeechSynthesisTasksResponse = class(TAmazonWebServiceResponse, IListSpeechSynthesisTasksResponse)
  strict private
    FNextToken: Nullable<string>;
    FSynthesisTasks: TObjectList<TSynthesisTask>;
    FKeepSynthesisTasks: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSynthesisTasks: TObjectList<TSynthesisTask>;
    procedure SetSynthesisTasks(const Value: TObjectList<TSynthesisTask>);
    function GetKeepSynthesisTasks: Boolean;
    procedure SetKeepSynthesisTasks(const Value: Boolean);
  strict protected
    function Obj: TListSpeechSynthesisTasksResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSynthesisTasks: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property SynthesisTasks: TObjectList<TSynthesisTask> read GetSynthesisTasks write SetSynthesisTasks;
    property KeepSynthesisTasks: Boolean read GetKeepSynthesisTasks write SetKeepSynthesisTasks;
  end;
  
implementation

{ TListSpeechSynthesisTasksResponse }

constructor TListSpeechSynthesisTasksResponse.Create;
begin
  inherited;
  FSynthesisTasks := TObjectList<TSynthesisTask>.Create;
end;

destructor TListSpeechSynthesisTasksResponse.Destroy;
begin
  SynthesisTasks := nil;
  inherited;
end;

function TListSpeechSynthesisTasksResponse.Obj: TListSpeechSynthesisTasksResponse;
begin
  Result := Self;
end;

function TListSpeechSynthesisTasksResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSpeechSynthesisTasksResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSpeechSynthesisTasksResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListSpeechSynthesisTasksResponse.GetSynthesisTasks: TObjectList<TSynthesisTask>;
begin
  Result := FSynthesisTasks;
end;

procedure TListSpeechSynthesisTasksResponse.SetSynthesisTasks(const Value: TObjectList<TSynthesisTask>);
begin
  if FSynthesisTasks <> Value then
  begin
    if not KeepSynthesisTasks then
      FSynthesisTasks.Free;
    FSynthesisTasks := Value;
  end;
end;

function TListSpeechSynthesisTasksResponse.GetKeepSynthesisTasks: Boolean;
begin
  Result := FKeepSynthesisTasks;
end;

procedure TListSpeechSynthesisTasksResponse.SetKeepSynthesisTasks(const Value: Boolean);
begin
  FKeepSynthesisTasks := Value;
end;

function TListSpeechSynthesisTasksResponse.IsSetSynthesisTasks: Boolean;
begin
  Result := (FSynthesisTasks <> nil) and (FSynthesisTasks.Count > 0);
end;

end.
