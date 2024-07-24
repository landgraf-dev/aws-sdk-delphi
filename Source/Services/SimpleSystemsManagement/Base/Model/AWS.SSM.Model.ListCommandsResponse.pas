unit AWS.SSM.Model.ListCommandsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.Command, 
  AWS.Nullable;

type
  TListCommandsResponse = class;
  
  IListCommandsResponse = interface(IAmazonWebServiceResponse)
    function GetCommands: TObjectList<TCommand>;
    procedure SetCommands(const Value: TObjectList<TCommand>);
    function GetKeepCommands: Boolean;
    procedure SetKeepCommands(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListCommandsResponse;
    function IsSetCommands: Boolean;
    function IsSetNextToken: Boolean;
    property Commands: TObjectList<TCommand> read GetCommands write SetCommands;
    property KeepCommands: Boolean read GetKeepCommands write SetKeepCommands;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCommandsResponse = class(TAmazonWebServiceResponse, IListCommandsResponse)
  strict private
    FCommands: TObjectList<TCommand>;
    FKeepCommands: Boolean;
    FNextToken: Nullable<string>;
    function GetCommands: TObjectList<TCommand>;
    procedure SetCommands(const Value: TObjectList<TCommand>);
    function GetKeepCommands: Boolean;
    procedure SetKeepCommands(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListCommandsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCommands: Boolean;
    function IsSetNextToken: Boolean;
    property Commands: TObjectList<TCommand> read GetCommands write SetCommands;
    property KeepCommands: Boolean read GetKeepCommands write SetKeepCommands;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCommandsResponse }

constructor TListCommandsResponse.Create;
begin
  inherited;
  FCommands := TObjectList<TCommand>.Create;
end;

destructor TListCommandsResponse.Destroy;
begin
  Commands := nil;
  inherited;
end;

function TListCommandsResponse.Obj: TListCommandsResponse;
begin
  Result := Self;
end;

function TListCommandsResponse.GetCommands: TObjectList<TCommand>;
begin
  Result := FCommands;
end;

procedure TListCommandsResponse.SetCommands(const Value: TObjectList<TCommand>);
begin
  if FCommands <> Value then
  begin
    if not KeepCommands then
      FCommands.Free;
    FCommands := Value;
  end;
end;

function TListCommandsResponse.GetKeepCommands: Boolean;
begin
  Result := FKeepCommands;
end;

procedure TListCommandsResponse.SetKeepCommands(const Value: Boolean);
begin
  FKeepCommands := Value;
end;

function TListCommandsResponse.IsSetCommands: Boolean;
begin
  Result := (FCommands <> nil) and (FCommands.Count > 0);
end;

function TListCommandsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCommandsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCommandsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
