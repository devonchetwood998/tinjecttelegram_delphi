﻿unit TelegAPI.Types;

interface

uses
  REST.Json.Types,
  System.Classes,
  TelegAPi.Types.Enums;

type
  ItgUser = interface
    ['{EEE1275B-F21B-476F-9F0C-768C702FF34B}']
    function ID: Int64;
    function IsBot: Boolean;
    function FirstName: string;
    function LastName: string;
    function Username: string;
    function LanguageCode: string;
    function CanJoinGroups: Boolean;           //can_join_groups	Boolean	                Optional. True, if the bot can be invited to groups. Returned only in getMe.
    function CanReadAllGroupMessages: Boolean; //can_read_all_group_messages	Boolean	    Optional. True, if privacy mode is disabled for the bot. Returned only in getMe.
    function SupportsInlineQueries: Boolean;   //supports_inline_queries	Boolean	        Optional. True, if the bot supports inline queries. Returned only in
  end;

  ItgChatMember = interface
    ['{BE073F97-DA34-43E6-A15E-14A2B90CAB7E}']
    function User: ItgUser;
    function Status: TtgChatMemberStatus;
    function UntilDate: TDateTime;
    function CanBeEdited: Boolean;
    function CanChangeInfo: Boolean;
    function CanPostMessages: Boolean;
    function CanEditMessages: Boolean;
    function CanDeleteMessages: Boolean;
    function CanInviteUsers: Boolean;
    function CanRestrictMembers: Boolean;
    function CanPinMessages: Boolean;
    function CanPromoteMembers: Boolean;
    function CanSendMessages: Boolean;
    function CanSendMediaMessages: Boolean;
    function CanSendOtherMessages: Boolean;
    function CanAddWebPagePreviews: Boolean;
  end;

  ItgChatPhoto = interface
    ['{011E7CC4-8777-4E0F-95A6-6E5C87461DCD}']
    function SmallFileId: string;
    function BigFileId: string;
  end;

  ITgMessage = interface;

  ItgChat = interface
    ['{5CE94B3E-312E-48FA-98A4-4C34E16A5DC7}']
    function ID: Int64;
    function TypeChat: TtgChatType;
    function Title: string;
    function Username: string;
    function FirstName: string;
    function LastName: string;
    function AllMembersAreAdministrators: Boolean;
    function Photo: ItgChatPhoto;
    function Description: string;
    function InviteLink: string;
    function PinnedMessage: ITgMessage;
    function StickerSetName: string;
    function CanSetStickerSet: Boolean;
    function IsGroup: Boolean;
    function ToJSonStr: String;
    function ToString: String;
  end;

  ItgMessageEntity = interface
    ['{0F510BB7-8436-426E-8ECC-46742E3183E1}']
    function TypeMessage: TtgMessageEntityType;
    function Offset: Int64;
    function Length: Int64;
    function Url: string;
    function User: ItgUser;
  end;

  ItgFile = interface
    ['{7A0DE9B9-939C-4079-B6A5-997AEA9497C9}']
    function FileId: string;
    function FileSize: Int64;
    function FilePath: string;
    function CanDownload: Boolean;
    function GetFileUrl(const AToken: string): string;
  end;

  ItgAudio = interface(ItgFile)
    ['{8220DE57-2A5E-4B77-8B62-A3268E15D938}']
    function Duration: Int64;
    function Performer: string;
    function Title: string;
    function MimeType: string;
  end;

  ItgPhotoSize = interface(ItgFile)
    ['{FF71291C-4E00-483E-8363-AF160CE78A4F}']
    function Width: Int64;
    function Height: Int64;
  end;

  ItgDocument = interface(ItgFile)
    ['{2B4DF418-FE55-490B-B119-46B9CB846609}']
    function Thumb: ItgPhotoSize;
    function FileName: string;
    function MimeType: string;
  end;

  ItgMaskPosition = interface
    ['{D74500FF-8332-4BDF-BC26-9854A2D10529}']
    function Point: TtgMaskPositionPoint;
    function XShift: Single;
    function YShift: Single;
    function Scale: Single;
  end;

  ItgSticker = interface(ItgFile)
    ['{C2598C8D-506F-4208-80AA-ED2731C92192}']
    function Width: Int64;
    function Height: Int64;
    function Thumb: ItgPhotoSize;
    function Emoji: string;
    function SetName: string;
    function MaskPosition: ItgMaskPosition;
  end;

  ItgStickerSet = interface
    ['{FCE66210-3EFF-4D97-9077-473AAFE9FC97}']
    function Name: string;
    function Title: string;
    function ContainsMasks: Boolean;
    function Stickers: TArray<ItgSticker>;
  end;

  ItgVideo = interface(ItgFile)
    ['{520EB672-788A-4B7B-9BD9-1A569FD7C417}']
    function Width: Int64;
    function Height: Int64;
    function Duration: Int64;
    function Thumb: ItgPhotoSize;
    function MimeType: string;
  end;

  ItgVideoNote = interface(ItgFile)
    ['{D15B034D-9C4E-459A-9735-E63973813C6F}']
    function Length: Int64;
    function Duration: Int64;
    function Thumb: ItgPhotoSize;
  end;

  ItgVoice = interface(ItgFile)
    ['{99D91D3C-FC16-40CA-BA72-EFA8F5D0F5F9}']
    function Duration: Int64;
    function MimeType: string;
  end;

  ItgContact = interface
    ['{57113A43-41E0-4846-9CBA-A355400E3938}']
    function PhoneNumber: string;
    function FirstName: string;
    function LastName: string;
    function UserId: Int64;
  end;

  ItgPollOption = interface
    ['{2D275027-A366-4D2E-A211-176A17DF2880}']
    function text : String;
    function voter_count: String;
  end;

  ItgPollAnswer = interface
    ['{E9FDBD08-6728-44AC-B9F8-31FAF9CD8669}']
    function poll_id: String;
    function user: ItgUser;
    function option_ids: TArray<Integer>;
  end;

  ItgPoll = interface
    ['{6FD83DB0-02CA-4840-9A40-CB257589EC3B}']
    function id : String;
    function question: String;
    function options: TArray<ItgPollOption>;
    function total_voter_count: Integer;
    function is_closed: Boolean;
    function is_anonymous: Boolean;
    function &type: String;
    function allows_multiple_answers: Boolean;
    function correct_option_id: Integer;
  end;

  ItgDice = interface
    ['{2B88A5D6-F4B6-40D5-A324-52B2B7CE999C}']
    function value: Integer;
  end;

  ItgLocation = interface
    ['{6FE14ED9-0C53-4C24-8033-390A5F31B414}']
    //
    function GetLongitude: Single;
    function GetLatitude: Single;
    procedure SetLatitude(const Value: Single);
    procedure SetLongitude(const Value: Single);
    //
    property Longitude: Single read GetLongitude write SetLongitude;
    property Latitude: Single read GetLatitude write SetLatitude;
  end;

  //Atualizado para versão 4.8
  ItgVenue = interface
    ['{26E74395-EAA1-4668-BB6A-A2B8F61DE6BF}']
    function Location: ItgLocation;
    function Title: string;
    function Address: string;
    function FoursquareId: string;
    function FoursquareType: string;
  end;

  ItgAnimation = interface
    ['{A0C6E374-590C-469B-AC76-F91135899FC5}']
    function FileId: string;
    function Thumb: ItgPhotoSize;
    function FileName: string;
    function MimeType: string;
    function FileSize: Int64;
  end;

  ItgGameHighScore = interface
    ['{19B46591-74A9-425F-BD3E-8342CE0B61C9}']
    function Position: Int64;
    function User: ItgUser;
    function Score: Int64;
  end;

  ItgGame = interface
    ['{29F4A7BE-07AB-4F9C-B7AE-1058B65F3AAD}']
    function Title: string;
    function Description: string;
    function Photo: TArray<ItgPhotoSize>;
    function Text: string;
    function TextEntities: TArray<ItgMessageEntity>;
    function Animation: ItgAnimation;
  end;

  ItgInvoice = interface
    ['{1D8923E1-068C-4747-84DE-A1B3B4674FD3}']
    function Title: string;
    function Description: string;
    function StartParameter: string;
    function Currency: string;
    function TotalAmount: Int64;
  end;

  ItgSuccessfulPayment = interface
    ['{B2BE36C2-61F9-4D4B-AB9D-75BB524661AB}']
    function Currency: string;
    function TotalAmount: Int64;
  end;

  ITgMessage = interface
    ['{66BC2558-00C0-4BDD-BDDE-E83249787B30}']
    function MessageId: Int64;
    function From: ItgUser;
    function Date: TDateTime;
    function Chat: ItgChat;
    function ForwardFrom: ItgUser;
    function ForwardFromChat: ItgChat;
    function ForwardFromMessageId: Int64;
    function ForwardSignature: string;
    function ForwardDate: TDateTime;
    function ReplyToMessage: ITgMessage;
    function EditDate: TDateTime;
    function AuthorSignature: string;
    function Text: string;
    function Entities: TArray<ItgMessageEntity>;
    function CaptionEntities: TArray<ItgMessageEntity>;
    function Audio: ItgAudio;
    function Document: ItgDocument;
    function Game: ItgGame;
    function Photo: TArray<ItgPhotoSize>;
    function Sticker: ItgSticker;
    function Video: ItgVideo;
    function Voice: ItgVoice;
    function VideoNote: ItgVideoNote;
    function NewChatMembers: TArray<ItgUser>;
    function Caption: string;
    function Contact: ItgContact;
    function Location: ItgLocation;
    function Venue: ItgVenue;
    function NewChatMember: ItgUser;
    function LeftChatMember: ItgUser;
    function NewChatTitle: string;
    function NewChatPhoto: TArray<ItgPhotoSize>;
    function DeleteChatPhoto: Boolean;
    function GroupChatCreated: Boolean;
    function SupergroupChatCreated: Boolean;
    function ChannelChatCreated: Boolean;
    function MigrateToChatId: Int64;
    function MigrateFromChatId: Int64;
    function PinnedMessage: ITgMessage;
    function Invoice: ItgInvoice;
    function SuccessfulPayment: ItgSuccessfulPayment;
    function ConnectedWebsite: string;
    function &Type: TtgMessageType;
    function IsCommand(const AValue: string): Boolean;
    //messages.getChats#3c6aa187 id:Vector<int> = messages.Chats;
   // messages.chatFull#e5d7d19c full_chat:ChatFull chats:Vector<Chat> users:Vector<User> = messages.ChatFull;
  end;

  ItgUserProfilePhotos = interface
    ['{DD667B04-15A3-47B1-A729-C75ED5BFE719}']
    function TotalCount: Int64;
    function Photos: TArray<TArray<ItgPhotoSize>>;
  end;

  ItgResponseParameters = interface
    ['{24701677-9BEB-42ED-8400-F465E4B2AECA}']
    function MigrateToChatId: Int64;
    function RetryAfter: Int64;
  end;

  ItgInlineQuery = interface
    ['{5DDE73CE-ABDF-47CE-8989-B62DF0543B02}']
    function ID: string;
    function From: ItgUser;
    function Query: string;
    function Offset: string;
  end;

  ItgChosenInlineResult = interface
    ['{0A293C7F-922D-4D9A-9CED-046942A20377}']
    function ResultId: string;
    function From: ItgUser;
    function Location: ItgLocation;
    function InlineMessageId: string;
    function Query: string;
  end;

  ItgCallbackQuery = interface
    ['{83D9BF94-033A-44BA-8AD5-DCE25937A7B3}']
    function ID: string;
    function From: ItgUser;
    function message: ITgMessage;
    function InlineMessageId: string;
    function Data: string;
    function GameShortName: string;
  end;

  ItgShippingAddress = interface
    ['{7AE45A81-A19B-4A7C-AB2B-DEC68F1498BF}']
    function CountryCode: string;
    function State: string;
    function City: string;
    function StreetLine1: string;
    function StreetLine2: string;
    function PostCode: string;
  end;

  ItgShippingQuery = interface
    ['{09C65D9A-6323-455C-9B16-37FB7C542394}']
    function ID: string;
    function From: ItgUser;
    function InvoicePayload: string;
    function ShippingAddress: ItgShippingAddress;
  end;

  ItgOrderInfo = interface
    ['{BE2FEF98-2DCD-489D-862C-A88EB1A60913}']
    function Name: string;
    function PhoneNumber: string;
    function Email: string;
    function ShippingAddress: ItgShippingAddress;
  end;

  ItgPreCheckoutQuery = interface
    ['{BB511CA3-3E28-4B30-A5FB-87FBFC07A599}']
    function ID: string;
    function From: ItgUser;
    function Currency: string;
    function TotalAmount: Int64;
    function InvoicePayload: string;
    function ShippingOptionId: string;
    function OrderInfo: ItgOrderInfo;
  end;

  ItgUpdate = interface
    ['{5D001F9B-B0BC-4A44-85E3-E0586DAAABD2}']
    function ID: Int64;
    function &message: ITgMessage;
    function EditedMessage: ITgMessage;
    function InlineQuery: ItgInlineQuery;
    function ChosenInlineResult: ItgChosenInlineResult;
    function CallbackQuery: ItgCallbackQuery;
    function ChannelPost: ITgMessage;
    function EditedChannelPost: ITgMessage;
    function ShippingQuery: ItgShippingQuery;
    function PreCheckoutQuery: ItgPreCheckoutQuery;
   // function PassportData:ItgPassportData;
    function &Type: TtgUpdateType;
  end;

  ItgLabeledPrice = interface
    ['{3EB70EDB-1D5D-42E4-AACD-A225316482E3}']
    function &label: string;
    function amount: Int64;
  end;

  ItgShippingOption = interface
    ['{1E1BCD22-8F26-4EA7-BDB6-770250DF5BF6}']
    function ID: string;
    function Title: string;
    function Prices: TArray<ItgLabeledPrice>;
  end;

  ItgWebhookInfo = interface
    ['{C77FA5C3-EF01-4571-AA1B-2BE80724BE3B}']
    function Url: string;
    function HasCustomCertificate: Boolean;
    function PendingUpdateCount: Int64;
    function LastErrorDate: TDateTime;
    function LastErrorMessage: string;
    function MaxConnections: Int64;
    function AllowedUpdates: TArray<string>;
  end;

  ILoginURL = Interface
    ['{DC372234-7B40-4EED-8FD6-362977BCDEE8}']
      function URL: String; //
      function ForwardText: String; //
      function BotUserName: String;
      function RequestWriteAccess: Boolean;
  End;

  ItgBotCommand = interface
    ['{D8F751A3-BEAF-4565-875D-1F5B5D78CA7C}']
    function Command: String;
    function Description: String;
  end;


  {$SCOPEDENUMS ON}

  TtgFileToSendTag = (ERROR = 254, ID = 0, FromURL = 1, FromFile = 2, FromStream = 3);
{$SCOPEDENUMS OFF}

  TtgFileToSend = class
  public
    Data: string;
    Content: TStream;
    Tag: TtgFileToSendTag;
    constructor Create(const ATag: TtgFileToSendTag = TtgFileToSendTag.ERROR;
      const AData: string = ''; AContent: TStream = nil);
    class function FromFile(const AFileName: string): TtgFileToSend;
    class function FromID(const AID: string): TtgFileToSend;
    class function FromURL(const AURL: string): TtgFileToSend;
    class function FromStream(const AContent: TStream; const AFileName: string):
      TtgFileToSend;
    class function Empty: TtgFileToSend;
    function IsEmpty: Boolean;
  end;

  TtgInputMedia = class
  private
    FType: string;
    FMedia: string;
    FCaption: string;
    FParseMode: string;
    [JSONMarshalled(False)]
    FFileToSend: TtgFileToSend;
  public
    function GetFileToSend: TtgFileToSend;
    constructor Create(AMedia: TtgFileToSend; const ACaption: string = ''); overload;  virtual;
    constructor Create(AType: String; AMedia: TtgFileToSend; const ACaption: string = ''); overload;
    [JsonName('type')]
    property &Type: string read FType write FType;
    property Media: string read FMedia write FMedia;
    property Caption: string read FCaption write FCaption;
    [JsonName('parse_mode')]
    property ParseMode: string read FParseMode write FParseMode;
  end;

  TtgInputMediaPhoto = class(TtgInputMedia)
  public
    constructor Create(AMedia: TtgFileToSend; const ACaption: string = ''); override;
  end;

  TtgInputMediaVideo = class(TtgInputMedia)
  private
    FWidth: Integer;
    FHeight: Integer;
    FDuration: Integer;
    FSupportsStreaming: Boolean;
  public
    constructor Create(AMedia: TtgFileToSend; const ACaption: string = '';
      AWidth: Integer = 0; AHeight: Integer = 0; ADuration: Integer = 0;
      ASupportsStreaming: Boolean = True); reintroduce;
    property Width: Integer read FWidth write FWidth;
    property Height: Integer read FHeight write FHeight;
    property Duration: Integer read FDuration write FDuration;
    [JsonName('supports_streaming')]
    property SupportsStreaming: Boolean read FSupportsStreaming write FSupportsStreaming;
  end;

  TtgUserLink = record
    ID: Int64;
    Username: string;
    class function FromID(const AID: Int64): TtgUserLink; static;
    class function FromUserName(const AUsername: string): TtgUserLink; static;
    class operator Implicit(AID: Int64): TtgUserLink;
    class operator Implicit(AUsername: string): TtgUserLink;
    function ToString: string;
    function IsIDEmpty: Boolean;
    function IsUsernameEmpty: Boolean;
  end;



