unit CoreAPI;

interface

uses
  CrossUrl.HttpClient,
  System.Rtti,
  System.TypInfo,
  System.SysUtils,
  System.Generics.Collections,
  System.Classes,
  TelegAPI.Base,
  TelegAPI.Types;

type
  ItgRequestAPI = interface
    ['{3DC5A653-F52D-4A31-87AD-0C008AFA7111}']
    // private
    function GetOnError: TProc<Exception>;
    procedure SetOnError(const Value: TProc<Exception>);
    function GetOnSend: TProc<string, string>;
    procedure SetOnSend(const Value: TProc<string, string>);
    function GetOnReceive: TProc<string>;
    procedure SetOnReceive(const Value: TProc<string>);
    function GetDataExtractor: TFunc<string, string>;
    procedure SetDataExtractor(const Value: TFunc<string, string>);
    function GetFormData: IcuMultipartFormData;
    function GetHttpCore: IcuHttpClient;
    procedure SetHttpCore(const AHttpCore: IcuHttpClient);
    function GetUrlAPI: string;
    procedure SetUrlAPI(const AValue: string);
    // public

    function SetToken(const AToken: string): ItgRequestAPI;
    function SetMethod(const AMethod: string): ItgRequestAPI;
    //
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      string; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      Integer; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      TDateTime; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; AValue, ADefaultValue:
      TtgFileToSend; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      TtgUserLink; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; AValue, ADefaultValue: TObject;
      const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      Boolean; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      Single; const ARequired: Boolean = False): ItgRequestAPI; overload;
    //
    function AddRawField(const AField, AValue: string): ItgRequestAPI;
    function AddRawFile(const AFieldName, AFileName: string): ItgRequestAPI;
    function AddRawStream(const AFieldName: string; Data: TStream; const
      AFileName: string): ItgRequestAPI;

    //
    function ClearParameters: ItgRequestAPI;
    function Execute: string;
    function ExecuteAsBool: Boolean;
    function ExecuteAndReadValue: string;
    // props
    property DataExtractor: TFunc<string, string> read GetDataExtractor write
      SetDataExtractor;
    property MultipartFormData: IcuMultipartFormData read GetFormData;
    property HttpCore: IcuHttpClient read GetHttpCore write SetHttpCore;
    property UrlAPI: string read GetUrlAPI write SetUrlAPI;
    // events
    property OnError: TProc<Exception> read GetOnError write SetOnError;
    property OnSend: TProc<string, string> read GetOnSend write SetOnSend;
    property OnReceive: TProc<string> read GetOnReceive write SetOnReceive;
  end;

  TtgCoreApiBase = class(TInterfacedObject, ItgRequestAPI)
  private
    FGetOnSend: TProc<string, string>;
    FDataExtractor: TFunc<string, string>;
    FOnReceive: TProc<string>;
    FToken: string;
    FMethod: string;
    FOnError: TProc<Exception>;
    FFormData: IcuMultipartFormData;
    FHttpCore: IcuHttpClient;
    FHaveFields: Boolean;
    FUrlAPI: string;
  private
    function GetOnError: TProc<Exception>;
    procedure SetOnError(const Value: TProc<Exception>);
    function GetOnSend: TProc<string, string>;
    procedure SetOnSend(const Value: TProc<string, string>);
    function GetOnReceive: TProc<string>;
    procedure SetOnReceive(const Value: TProc<string>);
    function GetDataExtractor: TFunc<string, string>;
    procedure SetDataExtractor(const Value: TFunc<string, string>);
    function GetUrl: string;
    function GetFormData: IcuMultipartFormData;
    procedure SetHttpCore(const Value: IcuHttpClient);
    function GetHttpCore: IcuHttpClient;
    function GetUrlAPI: string;
    procedure SetUrlAPI(const AValue: string);
  protected
    procedure DoHaveException(const AException: Exception);
    function StreamToString(Stream: TStream): string;
  public
    function SetToken(const AToken: string): ItgRequestAPI;
    function SetMethod(const AMethod: string): ItgRequestAPI;

    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      string; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      Integer; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      TDateTime; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; AValue, ADefaultValue:
      TtgFileToSend; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      TtgUserLink; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; AValue, ADefaultValue: TObject;
      const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      Boolean; const ARequired: Boolean = False): ItgRequestAPI; overload;
    function AddParameter(const AKey: string; const AValue, ADefaultValue:
      Single; const ARequired: Boolean = False): ItgRequestAPI; overload;
    //
    function AddRawField(const AField, AValue: string): ItgRequestAPI;
    function AddRawFile(const AFieldName, AFileName: string): ItgRequestAPI;
    function AddRawStream(const AFieldName: string; Data: TStream; const
      AFileName: string): ItgRequestAPI;

    function HaveFields: Boolean;
    function ClearParameters: ItgRequestAPI;
    function Execute: string; virtual; abstract;
    function ExecuteAsBool: Boolean;
    function ExecuteAndReadValue: string;
    constructor Create;
    // props
    property DataExtractor: TFunc<string, string> read GetDataExtractor write
      SetDataExtractor;
    property Url: string read GetUrl;
    property HttpCore: IcuHttpClient read FHttpCore write SetHttpCore;
    property UrlAPI: string read GetUrlAPI write SetUrlAPI;
    // events
    property OnError: TProc<Exception> read GetOnError write SetOnError;
    property OnSend: TProc<string, string> read GetOnSend write SetOnSend;
    property OnReceive: TProc<string> read GetOnReceive write SetOnReceive;
  end;

  TtgCoreApi = class(TtgCoreApiBase, ItgRequestAPI)
  private
  protected
    function DoPost: string;
    function DoGet: string;
  public
    function Execute: string; override;
  end;

