unit AWS.SSM.Model.OpsItemInvalidParameterException;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Exception;

type
  EOpsItemInvalidParameterException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FParameterNames: TList<string>;
    FKeepParameterNames: Boolean;
    function GetParameterNames: TList<string>;
    procedure SetParameterNames(const Value: TList<string>);
    function GetKeepParameterNames: Boolean;
    procedure SetKeepParameterNames(const Value: Boolean);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function IsSetParameterNames: Boolean;
    property ParameterNames: TList<string> read GetParameterNames write SetParameterNames;
    property KeepParameterNames: Boolean read GetKeepParameterNames write SetKeepParameterNames;
  end;
  
implementation

{ EOpsItemInvalidParameterException }

procedure EOpsItemInvalidParameterException.AfterConstruction;
begin
  inherited;
  FParameterNames := TList<string>.Create;
end;

procedure EOpsItemInvalidParameterException.BeforeDestruction;
begin
  ParameterNames := nil;
  inherited;
end;

function EOpsItemInvalidParameterException.GetParameterNames: TList<string>;
begin
  Result := FParameterNames;
end;

procedure EOpsItemInvalidParameterException.SetParameterNames(const Value: TList<string>);
begin
  if FParameterNames <> Value then
  begin
    if not KeepParameterNames then
      FParameterNames.Free;
    FParameterNames := Value;
  end;
end;

function EOpsItemInvalidParameterException.GetKeepParameterNames: Boolean;
begin
  Result := FKeepParameterNames;
end;

procedure EOpsItemInvalidParameterException.SetKeepParameterNames(const Value: Boolean);
begin
  FKeepParameterNames := Value;
end;

function EOpsItemInvalidParameterException.IsSetParameterNames: Boolean;
begin
  Result := (FParameterNames <> nil) and (FParameterNames.Count > 0);
end;

end.
