unit AWS.S3Control.Model.S3DeleteObjectTaggingOperation;

interface

type
  TS3DeleteObjectTaggingOperation = class;
  
  IS3DeleteObjectTaggingOperation = interface
    function Obj: TS3DeleteObjectTaggingOperation;
  end;
  
  TS3DeleteObjectTaggingOperation = class
  strict protected
    function Obj: TS3DeleteObjectTaggingOperation;
  end;
  
implementation

{ TS3DeleteObjectTaggingOperation }

function TS3DeleteObjectTaggingOperation.Obj: TS3DeleteObjectTaggingOperation;
begin
  Result := Self;
end;

end.
