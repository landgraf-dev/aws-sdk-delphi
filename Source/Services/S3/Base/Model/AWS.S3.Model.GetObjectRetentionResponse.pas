unit AWS.S3.Model.GetObjectRetentionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.ObjectLockRetention;

type
  TGetObjectRetentionResponse = class;
  
  IGetObjectRetentionResponse = interface(IAmazonWebServiceResponse)
    function GetRetention: TObjectLockRetention;
    procedure SetRetention(const Value: TObjectLockRetention);
    function GetKeepRetention: Boolean;
    procedure SetKeepRetention(const Value: Boolean);
    function Obj: TGetObjectRetentionResponse;
    function IsSetRetention: Boolean;
    property Retention: TObjectLockRetention read GetRetention write SetRetention;
    property KeepRetention: Boolean read GetKeepRetention write SetKeepRetention;
  end;
  
  TGetObjectRetentionResponse = class(TAmazonWebServiceResponse, IGetObjectRetentionResponse)
  strict private
    FRetention: TObjectLockRetention;
    FKeepRetention: Boolean;
    function GetRetention: TObjectLockRetention;
    procedure SetRetention(const Value: TObjectLockRetention);
    function GetKeepRetention: Boolean;
    procedure SetKeepRetention(const Value: Boolean);
  strict protected
    function Obj: TGetObjectRetentionResponse;
  public
    destructor Destroy; override;
    function IsSetRetention: Boolean;
    property Retention: TObjectLockRetention read GetRetention write SetRetention;
    property KeepRetention: Boolean read GetKeepRetention write SetKeepRetention;
  end;
  
implementation

{ TGetObjectRetentionResponse }

destructor TGetObjectRetentionResponse.Destroy;
begin
  Retention := nil;
  inherited;
end;

function TGetObjectRetentionResponse.Obj: TGetObjectRetentionResponse;
begin
  Result := Self;
end;

function TGetObjectRetentionResponse.GetRetention: TObjectLockRetention;
begin
  Result := FRetention;
end;

procedure TGetObjectRetentionResponse.SetRetention(const Value: TObjectLockRetention);
begin
  if FRetention <> Value then
  begin
    if not KeepRetention then
      FRetention.Free;
    FRetention := Value;
  end;
end;

function TGetObjectRetentionResponse.GetKeepRetention: Boolean;
begin
  Result := FKeepRetention;
end;

procedure TGetObjectRetentionResponse.SetKeepRetention(const Value: Boolean);
begin
  FKeepRetention := Value;
end;

function TGetObjectRetentionResponse.IsSetRetention: Boolean;
begin
  Result := FRetention <> nil;
end;

end.