implementation

uses
  System.SysUtils;

{ TtgInputMedia }

constructor TtgInputMedia.Create(AMedia: TtgFileToSend; const ACaption: string);
begin
  FCaption := ACaption;
  FFileToSend := AMedia;
  case AMedia.Tag of
    TtgFileToSendTag.ID, TtgFileToSendTag.FromURL:
      FMedia := ExtractFileName(AMedia.Data);
    TtgFileToSendTag.FromFile, TtgFileToSendTag.FromStream:
      FMedia := 'attach://' + ExtractFileName(AMedia.Data);
  end;
end;

constructor TtgInputMedia.Create(AType: String; AMedia: TtgFileToSend;
  const ACaption: string);
begin
  Self.Create(AMedia, ACaption);
  FType := AType;
end;

function TtgInputMedia.GetFileToSend: TtgFileToSend;
begin
  Result := FFileToSend;
end;

{ TtgInputMediaPhoto }

constructor TtgInputMediaPhoto.Create(AMedia: TtgFileToSend; const ACaption: string);
begin
  inherited Create(AMedia, ACaption);
  FType := 'photo';
end;

{ TtgInputMediaVideo }

constructor TtgInputMediaVideo.Create(AMedia: TtgFileToSend; const ACaption:
  string; AWidth, AHeight, ADuration: Integer; ASupportsStreaming: Boolean);
