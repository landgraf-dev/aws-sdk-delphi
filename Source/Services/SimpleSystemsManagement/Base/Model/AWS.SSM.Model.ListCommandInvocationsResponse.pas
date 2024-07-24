unit AWS.SSM.Model.ListCommandInvocationsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.CommandInvocation, 
  AWS.Nullable;

type
  TListCommandInvocationsResponse = class;
  
  IListCommandInvocationsResponse = interface(IAmazonWebServiceResponse)
    function GetCommandInvocations: TObjectList<TCommandInvocation>;
    procedure SetCommandInvocations(const Value: TObjectList<TCommandInvocation>);
    function GetKeepCommandInvocations: Boolean;
    procedure SetKeepCommandInvocations(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListCommandInvocationsResponse;
    function IsSetCommandInvocations: Boolean;
    function IsSetNextToken: Boolean;
    property CommandInvocations: TObjectList<TCommandInvocation> read GetCommandInvocations write SetCommandInvocations;
    property KeepCommandInvocations: Boolean read GetKeepCommandInvocations write SetKeepCommandInvocations;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCommandInvocationsResponse = class(TAmazonWebServiceResponse, IListCommandInvocationsResponse)
  strict private
    FCommandInvocations: TObjectList<TCommandInvocation>;
    FKeepCommandInvocations: Boolean;
    FNextToken: Nullable<string>;
    function GetCommandInvocations: TObjectList<TCommandInvocation>;
    procedure SetCommandInvocations(const Value: TObjectList<TCommandInvocation>);
    function GetKeepCommandInvocations: Boolean;
    procedure SetKeepCommandInvocations(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListCommandInvocationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCommandInvocations: Boolean;
    function IsSetNextToken: Boolean;
    property CommandInvocations: TObjectList<TCommandInvocation> read GetCommandInvocations write SetCommandInvocations;
    property KeepCommandInvocations: Boolean read GetKeepCommandInvocations write SetKeepCommandInvocations;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCommandInvocationsResponse }

constructor TListCommandInvocationsResponse.Create;
begin
  inherited;
  FCommandInvocations := TObjectList<TCommandInvocation>.Create;
end;

destructor TListCommandInvocationsResponse.Destroy;
begin
  CommandInvocations := nil;
  inherited;
end;

function TListCommandInvocationsResponse.Obj: TListCommandInvocationsResponse;
begin
  Result := Self;
end;

function TListCommandInvocationsResponse.GetCommandInvocations: TObjectList<TCommandInvocation>;
begin
  Result := FCommandInvocations;
end;

procedure TListCommandInvocationsResponse.SetCommandInvocations(const Value: TObjectList<TCommandInvocation>);
begin
  if FCommandInvocations <> Value then
  begin
    if not KeepCommandInvocations then
      FCommandInvocations.Free;
    FCommandInvocations := Value;
  end;
end;

function TListCommandInvocationsResponse.GetKeepCommandInvocations: Boolean;
begin
  Result := FKeepCommandInvocations;
end;

procedure TListCommandInvocationsResponse.SetKeepCommandInvocations(const Value: Boolean);
begin
  FKeepCommandInvocations := Value;
end;

function TListCommandInvocationsResponse.IsSetCommandInvocations: Boolean;
begin
  Result := (FCommandInvocations <> nil) and (FCommandInvocations.Count > 0);
end;

function TListCommandInvocationsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCommandInvocationsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCommandInvocationsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
