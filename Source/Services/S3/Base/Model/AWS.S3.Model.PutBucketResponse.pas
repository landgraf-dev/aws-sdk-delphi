unit AWS.S3.Model.PutBucketResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TPutBucketResponse = class;
  
  IPutBucketResponse = interface(IAmazonWebServiceResponse)
    function GetLocation: string;
    procedure SetLocation(const Value: string);
    function Obj: TPutBucketResponse;
    function IsSetLocation: Boolean;
    property Location: string read GetLocation write SetLocation;
  end;
  
  TPutBucketResponse = class(TAmazonWebServiceResponse, IPutBucketResponse)
  strict private
    FLocation: Nullable<string>;
    function GetLocation: string;
    procedure SetLocation(const Value: string);
  strict protected
    function Obj: TPutBucketResponse;
  public
    function IsSetLocation: Boolean;
    property Location: string read GetLocation write SetLocation;
  end;
  
implementation

{ TPutBucketResponse }

function TPutBucketResponse.Obj: TPutBucketResponse;
begin
  Result := Self;
end;

function TPutBucketResponse.GetLocation: string;
begin
  Result := FLocation.ValueOrDefault;
end;

procedure TPutBucketResponse.SetLocation(const Value: string);
begin
  FLocation := Value;
end;

function TPutBucketResponse.IsSetLocation: Boolean;
begin
  Result := FLocation.HasValue;
end;

end.
