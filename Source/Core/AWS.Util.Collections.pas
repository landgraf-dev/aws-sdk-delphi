unit AWS.Util.Collections;

interface

uses
  System.Generics.Collections;

type
  TAlwaysSendList<T> = class(TList<T>)
  end;

  TAlwaysSendObjectList<T: class> = class(TObjectList<T>)
  end;

  TAlwaysSendDictionary<K, V> = class(TDictionary<K, V>)
  end;

  TAlwaysSendObjectDictionary<K; V: class> = class(TObjectDictionary<K, V>)
  end;


implementation

end.
