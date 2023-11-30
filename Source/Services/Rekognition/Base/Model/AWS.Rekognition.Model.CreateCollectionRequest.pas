unit AWS.Rekognition.Model.CreateCollectionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TCreateCollectionRequest = class;
  
  ICreateCollectionRequest = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateCollectionRequest;
    function IsSetCollectionId: Boolean;
    function IsSetTags: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateCollectionRequest = class(TAmazonRekognitionRequest, ICreateCollectionRequest)
  strict private
    FCollectionId: Nullable<string>;
    FTags: TDictionary<string, string>;
    FKeepTags: Boolean;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetTags: TDictionary<string, string>;
    procedure SetTags(const Value: TDictionary<string, string>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateCollectionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCollectionId: Boolean;
    function IsSetTags: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property Tags: TDictionary<string, string> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateCollectionRequest }

constructor TCreateCollectionRequest.Create;
begin
  inherited;
  FTags := TDictionary<string, string>.Create;
end;

destructor TCreateCollectionRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TCreateCollectionRequest.Obj: TCreateCollectionRequest;
begin
  Result := Self;
end;

function TCreateCollectionRequest.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TCreateCollectionRequest.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TCreateCollectionRequest.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

function TCreateCollectionRequest.GetTags: TDictionary<string, string>;
begin
  Result := FTags;
end;

procedure TCreateCollectionRequest.SetTags(const Value: TDictionary<string, string>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateCollectionRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateCollectionRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateCollectionRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
