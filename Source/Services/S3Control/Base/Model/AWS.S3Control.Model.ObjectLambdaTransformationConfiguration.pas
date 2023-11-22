unit AWS.S3Control.Model.ObjectLambdaTransformationConfiguration;

interface

uses
  System.Generics.Collections, 
  AWS.S3Control.Model.ObjectLambdaContentTransformation;

type
  TObjectLambdaTransformationConfiguration = class;
  
  IObjectLambdaTransformationConfiguration = interface
    function GetActions: TList<string>;
    procedure SetActions(const Value: TList<string>);
    function GetKeepActions: Boolean;
    procedure SetKeepActions(const Value: Boolean);
    function GetContentTransformation: TObjectLambdaContentTransformation;
    procedure SetContentTransformation(const Value: TObjectLambdaContentTransformation);
    function GetKeepContentTransformation: Boolean;
    procedure SetKeepContentTransformation(const Value: Boolean);
    function Obj: TObjectLambdaTransformationConfiguration;
    function IsSetActions: Boolean;
    function IsSetContentTransformation: Boolean;
    property Actions: TList<string> read GetActions write SetActions;
    property KeepActions: Boolean read GetKeepActions write SetKeepActions;
    property ContentTransformation: TObjectLambdaContentTransformation read GetContentTransformation write SetContentTransformation;
    property KeepContentTransformation: Boolean read GetKeepContentTransformation write SetKeepContentTransformation;
  end;
  
  TObjectLambdaTransformationConfiguration = class
  strict private
    FActions: TList<string>;
    FKeepActions: Boolean;
    FContentTransformation: TObjectLambdaContentTransformation;
    FKeepContentTransformation: Boolean;
    function GetActions: TList<string>;
    procedure SetActions(const Value: TList<string>);
    function GetKeepActions: Boolean;
    procedure SetKeepActions(const Value: Boolean);
    function GetContentTransformation: TObjectLambdaContentTransformation;
    procedure SetContentTransformation(const Value: TObjectLambdaContentTransformation);
    function GetKeepContentTransformation: Boolean;
    procedure SetKeepContentTransformation(const Value: Boolean);
  strict protected
    function Obj: TObjectLambdaTransformationConfiguration;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetActions: Boolean;
    function IsSetContentTransformation: Boolean;
    property Actions: TList<string> read GetActions write SetActions;
    property KeepActions: Boolean read GetKeepActions write SetKeepActions;
    property ContentTransformation: TObjectLambdaContentTransformation read GetContentTransformation write SetContentTransformation;
    property KeepContentTransformation: Boolean read GetKeepContentTransformation write SetKeepContentTransformation;
  end;
  
implementation

{ TObjectLambdaTransformationConfiguration }

constructor TObjectLambdaTransformationConfiguration.Create;
begin
  inherited;
  FActions := TList<string>.Create;
end;

destructor TObjectLambdaTransformationConfiguration.Destroy;
begin
  ContentTransformation := nil;
  Actions := nil;
  inherited;
end;

function TObjectLambdaTransformationConfiguration.Obj: TObjectLambdaTransformationConfiguration;
begin
  Result := Self;
end;

function TObjectLambdaTransformationConfiguration.GetActions: TList<string>;
begin
  Result := FActions;
end;

procedure TObjectLambdaTransformationConfiguration.SetActions(const Value: TList<string>);
begin
  if FActions <> Value then
  begin
    if not KeepActions then
      FActions.Free;
    FActions := Value;
  end;
end;

function TObjectLambdaTransformationConfiguration.GetKeepActions: Boolean;
begin
  Result := FKeepActions;
end;

procedure TObjectLambdaTransformationConfiguration.SetKeepActions(const Value: Boolean);
begin
  FKeepActions := Value;
end;

function TObjectLambdaTransformationConfiguration.IsSetActions: Boolean;
begin
  Result := (FActions <> nil) and (FActions.Count > 0);
end;

function TObjectLambdaTransformationConfiguration.GetContentTransformation: TObjectLambdaContentTransformation;
begin
  Result := FContentTransformation;
end;

procedure TObjectLambdaTransformationConfiguration.SetContentTransformation(const Value: TObjectLambdaContentTransformation);
begin
  if FContentTransformation <> Value then
  begin
    if not KeepContentTransformation then
      FContentTransformation.Free;
    FContentTransformation := Value;
  end;
end;

function TObjectLambdaTransformationConfiguration.GetKeepContentTransformation: Boolean;
begin
  Result := FKeepContentTransformation;
end;

procedure TObjectLambdaTransformationConfiguration.SetKeepContentTransformation(const Value: Boolean);
begin
  FKeepContentTransformation := Value;
end;

function TObjectLambdaTransformationConfiguration.IsSetContentTransformation: Boolean;
begin
  Result := FContentTransformation <> nil;
end;

end.
