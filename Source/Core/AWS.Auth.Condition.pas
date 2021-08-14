unit AWS.Auth.Condition;

interface

uses
  System.Generics.Collections;

type
  TCondition = class
  strict private
    FType: string;
    FConditionKey: string;
    FValues: TList<string>;
  public
    constructor Create;
    destructor Destroy; override;
    property ConditionType: string read FType write FType;
    property ConditionKey: string read FConditionKey write FConditionKey;
    property Values: TList<string> read FValues;
  end;

implementation

{ TCondition }

constructor TCondition.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TCondition.Destroy;
begin
  FValues.Free;
  inherited;
end;

end.
