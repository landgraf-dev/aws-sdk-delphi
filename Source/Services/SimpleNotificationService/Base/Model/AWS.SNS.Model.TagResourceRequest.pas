unit AWS.SNS.Model.TagResourceRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SNS.Model.Request, 
  AWS.SNS.Model.Tag;

type
  TTagResourceRequest = class;
  
  ITagResourceRequest = interface
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function Obj: TTagResourceRequest;
    function IsSetResourceArn: Boolean;
    function IsSetTags: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
  end;
  
  TTagResourceRequest = class(TAmazonSimpleNotificationServiceRequest, ITagResourceRequest)
  strict private
    FResourceArn: Nullable<string>;
    FTags: TObjectList<TTag>;
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
  strict protected
    function Obj: TTagResourceRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetResourceArn: Boolean;
    function IsSetTags: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
  end;
  
implementation

{ TTagResourceRequest }

constructor TTagResourceRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
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

function TTagResourceRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TTagResourceRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    FTags.Free;
    FTags := Value;
  end;
end;

function TTagResourceRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
