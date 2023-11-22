unit AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteStorageLensConfigurationTaggingResponse = class;
  
  IDeleteStorageLensConfigurationTaggingResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteStorageLensConfigurationTaggingResponse;
  end;
  
  TDeleteStorageLensConfigurationTaggingResponse = class(TAmazonWebServiceResponse, IDeleteStorageLensConfigurationTaggingResponse)
  strict protected
    function Obj: TDeleteStorageLensConfigurationTaggingResponse;
  end;
  
implementation

{ TDeleteStorageLensConfigurationTaggingResponse }

function TDeleteStorageLensConfigurationTaggingResponse.Obj: TDeleteStorageLensConfigurationTaggingResponse;
begin
  Result := Self;
end;

end.
