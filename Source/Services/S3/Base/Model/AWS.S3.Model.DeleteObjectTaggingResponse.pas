unit AWS.S3.Model.DeleteObjectTaggingResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TDeleteObjectTaggingResponse = class;
  
  IDeleteObjectTaggingResponse = interface(IAmazonWebServiceResponse)
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TDeleteObjectTaggingResponse;
    function IsSetVersionId: Boolean;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TDeleteObjectTaggingResponse = class(TAmazonWebServiceResponse, IDeleteObjectTaggingResponse)
  strict private
    FVersionId: Nullable<string>;
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TDeleteObjectTaggingResponse;
  public
    function IsSetVersionId: Boolean;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TDeleteObjectTaggingResponse }

function TDeleteObjectTaggingResponse.Obj: TDeleteObjectTaggingResponse;
begin
  Result := Self;
end;

function TDeleteObjectTaggingResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TDeleteObjectTaggingResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TDeleteObjectTaggingResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