begin
  inherited Create(AMedia, ACaption);
  FType := 'video';
  FWidth := AWidth;
  FHeight := AHeight;
  FDuration := ADuration;
  Self.FSupportsStreaming := ASupportsStreaming;
end;

{ TtgFileToSend }

constructor TtgFileToSend.Create(const ATag: TtgFileToSendTag; const AData:
  string; AContent: TStream);
begin
  Tag := ATag;
  Data := AData;
  Content := AContent;
end;

class function TtgFileToSend.Empty: TtgFileToSend;
begin
  Result := TtgFileToSend.Create();
end;

class function TtgFileToSend.FromFile(const AFileName: string): TtgFileToSend;
begin
  if not FileExists(AFileName) then
    raise EFileNotFoundException.CreateFmt('File %S not found!', [AFileName]);
  Result := TtgFileToSend.Create(TtgFileToSendTag.FromFile, AFileName, nil);
end;

class function TtgFileToSend.FromID(const AID: string): TtgFileToSend;
begin
  Result := TtgFileToSend.Create(TtgFileToSendTag.ID, AID, nil);
end;

class function TtgFileToSend.FromStream(const AContent: TStream; const AFileName:
  string): TtgFileToSend;
begin
    // I guess, in most cases, AFilename param should contain a non-empty string.
    // It is odd to receive a file with filename and
    // extension which both are not connected with its content.
  if AFileName.IsEmpty then
    raise Exception.Create('TtgFileToSend: Filename is empty!');
  if not Assigned(AContent) then
    raise EStreamError.Create('Stream not assigned!');
  Result := TtgFileToSend.Create(TtgFileToSendTag.FromStream, AFileName, AContent);
