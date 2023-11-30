unit AWS.Transcribe.Model.ListTagsForResourceRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable;

type
  TListTagsForResourceRequest = class;
  
  IListTagsForResourceRequest = interface
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
    function Obj: TListTagsForResourceRequest;
    function IsSetResourceArn: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
  end;
  
  TListTagsForResourceRequest = class(TAmazonTranscribeServiceRequest, IListTagsForResourceRequest)
  strict private
    FResourceArn: Nullable<string>;
    function GetResourceArn: string;
    procedure SetResourceArn(const Value: string);
  strict protected
    function Obj: TListTagsForResourceRequest;
  public
    function IsSetResourceArn: Boolean;
    property ResourceArn: string read GetResourceArn write SetResourceArn;
  end;
  
implementation

{ TListTagsForResourceRequest }

function TListTagsForResourceRequest.Obj: TListTagsForResourceRequest;
begin
  Result := Self;
end;

function TListTagsForResourceRequest.GetResourceArn: string;
begin
  Result := FResourceArn.ValueOrDefault;
end;

procedure TListTagsForResourceRequest.SetResourceArn(const Value: string);
begin
  FResourceArn := Value;
end;

function TListTagsForResourceRequest.IsSetResourceArn: Boolean;
begin
  Result := FResourceArn.HasValue;
end;

end.
