unit AWSTests.Utils;

interface

uses
  System.SysUtils;

type
  TAWSTestUtils = class
  public
    class function GenerateName(const Name: string): string; static;
  end;

implementation

{ TAWSTestUtils }

class function TAWSTestUtils.GenerateName(const Name: string): string;
begin
  Result := Name + IntToStr(Random(MaxInt));
end;

end.
