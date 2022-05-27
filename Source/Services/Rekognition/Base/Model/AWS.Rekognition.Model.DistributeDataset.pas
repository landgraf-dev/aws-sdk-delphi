unit AWS.Rekognition.Model.DistributeDataset;

interface

uses
  Bcl.Types.Nullable;

type
  TDistributeDataset = class;
  
  IDistributeDataset = interface
    function GetArn: string;
    procedure SetArn(const Value: string);
    function Obj: TDistributeDataset;
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
  TDistributeDataset = class
  strict private
    FArn: Nullable<string>;
    function GetArn: string;
    procedure SetArn(const Value: string);
  strict protected
    function Obj: TDistributeDataset;
  public
    function IsSetArn: Boolean;
    property Arn: string read GetArn write SetArn;
  end;
  
implementation

{ TDistributeDataset }

function TDistributeDataset.Obj: TDistributeDataset;
begin
  Result := Self;
end;

function TDistributeDataset.GetArn: string;
begin
  Result := FArn.ValueOrDefault;
end;

procedure TDistributeDataset.SetArn(const Value: string);
begin
  FArn := Value;
end;

function TDistributeDataset.IsSetArn: Boolean;
begin
  Result := FArn.HasValue;
end;

end.
