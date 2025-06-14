#!/bin/sh

# Create the config file with environment variables
cat > /opt/data/MinecraftClient.ini << EOL
# Startup Config File
# Please do not record extraneous data in this file as it will be overwritten by MCC.
# 
# New to Minecraft Console Client? Check out this document: https://mccteam.github.io/g/conf.html
# Want to upgrade to a newer version? See https://github.com/MCCTeam/Minecraft-Console-Client/#download
[Head]
"Current Version" = "GitHub build 285, built on 2025-05-22 from commit f785f50"
"Latest Version" = "GitHub build 285, built on 2025-05-22"

[Main]
Login = "${MINECRAFT_USERNAME}"
Password = "${MINECRAFT_PASSWORD}"
ServerIP = "${MINECRAFT_SERVER_IP}"
ServerPort = 25565
AccountType = "${MINECRAFT_ACCOUNT_TYPE:-microsoft}"
Method = "${MINECRAFT_METHOD:-mcc}"
AuthServer = ""
AuthServerPort = 443

[Main.Advanced]
EnableSentry = true
Language = "en_us"
LoadMccTranslation = true
"Console Title" = "%username%@%serverip% - Minecraft Console Client"
InternalCmdChar = "slash"
MessageCooldown = 1.0
BotOwners = "player1, player2"
MinecraftVersion = "1.20.4"
EnableForge = "no"
BrandInfo = "mcc"
ChatbotLogFile = ""
PrivateMsgsCmdName = "tell"
ShowSystemMessages = true
ShowXPBarMessages = true
ShowChatLinks = true
ShowInventoryLayout = true
TerrainAndMovements = false
MoveHeadWhileWalking = true
MovementSpeed = 2
TemporaryFixBadpacket = false
InventoryHandling = false
EntityHandling = false
SessionCache = "disk"
ProfileKeyCache = "disk"
ResolveSrvRecords = "fast"
PlayerHeadAsIcon = true
ExitOnFailure = false
CacheScript = true
Timestamps = false
AutoRespawn = true
MinecraftRealms = false
TcpTimeout = 30
EnableEmoji = true
MinTerminalWidth = 16
MinTerminalHeight = 10
IgnoreInvalidPlayerName = true

[Signature]
LoginWithSecureProfile = true
SignChat = true
SignMessageInCommand = true
MarkLegallySignedMsg = true
MarkModifiedMsg = true
MarkIllegallySignedMsg = true
MarkSystemMessage = true
ShowModifiedChat = true
ShowIllegalSignedChat = true

[Logging]
DebugMessages = false
ChatMessages = true
InfoMessages = true
WarningMessages = true
ErrorMessages = true
ChatFilterRegex = ".*"
DebugFilterRegex = ".*"
FilterMode = "disable"
LogToFile = false
LogFile = "console-log.txt"
PrependTimestamp = false
SaveColorCodes = false

[Console]
ConsoleColorMode = "vt100_24bit"
Display_Input = true
History_Input_Records = 32

[Console.CommandSuggestion]
Enable = true
Enable_Color = true
Use_Basic_Arrow = false
Max_Suggestion_Width = 30
Max_Displayed_Suggestions = 6
Text_Color = "#f8fafc"
Text_Background_Color = "#64748b"
Highlight_Text_Color = "#334155"
Highlight_Text_Background_Color = "#fde047"
Tooltip_Color = "#7dd3fc"
Highlight_Tooltip_Color = "#3b82f6"
Arrow_Symbol_Color = "#d1d5db"

[AppVar]
your_var = "your_value"
"your var 2" = "your value 2"

[Proxy]
Enabled_Update = false
Enabled_Login = false
Enabled_Ingame = false
Server = "0.0.0.0"
Port = 8080
Proxy_Type = "HTTP"
Username = ""
Password = ""

[MCSettings]
Enabled = true
Locale = "en_US"
RenderDistance = 8
Difficulty = "peaceful"
ChatMode = "enabled"
ChatColors = true
MainHand = "left"

[MCSettings.Skin]
Cape = true
Hat = true
Jacket = false
Sleeve_Left = false
Sleeve_Right = false
Pants_Left = false
Pants_Right = false

[ChatFormat]
Builtins = true
UserDefined = false
Public = "^<([a-zA-Z0-9_]+)> (.+)$"
Private = "^([a-zA-Z0-9_]+) whispers to you: (.+)$"
TeleportRequest = '^([a-zA-Z0-9_]+) has requested (?:to|that you) teleport to (?:you|them)\.$'

[ChatBot]
[ChatBot.Alerts]
Enabled = false
Beep_Enabled = true
Trigger_By_Words = false
Trigger_By_Rain = false
Trigger_By_Thunderstorm = false
Log_To_File = false
Log_File = "alerts-log.txt"
Matches = "Yourname, whispers, -> me, admin, .com"
Excludes = "myserver.com, Yourname>:, Player Yourname, Yourname joined, Yourname left, [Lockette] (Admin),  Yourname:, Yourname is"

