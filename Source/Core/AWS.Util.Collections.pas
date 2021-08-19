unit AWS.Util.Collections;

interface

uses
  System.Generics.Collections;

type
  TAlwaysSendList<T> = class(TList<T>)
  end;

  TAlwaysSendObjectList<T: class> = class(TObjectList<T>)
  end;

implementation

end.
