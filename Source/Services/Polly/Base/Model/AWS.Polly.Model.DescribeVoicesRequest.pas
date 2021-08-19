unit AWS.Polly.Model.DescribeVoicesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Polly.Model.Request, 
  AWS.Polly.Enums;

type
  TDescribeVoicesRequest = class;
  
  IDescribeVoicesRequest = interface
    function GetEngine: TEngine;
    procedure SetEngine(const Value: TEngine);
    function GetIncludeAdditionalLanguageCodes: Boolean;
    procedure SetIncludeAdditionalLanguageCodes(const Value: Boolean);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeVoicesRequest;
    function IsSetEngine: Boolean;
    function IsSetIncludeAdditionalLanguageCodes: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetNextToken: Boolean;
    property Engine: TEngine read GetEngine write SetEngine;
    property IncludeAdditionalLanguageCodes: Boolean read GetIncludeAdditionalLanguageCodes write SetIncludeAdditionalLanguageCodes;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeVoicesRequest = class(TAmazonPollyRequest, IDescribeVoicesRequest)
  strict private
    FEngine: Nullable<TEngine>;
    FIncludeAdditionalLanguageCodes: Nullable<Boolean>;
    FLanguageCode: Nullable<TLanguageCode>;
    FNextToken: Nullable<string>;
    function GetEngine: TEngine;
    procedure SetEngine(const Value: TEngine);
    function GetIncludeAdditionalLanguageCodes: Boolean;
    procedure SetIncludeAdditionalLanguageCodes(const Value: Boolean);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeVoicesRequest;
  public
    function IsSetEngine: Boolean;
    function IsSetIncludeAdditionalLanguageCodes: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetNextToken: Boolean;
    property Engine: TEngine read GetEngine write SetEngine;
    property IncludeAdditionalLanguageCodes: Boolean read GetIncludeAdditionalLanguageCodes write SetIncludeAdditionalLanguageCodes;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeVoicesRequest }

function TDescribeVoicesRequest.Obj: TDescribeVoicesRequest;
begin
  Result := Self;
end;

function TDescribeVoicesRequest.GetEngine: TEngine;
begin
  Result := FEngine.ValueOrDefault;
end;

procedure TDescribeVoicesRequest.SetEngine(const Value: TEngine);
begin
  FEngine := Value;
end;

function TDescribeVoicesRequest.IsSetEngine: Boolean;
begin
  Result := FEngine.HasValue;
end;

function TDescribeVoicesRequest.GetIncludeAdditionalLanguageCodes: Boolean;
begin
  Result := FIncludeAdditionalLanguageCodes.ValueOrDefault;
end;

procedure TDescribeVoicesRequest.SetIncludeAdditionalLanguageCodes(const Value: Boolean);
begin
  FIncludeAdditionalLanguageCodes := Value;
end;

function TDescribeVoicesRequest.IsSetIncludeAdditionalLanguageCodes: Boolean;
begin
  Result := FIncludeAdditionalLanguageCodes.HasValue;
end;

function TDescribeVoicesRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TDescribeVoicesRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TDescribeVoicesRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TDescribeVoicesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeVoicesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeVoicesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
