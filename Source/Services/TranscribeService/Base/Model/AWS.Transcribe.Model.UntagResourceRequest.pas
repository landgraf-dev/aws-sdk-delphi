unit AWS.Transcribe.Model.UntagResourceRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Nullable;

type
  TUntagResourceRequest = class;
  
  IUntagResourceRequest = interface
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function GetTagKeys: TList<string>;
    procedure SetTagKeys(const Value: TList<string>);
    function GetKeepTagKeys: Boolean;
    procedure SetKeepTagKeys(const Value: Boolean);
    function Obj: TUntagResourceRequest;
    function IsSetResourceArn: Boolean;
    function IsSetTagKeys: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
    property TagKeys: TList<string> read GetTagKeys write SetTagKeys;
    property KeepTagKeys: Boolean read GetKeepTagKeys write SetKeepTagKeys;
  end;
  
  TUntagResourceRequest = class(TAmazonTranscribeServiceRequest, IUntagResourceRequest)
  strict private
    FResourceArn: Nullable<string>;
    FTagKeys: TList<string>;
    FKeepTagKeys: Boolean;
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function GetTagKeys: TList<string>;
    procedure SetTagKeys(const Value: TList<string>);
    function GetKeepTagKeys: Boolean;
    procedure SetKeepTagKeys(const Value: Boolean);
  strict protected
    function Obj: TUntagResourceRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetResourceArn: Boolean;
    function IsSetTagKeys: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
    property TagKeys: TList<string> read GetTagKeys write SetTagKeys;
    property KeepTagKeys: Boolean read GetKeepTagKeys write SetKeepTagKeys;
  end;
  
implementation

{ TUntagResourceRequest }

constructor TUntagResourceRequest.Create;
begin
  inherited;
  FTagKeys := TList<string>.Create;
end;

destructor TUntagResourceRequest.Destroy;
begin
  TagKeys := nil;
  inherited;
end;

function TUntagResourceRequest.Obj: TUntagResourceRequest;
begin
  Result := Self;
end;

function TUntagResourceRequest.GetResourceArn: string;
begin
  Result := FResourceArn.ValueOrDefault;
end;

procedure TUntagResourceRequest.SetResourceArn(const Value: string);
begin
  FResourceArn := Value;
end;

function TUntagResourceRequest.IsSetResourceArn: Boolean;
begin
  Result := FResourceArn.HasValue;
end;

function TUntagResourceRequest.GetTagKeys: TList<string>;
begin
  Result := FTagKeys;
end;

procedure TUntagResourceRequest.SetTagKeys(const Value: TList<string>);
begin
  if FTagKeys <> Value then
  begin
    if not KeepTagKeys then
      FTagKeys.Free;
    FTagKeys := Value;
  end;
end;

function TUntagResourceRequest.GetKeepTagKeys: Boolean;
begin
  Result := FKeepTagKeys;
end;

procedure TUntagResourceRequest.SetKeepTagKeys(const Value: Boolean);
begin
  FKeepTagKeys := Value;
end;

function TUntagResourceRequest.IsSetTagKeys: Boolean;
begin
  Result := (FTagKeys <> nil) and (FTagKeys.Count > 0);
end;

end.
