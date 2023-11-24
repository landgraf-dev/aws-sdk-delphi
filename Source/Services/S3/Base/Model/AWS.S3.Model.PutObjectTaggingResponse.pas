unit AWS.S3.Model.PutObjectTaggingResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TPutObjectTaggingResponse = class;
  
  IPutObjectTaggingResponse = interface(IAmazonWebServiceResponse)
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TPutObjectTaggingResponse;
    function IsSetVersionId: Boolean;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TPutObjectTaggingResponse = class(TAmazonWebServiceResponse, IPutObjectTaggingResponse)
  strict private
    FVersionId: Nullable<string>;
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TPutObjectTaggingResponse;
  public
    function IsSetVersionId: Boolean;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TPutObjectTaggingResponse }

function TPutObjectTaggingResponse.Obj: TPutObjectTaggingResponse;
begin
  Result := Self;
end;

function TPutObjectTaggingResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TPutObjectTaggingResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TPutObjectTaggingResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
