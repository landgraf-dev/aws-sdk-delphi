unit AWS.Rekognition.Model.TagResourceRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TTagResourceRequest = class;
  
  ITagResourceRequest = interface
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TTagResourceRequest;
    function IsSetResourceArn: Boolean;
    function IsSetTags: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TTagResourceRequest = class(TAmazonRekognitionRequest, ITagResourceRequest)
  strict private
    FResourceArn: Nullable<string>;
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TTagResourceRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetResourceArn: Boolean;
    function IsSetTags: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TTagResourceRequest }

constructor TTagResourceRequest.Create;
begin
  inherited;
  FTags := TDictionary<string, string>.Create;
end;

destructor TTagResourceRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TTagResourceRequest.Obj: TTagResourceRequest;
begin
  Result := Self;
end;

function TTagResourceRequest.GetResourceArn: string;
begin
  Result := FResourceArn.ValueOrDefault;
end;

procedure TTagResourceRequest.SetResourceArn(const Value: string);
begin
  FResourceArn := Value;
end;

function TTagResourceRequest.IsSetResourceArn: Boolean;
begin
  Result := FResourceArn.HasValue;
end;

function TTagResourceRequest.GetTags: TDictionary<string, string>;
begin
  Result := FTags;
end;

procedure TTagResourceRequest.SetTags(const Value: TDictionary<string, string>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TTagResourceRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TTagResourceRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TTagResourceRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