end;

class function TtgFileToSend.FromURL(const AURL: string): TtgFileToSend;
begin
  Result := TtgFileToSend.Create(TtgFileToSendTag.FromURL, AURL, nil);
end;

function TtgFileToSend.IsEmpty: Boolean;
begin
  Result := Data.IsEmpty and not Assigned(Content);
end;

{ TtgUserLink }

class function TtgUserLink.FromID(const AID: Int64): TtgUserLink;
begin
  Result.ID := AID;
end;

class function TtgUserLink.FromUserName(const AUsername: string): TtgUserLink;
begin
  Result.Username := AUsername;
end;

class operator TtgUserLink.Implicit(AUsername: string): TtgUserLink;
begin
  Result := TtgUserLink.FromUserName(AUsername);
end;

function TtgUserLink.IsIDEmpty: Boolean;
begin
  if ID = 0 then
    result := True
  Else
    result := False;
end;

function TtgUserLink.IsUsernameEmpty: Boolean;
begin
  if Username = '' then
    Result := True
  Else
    Result := False;
end;

function TtgUserLink.ToString: string;
begin
  if Username.IsEmpty then
    Result := ID.ToString
  else
    Result := Username;
end;

class operator TtgUserLink.Implicit(AID: Int64): TtgUserLink;
begin
  Result := TtgUserLink.FromID(AID);
end;

End.