implementation

uses
  REST.Json,
  System.DateUtils,
  System.Json,
  TelegAPI.Utils.Json,
  TelegAPI.Types.ReplyMarkups;

{ TtgCoreApiBase }
{$REGION 'TtgCoreApiBase.AddParameter'}

function TtgCoreApiBase.AddParameter(const AKey, AValue, ADefaultValue: string;
  const ARequired: Boolean): ItgRequestAPI;
begin
  if ARequired and (AValue.Equals(ADefaultValue) or AValue.IsEmpty) then
    DoHaveException(Exception.Create('Dados obrigat�rios n�o atribu�dos'));
  if AValue <> ADefaultValue then
    AddRawField(AKey, AValue);
  Result := Self;
end;

function TtgCoreApiBase.AddParameter(const AKey: string; const AValue,
  ADefaultValue: Integer; const ARequired: Boolean): ItgRequestAPI;
begin
  Result := AddParameter(AKey, AValue.ToString, ADefaultValue.ToString, ARequired);
end;

function TtgCoreApiBase.AddParameter(const AKey: string; const AValue,
  ADefaultValue: TDateTime; const ARequired: Boolean): ItgRequestAPI;
begin
  Result := AddParameter(AKey, DateTimeToUnix(AValue, False).ToString,
    DateTimeToUnix(ADefaultValue, False).ToString, ARequired);
end;

function TtgCoreApiBase.AddParameter(const AKey: string; AValue, ADefaultValue:
  TtgFileToSend; const ARequired: Boolean): ItgRequestAPI;
begin
  if ARequired and (AValue.Equals(ADefaultValue) or AValue.IsEmpty) then
    DoHaveException(Exception.Create('Dados obrigat�rios n�o atribu�dos'));
  Result := Self;
  case AValue.Tag of
    TtgFileToSendTag.FromStream:
      AddRawStream(AKey, AValue.Content, AValue.Data);
    TtgFileToSendTag.FromFile:
      AddRawFile(AKey, AValue.Data);
    TtgFileToSendTag.ID, TtgFileToSendTag.FromURL:
      Result := AddParameter(AKey, AValue.Data, '', ARequired);
  else
    raise Exception.Create('N�o � poss�vel converter TTgFileToSend: tag de prot�tipo desconhecido');
  end;
  if Assigned(AValue) then
    FreeAndNil(AValue);
  if Assigned(ADefaultValue) then
    FreeAndNil(ADefaultValue);
end;

function TtgCoreApiBase.AddParameter(const AKey: string; const AValue,
  ADefaultValue: TtgUserLink; const ARequired: Boolean): ItgRequestAPI;
begin
  Result := AddParameter(AKey, AValue.ToString, ADefaultValue.ToString, ARequired);
end;

function TtgCoreApiBase.AddParameter(const AKey: string; AValue, ADefaultValue:
  TObject; const ARequired: Boolean): ItgRequestAPI;
begin
  Result := AddParameter(AKey, TJsonUtils.ObjectToJString(AValue),  //
    TJsonUtils.ObjectToJString(ADefaultValue), ARequired);
end;

function TtgCoreApiBase.AddParameter(const AKey: string; const AValue,
  ADefaultValue, ARequired: Boolean): ItgRequestAPI;
begin
  Result := AddParameter(AKey, AValue.ToString, ADefaultValue.ToString, ARequired);
end;

//Corre��o By Ruan Diego
function TtgCoreApiBase.AddParameter(const AKey: string; const AValue,
  ADefaultValue: Single; const ARequired: Boolean): ItgRequestAPI;
Var StrSingle: String;
    I: Integer;
begin
   StrSingle := AValue.ToString;
   for I:=1 to length(StrSingle) do
     if StrSingle[I]= ',' then
        StrSingle[I]:= '.';

  Result := AddParameter(AKey, StrSingle, ADefaultValue.ToString, ARequired);
end;
{$ENDREGION}

function TtgCoreApiBase.AddRawField(const AField, AValue: string): ItgRequestAPI;
begin
  FFormData.AddField(AField, AValue);
  FHaveFields := True;
  Result := Self;
end;

