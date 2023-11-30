unit AWS.S3.Model.DeleteObjectsException;

interface

uses
  System.SysUtils,
  AWS.S3.Exception,
  AWS.S3.Model.DeleteObjectsResponse;

type
  EDeleteObjectsException = class(EAmazonS3Exception)
  private
    FResponse: IDeleteObjectsResponse;
    class function CreateMessage(Response: IDeleteObjectsResponse): string; static;
  public
    constructor Create(AResponse: IDeleteObjectsResponse); reintroduce;
    property Response: IDeleteObjectsResponse read FResponse write FResponse;
  end;

implementation

{ EDeleteObjectsException }

constructor EDeleteObjectsException.Create(AResponse: IDeleteObjectsResponse);
begin
  inherited Create(CreateMessage(AResponse));
  FResponse := AResponse;
end;

class function EDeleteObjectsException.CreateMessage(Response: IDeleteObjectsResponse): string;
begin
  var DeletedCount := 0;
  var ErrorCount := 0;
  if Response.DeletedObjects <> nil then
    DeletedCount := Response.DeletedObjects.Count;
  if Response.DeleteErrors <> nil then
    ErrorCount := Response.DeleteErrors.Count;

  Result := Format('Error deleting objects. Deleted objects: %d. Delete errors: %d', [DeletedCount, ErrorCount]);
end;

end.
