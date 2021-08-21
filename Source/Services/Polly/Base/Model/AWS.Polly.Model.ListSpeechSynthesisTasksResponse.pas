unit AWS.Polly.Model.ListSpeechSynthesisTasksResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Polly.Model.SynthesisTask;

type
  TListSpeechSynthesisTasksResponse = class;
  
  IListSpeechSynthesisTasksResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSynthesisTasks: TObjectList<TSynthesisTask>;
    procedure SetSynthesisTasks(const Value: TObjectList<TSynthesisTask>);
    function Obj: TListSpeechSynthesisTasksResponse;
    function IsSetNextToken: Boolean;
    function IsSetSynthesisTasks: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property SynthesisTasks: TObjectList<TSynthesisTask> read GetSynthesisTasks write SetSynthesisTasks;
  end;
  
  TListSpeechSynthesisTasksResponse = class(TAmazonWebServiceResponse, IListSpeechSynthesisTasksResponse)
  strict private
    FNextToken: Nullable<string>;
    FSynthesisTasks: TObjectList<TSynthesisTask>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSynthesisTasks: TObjectList<TSynthesisTask>;
    procedure SetSynthesisTasks(const Value: TObjectList<TSynthesisTask>);
  strict protected
    function Obj: TListSpeechSynthesisTasksResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSynthesisTasks: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property SynthesisTasks: TObjectList<TSynthesisTask> read GetSynthesisTasks write SetSynthesisTasks;
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
    FSynthesisTasks.Free;
    FSynthesisTasks := Value;
  end;
end;

function TListSpeechSynthesisTasksResponse.IsSetSynthesisTasks: Boolean;
begin
  Result := (FSynthesisTasks <> nil) and (FSynthesisTasks.Count > 0);
end;

end.
