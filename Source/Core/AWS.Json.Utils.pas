unit AWS.Json.Utils;

interface

uses
  System.Generics.Collections, System.JSON;

function JsonSerialize(Value: TList<string>): string; overload;
function JsonDeserialize_ListString(const Value: string): TList<string>;

implementation

function JsonSerialize(Value: TList<string>): string;
var
  JArray: TJSONArray;
begin
  JArray := TJSONArray.Create;
  try
    for var Item in Value do
      JArray.Add(Item);
    Result := JArray.ToJSON;
  finally
    JArray.Free;
  end;
end;

function JsonDeserialize_ListString(const Value: string): TList<string>;
var
  JArray: TJSONArray;
begin
  JArray := TJSONValue.ParseJSONValue(Value) as TJSONArray;
  try
    Result := TList<string>.Create;
    try
      for var Item in JArray do
        Result.Add(TJSONString(Item).Value);
    except
      Result.Free;
      raise;
    end;
  finally
    JArray.Free;
  end;
end;

end.