function TtgCoreApiBase.AddRawFile(const AFieldName, AFileName: string): ItgRequestAPI;
begin
  FFormData.AddFile(AFieldName, AFileName);
  FHaveFields := True;
  Result := Self;
end;

function TtgCoreApiBase.AddRawStream(const AFieldName: string; Data: TStream;
  const AFileName: string): ItgRequestAPI;
begin
  FFormData.AddStream(AFieldName, Data, AFileName);
  FHaveFields := True;
  Result := Self;
end;

function TtgCoreApiBase.ClearParameters: ItgRequestAPI;
begin
  FFormData := nil;
  FHaveFields := False;
  FFormData := HttpCore.CreateMultipartFormData;
  Result := Self;
end;

constructor TtgCoreApiBase.Create;
begin
  FHaveFields := False;
end;

procedure TtgCoreApiBase.DoHaveException(const AException: Exception);
begin
  if Assigned(OnError) then
    OnError(AException)
  else
    raise AException;
end;

function TtgCoreApiBase.ExecuteAndReadValue: string;
var
  LJson: TJSONValue;
begin
  LJson := TJSONObject.ParseJSONValue(Execute);
  try
    Result := LJson.Value;
  finally
    LJson.Free;
  end;
end;

function TtgCoreApiBase.ExecuteAsBool: Boolean;
var
  LJson: TJSONValue;
begin
  LJson := TJSONObject.ParseJSONValue(Execute);
  try
    Result := LJson is TJSONTrue;
  finally
    LJson.Free;
  end;
end;

function TtgCoreApiBase.GetDataExtractor: TFunc<string, string>;
begin
  Result := FDataExtractor;
end;

function TtgCoreApiBase.GetFormData: IcuMultipartFormData;
begin
  Result := FFormData;
end;

function TtgCoreApiBase.GetHttpCore: IcuHttpClient;
begin
  Result := FHttpCore;
end;

function TtgCoreApiBase.GetOnError: TProc<Exception>;
begin
  Result := FOnError;
end;

function TtgCoreApiBase.GetOnReceive: TProc<string>;
begin
  Result := FOnReceive;
end;

function TtgCoreApiBase.GetOnSend: TProc<string, string>;
begin
  Result := FGetOnSend;
end;

function TtgCoreApiBase.GetUrl: string;
begin
  Result := GetUrlAPI + FToken + '/' + FMethod;
end;

function TtgCoreApiBase.GetUrlAPI: string;
begin
  Result := FUrlAPI;
end;

function TtgCoreApiBase.HaveFields: Boolean;
begin
  Result := FHaveFields;
end;

procedure TtgCoreApiBase.SetDataExtractor(const Value: TFunc<string, string>);
begin
  FDataExtractor := Value;
end;

procedure TtgCoreApiBase.SetHttpCore(const Value: IcuHttpClient);
begin
  FHttpCore := Value;
  if FHttpCore <> nil then
    FFormData := FHttpCore.CreateMultipartFormData;
end;

function TtgCoreApiBase.SetMethod(const AMethod: string): ItgRequestAPI;
begin
  FMethod := AMethod;
  Result := Self;
end;

procedure TtgCoreApiBase.SetOnError(const Value: TProc<Exception>);
begin
  FOnError := Value;
end;

procedure TtgCoreApiBase.SetOnReceive(const Value: TProc<string>);
begin
  FOnReceive := Value;
end;

procedure TtgCoreApiBase.SetOnSend(const Value: TProc<string, string>);
begin
  FGetOnSend := Value;
end;

function TtgCoreApiBase.SetToken(const AToken: string): ItgRequestAPI;
begin
  FToken := AToken;
  Result := Self;
end;

procedure TtgCoreApiBase.SetUrlAPI(const AValue: string);
begin
  FUrlAPI := AValue;
end;

function TtgCoreApiBase.StreamToString(Stream: TStream): string;
var
  LStrings: TStringList;
begin
  LStrings := TStringList.Create;
  try
    Stream.Position := 0;
    LStrings.LoadFromStream(Stream);
    Result := LStrings.Text;
  finally
    LStrings.Free;
  end;
end;

{ TtgCoreApiSysNet }

function TtgCoreApi.DoGet: string;
begin
  Result := FHttpCore.Get(Url).ContentAsString;
end;

function TtgCoreApi.DoPost: string;
begin
  Result := FHttpCore.Post(Url, FFormData).ContentAsString;
end;

function TtgCoreApi.Execute: string;
begin
  if Assigned(OnSend) then
    OnSend(Url, StreamToString(FFormData.Stream));
  try
    if HaveFields then
    begin
      Result := DoPost;
      ClearParameters;
    end
    else
      Result := DoGet;
  except
    on E: Exception do
    begin
      Result := '';
      DoHaveException(E);
    end;
  end;
  if Result = '' then
    Exit;
  if Assigned(OnReceive) then
    OnReceive(Result);
  if Assigned(DataExtractor) then
    Result := DataExtractor(Result);
end;

end.