[ChatBot.AntiAFK]
Enabled = true
Delay = 60.0
Command = "/ping"
Use_Sneak = false
Use_Terrain_Handling = false
Walk_Range = 5
Walk_Retries = 20

[ChatBot.AutoAttack]
Enabled = false
Mode = "single"
Priority = "distance"
Cooldown_Time = 1.0
Interaction = "Attack"
Attack_Range = 4.0
Attack_Hostile = true
Attack_Passive = false
List_Mode = "whitelist"
Entites_List = "Zombie, Cow"

[ChatBot.AutoCraft]
Enabled = false
CraftingTable = "123.0, 65.0, 456.0"
OnFailure = "abort"

[ChatBot.AutoDig]
Enabled = false
Mode = "lookat"
Locations = "123.5, 64.0, 234.5; 124.5, 63.0, 235.5"
Location_Order = "distance"
Auto_Start_Delay = 3.0
Dig_Timeout = 60.0
Log_Block_Dig = true
List_Type = "whitelist"
Blocks = "Cobblestone, Stone"

[ChatBot.AutoDrop]
Enabled = false
Mode = "include"
Items = "Cobblestone, Dirt"

[ChatBot.AutoEat]
Enabled = false
Threshold = 6

[ChatBot.AutoFishing]
Enabled = false
Antidespawn = false
Mainhand = true
Auto_Start = true
Cast_Delay = 0.4
Fishing_Delay = 3.0
Fishing_Timeout = 300.0
Durability_Limit = 2.0
Auto_Rod_Switch = true
Stationary_Threshold = 0.001
Hook_Threshold = 0.2
Log_Fish_Bobber = false
Enable_Move = false

[ChatBot.AutoRelog]
Enabled = true
Delay = 3.0
Retries = 10
Ignore_Kick_Message = true
Kick_Messages = "connection has been lost, server is restarting, server is full, too many people"

[ChatBot.AutoRespond]
Enabled = false
Matches_File = "matches.ini"
Match_Colors = false

[ChatBot.ChatLog]
Enabled = false
Add_DateTime = true
Log_File = "chatlog-%username%-%serverip%.txt"
Filter = "messages"

[ChatBot.DiscordBridge]
Enabled = false
Token = ""
GuildId = 0
ChannelId = 0
OwnersIds = ""
Message_Send_Timeout = 3
PrivateMessageFormat = "**[Private Message]** {username}: {message}"
PublicMessageFormat = "{username}: {message}"
TeleportRequestMessageFormat = "A new Teleport Request from **{username}**!"

[ChatBot.Farmer]
Enabled = false
Delay_Between_Tasks = 1.0

[ChatBot.FollowPlayer]
Enabled = false
Update_Limit = 1.5
Stop_At_Distance = 3.0

[ChatBot.HangmanGame]
Enabled = false
English = true
FileWords_EN = "hangman-en.txt"
FileWords_FR = "hangman-fr.txt"

[ChatBot.Mailer]
Enabled = false
DatabaseFile = "MailerDatabase.ini"
IgnoreListFile = "MailerIgnoreList.ini"
PublicInteractions = false
MaxMailsPerPlayer = 10
MaxDatabaseSize = 10000
MailRetentionDays = 30

[ChatBot.Map]
Enabled = false
Render_In_Console = true
Save_To_File = false
Auto_Render_On_Update = false
Delete_All_On_Unload = true
Notify_On_First_Update = true
Rasize_Rendered_Image = false
Resize_To = 512
Send_Rendered_To_Discord = false
Send_Rendered_To_Telegram = false

[ChatBot.PlayerListLogger]
Enabled = false
File = "playerlog.txt"
Delay = 60.0

[ChatBot.RemoteControl]
Enabled = false
AutoTpaccept = true
AutoTpaccept_Everyone = false

[ChatBot.ReplayCapture]
Enabled = false
Backup_Interval = 300.0

[ChatBot.ScriptScheduler]
Enabled = true

[ChatBot.TelegramBridge]
Enabled = false
Token = ""
ChannelId = ""
Authorized_Chat_Ids = ""
Message_Send_Timeout = 3
PrivateMessageFormat = "*(Private Message)* {username}: {message}"
PublicMessageFormat = "{username}: {message}"
TeleportRequestMessageFormat = "A new Teleport Request from **{username}**!"

[ChatBot.ItemsCollector]
Enabled = false
Collect_All_Item_Types = true
Items_Whitelist = "Diamond, NetheriteIngot"
Delay_Between_Tasks = 300
Collection_Radius = 30.0
Always_Return_To_Start = true
Prioritize_Clusters = false
EOL

# Start the Minecraft client
exec /opt/start-latest.sh 