unit AWS.SSM.Model.SendCommandResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.Command;

type
  TSendCommandResponse = class;
  
  ISendCommandResponse = interface(IAmazonWebServiceResponse)
    function GetCommand: TCommand;
    procedure SetCommand(const Value: TCommand);
    function GetKeepCommand: Boolean;
    procedure SetKeepCommand(const Value: Boolean);
    function Obj: TSendCommandResponse;
    function IsSetCommand: Boolean;
    property Command: TCommand read GetCommand write SetCommand;
    property KeepCommand: Boolean read GetKeepCommand write SetKeepCommand;
  end;
  
  TSendCommandResponse = class(TAmazonWebServiceResponse, ISendCommandResponse)
  strict private
    FCommand: TCommand;
    FKeepCommand: Boolean;
    function GetCommand: TCommand;
    procedure SetCommand(const Value: TCommand);
    function GetKeepCommand: Boolean;
    procedure SetKeepCommand(const Value: Boolean);
  strict protected
    function Obj: TSendCommandResponse;
  public
    destructor Destroy; override;
    function IsSetCommand: Boolean;
    property Command: TCommand read GetCommand write SetCommand;
    property KeepCommand: Boolean read GetKeepCommand write SetKeepCommand;
  end;
  
implementation

{ TSendCommandResponse }

destructor TSendCommandResponse.Destroy;
begin
  Command := nil;
  inherited;
end;

function TSendCommandResponse.Obj: TSendCommandResponse;
begin
  Result := Self;
end;

function TSendCommandResponse.GetCommand: TCommand;
begin
  Result := FCommand;
end;

procedure TSendCommandResponse.SetCommand(const Value: TCommand);
begin
  if FCommand <> Value then
  begin
    if not KeepCommand then
      FCommand.Free;
    FCommand := Value;
  end;
end;

function TSendCommandResponse.GetKeepCommand: Boolean;
begin
  Result := FKeepCommand;
end;

procedure TSendCommandResponse.SetKeepCommand(const Value: Boolean);
begin
  FKeepCommand := Value;
end;

function TSendCommandResponse.IsSetCommand: Boolean;
begin
  Result := FCommand <> nil;
end;

end.
