unit AWSTests.MockWebResponse;

interface

uses
  System.Net.HttpClient;

type
  TMockWebResponse = class
  public
    class function CreateFromResource(const ResourceName: string): IHTTPResponse;
  end;

implementation

{ TMockWebResponse }

class function TMockWebResponse.CreateFromResource(const ResourceName: string): IHTTPResponse;
begin

end;

end.
