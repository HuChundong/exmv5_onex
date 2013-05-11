.class public Lcom/android/internal/telephony/cdma/HtcCdmaModifier;
.super Ljava/lang/Object;
.source "HtcCdmaModifier.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final SDBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcCdmaModifier"

.field private static final htcCarrierIdWithProjectFlag:[I = null

.field private static final mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String; = null

.field private static final mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen1:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen11:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen2:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlen4:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_BSTlenVari:[[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen1:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen11:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen2:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen3:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlen4:[Ljava/lang/String; = null

.field private static final mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String; = null

.field public static final mEmergencyDisplay_Sprint:Ljava/lang/String; = "9-1-1 Emergency"

.field private static final sBillPay:Ljava/lang/String; = "Bill Pay"

.field private static final sBoostCare:Ljava/lang/String; = "Boost Care"

.field private static final sBoostCare_num:Ljava/lang/String; = "18882667848"

.field private static final sCallBalance:Ljava/lang/String; = "Call Balance"

.field private static final sCallBeforeYouDig:Ljava/lang/String; = "Call Before You Dig"

.field private static final sCallCare:Ljava/lang/String; = "Call Care"

.field private static final sCallReboost:Ljava/lang/String; = "Call Reboost"

.field private static sCallerNumberOverwritten_lenVari:[[Ljava/lang/String; = null

.field private static final sCareService:Ljava/lang/String; = "Care Services"

.field private static final sCarrierServiceRepair:Ljava/lang/String; = "Carrier Service Repair"

.field private static final sCommunityInformation:Ljava/lang/String; = "Community Information"

.field private static final sCustomerService:Ljava/lang/String; = "Customer Service"

.field private static final sDirectoryAssistance:Ljava/lang/String; = "Directory Assistance"

.field private static final sEmergencyDisplay:Ljava/lang/String; = "9-1-1 Emergency"

.field private static final sNonEmergencyServices:Ljava/lang/String; = "Non-Emergency Services"

.field private static final sOperator:Ljava/lang/String; = "Operator"

.field private static final sSprintDirectoryAssistance:Ljava/lang/String; = "Sprint Directory Assistance"

.field private static final sSprintOperator:Ljava/lang/String; = "Sprint Operator"

.field private static final sSprintWirelessAccountInformation:Ljava/lang/String; = "Sprint Wireless Account Information"

.field private static final sTRSRelayTTY:Ljava/lang/String; = "TRS Relay for TTY"

.field private static final sTrafficInformation:Ljava/lang/String; = "Traffic Information"

.field private static final sVMCare:Ljava/lang/String; = "Virgin Mobile Care"

.field private static final sVMCare_num:Ljava/lang/String; = "18883221122"

.field private static final sVoiceMail:Ljava/lang/String; = "Voicemail"

.field private static final sWirelessAccountInformation:Ljava/lang/String; = "Wireless Account Information"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 40
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    .line 88
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    const-string v2, "Sprint Operator"

    aput-object v2, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "Voicemail"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String;

    .line 101
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#3"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*2"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "Customer Service"

    aput-object v3, v0, v2

    const-string v2, "*3"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "Bill Pay"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "*4"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Sprint Wireless Account Information"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String;

    .line 109
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "211"

    aput-object v2, v0, v4

    const-string v2, "Community Information"

    aput-object v2, v0, v5

    const-string v2, "311"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "Non-Emergency Services"

    aput-object v3, v0, v2

    const-string v2, "411"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "Sprint Directory Assistance"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "511"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Traffic Information"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "611"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Carrier Service Repair"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "711"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "TRS Relay for TTY"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "811"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Call Before You Dig"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "911"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "#38"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    const-string v3, "*55"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v2, 0x14

    const-string v3, "722"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String;

    .line 124
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#399"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "#911"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    const-string v2, "*477"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    const-string v3, "*700"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    const-string v3, "*911"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String;

    .line 133
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "#2896"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*8477"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String;

    .line 139
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen1:[Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen2:[Ljava/lang/String;

    aput-object v2, v0, v6

    const/4 v2, 0x3

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen3:[Ljava/lang/String;

    aput-object v3, v0, v2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen4:[Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x5

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_Sprintlen5:[Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String;

    .line 154
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "Voicemail"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen1:[Ljava/lang/String;

    .line 160
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "*2"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*4"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen2:[Ljava/lang/String;

    .line 166
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "211"

    aput-object v2, v0, v4

    const-string v2, "Community Information"

    aput-object v2, v0, v5

    const-string v2, "311"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "Non-Emergency Services"

    aput-object v3, v0, v2

    const-string v2, "411"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "511"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Traffic Information"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "611"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "711"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "TRS Relay for TTY"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "811"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Call Before You Dig"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "911"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "*86"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "Call Care"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen3:[Ljava/lang/String;

    .line 179
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#911"

    aput-object v2, v0, v4

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v5

    const-string v2, "*911"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    const-string v2, "*611"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "#611"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "*411"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "#411"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen4:[Ljava/lang/String;

    .line 189
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "18883221122"

    aput-object v2, v0, v4

    const-string v2, "Virgin Mobile Care"

    aput-object v2, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen11:[Ljava/lang/String;

    .line 194
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen1:[Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen2:[Ljava/lang/String;

    aput-object v2, v0, v6

    const/4 v2, 0x3

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen3:[Ljava/lang/String;

    aput-object v3, v0, v2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen4:[Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlen11:[Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String;

    .line 217
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "1"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "Voicemail"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen1:[Ljava/lang/String;

    .line 223
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "*2"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v2, "*4"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen2:[Ljava/lang/String;

    .line 229
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "211"

    aput-object v2, v0, v4

    const-string v2, "Community Information"

    aput-object v2, v0, v5

    const-string v2, "225"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "Call Balance"

    aput-object v3, v0, v2

    const-string v2, "233"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "Call Reboost"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "311"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Non-Emergency Services"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "411"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "511"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "Traffic Information"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "611"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "711"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "TRS Relay for TTY"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "811"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "Call Before You Dig"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "911"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen3:[Ljava/lang/String;

    .line 243
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "#911"

    aput-object v2, v0, v4

    const-string v2, "9-1-1 Emergency"

    aput-object v2, v0, v5

    const-string v2, "*911"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "9-1-1 Emergency"

    aput-object v3, v0, v2

    const-string v2, "*611"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "#611"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "Care Services"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "*225"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Call Balance"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "#225"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "Call Balance"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "*233"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Call Reboost"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "#233"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "Call Reboost"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "*411"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "#411"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "Directory Assistance"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen4:[Ljava/lang/String;

    .line 258
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "18882667848"

    aput-object v2, v0, v4

    const-string v2, "Boost Care"

    aput-object v2, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen11:[Ljava/lang/String;

    .line 263
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen1:[Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen2:[Ljava/lang/String;

    aput-object v2, v0, v6

    const/4 v2, 0x3

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen3:[Ljava/lang/String;

    aput-object v3, v0, v2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen4:[Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlen11:[Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlenVari:[[Ljava/lang/String;

    .line 284
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v0, v2, :cond_0

    .line 285
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_SprintlenVari:[[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    .line 303
    :goto_0
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "*2"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    const-string v1, "*4"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "Sprint Wireless Account Information"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    .line 308
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "211"

    aput-object v1, v0, v4

    const-string v1, "Community Information"

    aput-object v1, v0, v5

    const-string v1, "411"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "Sprint Directory Assistance"

    aput-object v2, v0, v1

    const-string v1, "511"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Traffic Information"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "611"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Carrier Service Repair"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "711"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TRS Relay for TTY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "811"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Call Before You Dig"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String;

    .line 981
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->htcCarrierIdWithProjectFlag:[I

    return-void

    .line 286
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-ne v0, v2, :cond_1

    .line 287
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_VMlenVari:[[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 289
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallerNumberOverwritten_BSTlenVari:[[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 291
    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    goto :goto_0

    .line 981
    nop

    :array_0
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertProjectFlagToCarrierId()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->htcCarrierIdWithProjectFlag:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 989
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->htcCarrierIdWithProjectFlag:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v2, :cond_0

    .line 990
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->htcCarrierIdWithProjectFlag:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 993
    :goto_1
    return-object v1

    .line 988
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 993
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getACGServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 517
    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcCdmaModifier"

    const-string v3, "getACGServiceName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    if-nez p0, :cond_2

    .line 561
    :cond_1
    :goto_0
    return-object v1

    .line 524
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 525
    .local v0, lenNumber:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 527
    const-string v2, "611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 529
    const-string v1, "Customer Service"

    goto :goto_0

    .line 531
    :cond_3
    const-string v2, "411"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 533
    const-string v1, "Directory Service"

    goto :goto_0

    .line 536
    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 538
    const-string v2, "#646"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 540
    const-string v1, "Minute Usage"

    goto :goto_0

    .line 542
    :cond_5
    const-string v2, "#729"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 544
    const-string v1, "Bill Payment"

    goto :goto_0

    .line 547
    :cond_6
    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 549
    const-string v2, "#2455"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 551
    const-string v1, "Account Balance"

    goto :goto_0

    .line 554
    :cond_7
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 556
    const-string v2, "#78676"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 558
    const-string v1, "Emergency Weather"

    goto :goto_0
.end method

.method public static getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 467
    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcCdmaModifier"

    const-string v3, "getCellSouthCallerName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    if-nez p0, :cond_2

    .line 511
    :cond_1
    :goto_0
    return-object v1

    .line 474
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 475
    .local v0, lenNumber:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 477
    const-string v2, "611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 479
    const-string v1, "Cellular South Customer Service"

    goto :goto_0

    .line 481
    :cond_3
    const-string v2, "411"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 483
    const-string v1, "Directory Service"

    goto :goto_0

    .line 486
    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 488
    const-string v2, "#646"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 490
    const-string v1, "Cellular South Minute Usage"

    goto :goto_0

    .line 492
    :cond_5
    const-string v2, "#729"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 494
    const-string v1, "Cellular South Bill Payment"

    goto :goto_0

    .line 497
    :cond_6
    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 499
    const-string v2, "#2455"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 501
    const-string v1, "Cellular South Account Balance"

    goto :goto_0

    .line 504
    :cond_7
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 506
    const-string v2, "#78676"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 508
    const-string v1, "Cellular South Emergency Weather"

    goto :goto_0
.end method

.method private static getMccByNVvalue(II)Ljava/lang/String;
    .locals 1
    .parameter "mcc"
    .parameter "nvValue"

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 729
    .local v0, givenMcc:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 777
    :goto_0
    return-object v0

    .line 731
    :sswitch_0
    const-string v0, "302"

    goto :goto_0

    .line 733
    :sswitch_1
    const-string v0, "311"

    goto :goto_0

    .line 735
    :sswitch_2
    const-string v0, "302"

    goto :goto_0

    .line 737
    :sswitch_3
    const-string v0, "734"

    goto :goto_0

    .line 742
    :sswitch_4
    const-string v0, "310"

    goto :goto_0

    .line 743
    :sswitch_5
    const-string v0, "311"

    goto :goto_0

    .line 745
    :sswitch_6
    const-string v0, "310"

    goto :goto_0

    .line 746
    :sswitch_7
    const-string v0, "311"

    goto :goto_0

    .line 747
    :sswitch_8
    const-string v0, "310"

    goto :goto_0

    .line 748
    :sswitch_9
    const-string v0, "311"

    goto :goto_0

    .line 749
    :sswitch_a
    const-string v0, "310"

    goto :goto_0

    .line 751
    :sswitch_b
    const-string v0, "311"

    goto :goto_0

    .line 754
    :sswitch_c
    const-string v0, "310"

    goto :goto_0

    .line 756
    :sswitch_d
    const-string v0, "311"

    goto :goto_0

    .line 758
    :sswitch_e
    const-string v0, "310"

    goto :goto_0

    .line 760
    :sswitch_f
    const-string v0, "311"

    goto :goto_0

    .line 761
    :sswitch_10
    const-string v0, "310"

    goto :goto_0

    .line 762
    :sswitch_11
    const-string v0, "311"

    goto :goto_0

    .line 763
    :sswitch_12
    const-string v0, "310"

    goto :goto_0

    .line 764
    :sswitch_13
    const-string v0, "311"

    goto :goto_0

    .line 766
    :sswitch_14
    const-string v0, "310"

    goto :goto_0

    .line 767
    :sswitch_15
    const-string v0, "311"

    goto :goto_0

    .line 768
    :sswitch_16
    const-string v0, "310"

    goto :goto_0

    .line 769
    :sswitch_17
    const-string v0, "311"

    goto :goto_0

    .line 770
    :sswitch_18
    const-string v0, "311"

    goto :goto_0

    .line 775
    :sswitch_19
    const-string v0, "310"

    goto :goto_0

    .line 729
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xd -> :sswitch_9
        0xf -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_c
        0x1a -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_6
        0x68 -> :sswitch_f
        0x69 -> :sswitch_12
        0x6b -> :sswitch_f
        0x6c -> :sswitch_c
        0x6d -> :sswitch_6
        0x6e -> :sswitch_10
        0x6f -> :sswitch_7
        0x70 -> :sswitch_4
        0x71 -> :sswitch_d
        0x72 -> :sswitch_19
        0x73 -> :sswitch_17
        0x74 -> :sswitch_b
        0x75 -> :sswitch_14
        0x77 -> :sswitch_b
        0x78 -> :sswitch_18
        0x79 -> :sswitch_11
        0x7a -> :sswitch_13
        0x7b -> :sswitch_d
        0x7c -> :sswitch_e
        0x7d -> :sswitch_15
        0x7e -> :sswitch_19
        0x7f -> :sswitch_8
        0x80 -> :sswitch_e
        0x81 -> :sswitch_a
        0x82 -> :sswitch_16
        0x83 -> :sswitch_19
        0x84 -> :sswitch_14
        0x85 -> :sswitch_c
        0x86 -> :sswitch_19
        0x87 -> :sswitch_19
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMccMncByCarrierId(I)Ljava/lang/String;
    .locals 4
    .parameter "nvValue"

    .prologue
    const/4 v2, 0x0

    .line 705
    if-eqz p0, :cond_0

    .line 707
    const/4 v3, 0x0

    invoke-static {v3, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMccByNVvalue(II)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, mcc:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 721
    .end local v0           #mcc:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 714
    .restart local v0       #mcc:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, mnc:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "mcc"
    .parameter "nvValue"

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 788
    .local v0, mnc:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 872
    :goto_0
    if-nez v0, :cond_0

    .line 873
    const-string v0, "00"

    .line 876
    :cond_0
    return-object v0

    .line 790
    :sswitch_0
    const-string v1, "310"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    const-string v0, "012"

    goto :goto_0

    .line 794
    :cond_1
    const-string v0, "280"

    .line 796
    goto :goto_0

    .line 798
    :sswitch_1
    const-string v0, "120"

    goto :goto_0

    .line 800
    :sswitch_2
    const-string v0, "86"

    goto :goto_0

    .line 802
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 804
    :sswitch_4
    const-string v0, "270"

    goto :goto_0

    .line 806
    :sswitch_5
    const/4 v0, 0x0

    goto :goto_0

    .line 808
    :sswitch_6
    const/4 v0, 0x0

    goto :goto_0

    .line 810
    :sswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 812
    :sswitch_8
    const-string v0, "470"

    goto :goto_0

    .line 814
    :sswitch_9
    const/4 v0, 0x0

    goto :goto_0

    .line 816
    :sswitch_a
    const-string v0, "68"

    goto :goto_0

    .line 818
    :sswitch_b
    const-string v0, "280"

    goto :goto_0

    .line 820
    :sswitch_c
    const-string v0, "06"

    goto :goto_0

    .line 822
    :sswitch_d
    const/4 v0, 0x0

    goto :goto_0

    .line 824
    :sswitch_e
    const/4 v0, 0x0

    goto :goto_0

    .line 826
    :sswitch_f
    const-string v0, "600"

    goto :goto_0

    .line 828
    :sswitch_10
    const/4 v0, 0x0

    goto :goto_0

    .line 830
    :sswitch_11
    const-string v0, "130"

    goto :goto_0

    .line 832
    :sswitch_12
    const/4 v0, 0x0

    goto :goto_0

    .line 834
    :sswitch_13
    const/4 v0, 0x0

    goto :goto_0

    .line 837
    :sswitch_14
    const-string v0, "050"

    goto :goto_0

    .line 838
    :sswitch_15
    const-string v0, "430"

    goto :goto_0

    .line 839
    :sswitch_16
    const-string v0, "750"

    goto :goto_0

    .line 840
    :sswitch_17
    const-string v0, "440"

    goto :goto_0

    .line 841
    :sswitch_18
    const-string v0, "600"

    goto :goto_0

    .line 843
    :sswitch_19
    const-string v0, "430"

    goto :goto_0

    .line 845
    :sswitch_1a
    const-string v0, "230"

    goto :goto_0

    .line 846
    :sswitch_1b
    const-string v0, "280"

    goto :goto_0

    .line 847
    :sswitch_1c
    const-string v0, "590"

    goto :goto_0

    .line 848
    :sswitch_1d
    const-string v0, "340"

    goto :goto_0

    .line 849
    :sswitch_1e
    const-string v0, "580"

    goto :goto_0

    .line 851
    :sswitch_1f
    const-string v0, "92"

    goto :goto_0

    .line 852
    :sswitch_20
    const-string v0, "310"

    goto :goto_0

    .line 853
    :sswitch_21
    const-string v0, "410"

    goto :goto_0

    .line 855
    :sswitch_22
    const-string v0, "010"

    goto :goto_0

    .line 856
    :sswitch_23
    const-string v0, "100"

    goto :goto_0

    .line 857
    :sswitch_24
    const-string v0, "420"

    goto :goto_0

    .line 859
    :sswitch_25
    const-string v0, "450"

    goto :goto_0

    .line 860
    :sswitch_26
    const-string v0, "360"

    goto :goto_0

    .line 861
    :sswitch_27
    const-string v0, "350"

    goto :goto_0

    .line 862
    :sswitch_28
    const-string v0, "960"

    goto :goto_0

    .line 863
    :sswitch_29
    const-string v0, "960"

    goto/16 :goto_0

    .line 864
    :sswitch_2a
    const-string v0, "610"

    goto/16 :goto_0

    .line 865
    :sswitch_2b
    const-string v0, "960"

    goto/16 :goto_0

    .line 866
    :sswitch_2c
    const-string v0, "050"

    goto/16 :goto_0

    .line 868
    :sswitch_2d
    const-string v0, "440"

    goto/16 :goto_0

    .line 870
    :sswitch_2e
    const-string v0, "930"

    goto/16 :goto_0

    .line 788
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_10
        0x7 -> :sswitch_3
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xd -> :sswitch_1a
        0xf -> :sswitch_c
        0x12 -> :sswitch_5
        0x13 -> :sswitch_12
        0x18 -> :sswitch_14
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_17
        0x1b -> :sswitch_6
        0x65 -> :sswitch_16
        0x66 -> :sswitch_18
        0x68 -> :sswitch_23
        0x69 -> :sswitch_26
        0x6b -> :sswitch_24
        0x6c -> :sswitch_d
        0x6d -> :sswitch_11
        0x6e -> :sswitch_8
        0x6f -> :sswitch_19
        0x70 -> :sswitch_15
        0x71 -> :sswitch_21
        0x72 -> :sswitch_2d
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_1c
        0x75 -> :sswitch_28
        0x76 -> :sswitch_7
        0x77 -> :sswitch_1d
        0x78 -> :sswitch_f
        0x79 -> :sswitch_25
        0x7a -> :sswitch_27
        0x7b -> :sswitch_20
        0x7c -> :sswitch_22
        0x7d -> :sswitch_2a
        0x7e -> :sswitch_13
        0x81 -> :sswitch_1b
        0x82 -> :sswitch_2b
        0x84 -> :sswitch_29
        0x85 -> :sswitch_1f
        0x87 -> :sswitch_2e
        0xc9 -> :sswitch_a
        0xca -> :sswitch_b
        0xcb -> :sswitch_e
    .end sparse-switch
.end method

.method public static getOperatorByCarrierId(I)Ljava/lang/String;
    .locals 1
    .parameter "nvValue"

    .prologue
    .line 885
    if-nez p0, :cond_0

    .line 887
    const/4 v0, 0x0

    .line 977
    :goto_0
    return-object v0

    .line 890
    :cond_0
    const/4 v0, 0x0

    .line 892
    .local v0, name:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 918
    :sswitch_0
    const-string v0, "China Telecom"

    .line 919
    goto :goto_0

    .line 894
    :sswitch_1
    const-string v0, "Verizon"

    .line 895
    goto :goto_0

    .line 897
    :sswitch_2
    const-string v0, "sprint"

    .line 898
    goto :goto_0

    .line 900
    :sswitch_3
    const-string v0, "Telus"

    .line 901
    goto :goto_0

    .line 903
    :sswitch_4
    const-string v0, "Bill Mobility"

    .line 904
    goto :goto_0

    .line 906
    :sswitch_5
    const-string v0, "AllTel"

    .line 907
    goto :goto_0

    .line 909
    :sswitch_6
    const-string v0, "Reliance"

    .line 910
    goto :goto_0

    .line 912
    :sswitch_7
    const-string v0, "USC"

    .line 913
    goto :goto_0

    .line 915
    :sswitch_8
    const-string v0, "MTS"

    .line 916
    goto :goto_0

    .line 921
    :sswitch_9
    const-string v0, "PantherC Sask"

    .line 922
    goto :goto_0

    .line 924
    :sswitch_a
    const-string v0, "PantherC Centennial"

    .line 925
    goto :goto_0

    .line 927
    :sswitch_b
    const-string v0, "Movilnet"

    .line 928
    goto :goto_0

    .line 930
    :sswitch_c
    const-string v0, "PantherC MTS"

    .line 931
    goto :goto_0

    .line 933
    :sswitch_d
    const-string v0, "APBW"

    .line 934
    goto :goto_0

    .line 936
    :sswitch_e
    const-string v0, "PLS"

    .line 937
    goto :goto_0

    .line 940
    :sswitch_f
    const-string v0, "ACS"

    goto :goto_0

    .line 941
    :sswitch_10
    const-string v0, "Alaska Digital"

    goto :goto_0

    .line 942
    :sswitch_11
    const-string v0, "Appalachian"

    goto :goto_0

    .line 943
    :sswitch_12
    const-string v0, "Bluegrass"

    goto :goto_0

    .line 944
    :sswitch_13
    const-string v0, "Cellcom"

    goto :goto_0

    .line 945
    :sswitch_14
    const-string v0, "Carolina West"

    goto :goto_0

    .line 946
    :sswitch_15
    const-string v0, "Cellular 29"

    goto :goto_0

    .line 947
    :sswitch_16
    const-string v0, "Cellular One Nepa"

    goto :goto_0

    .line 948
    :sswitch_17
    const-string v0, "Cellular South"

    goto :goto_0

    .line 949
    :sswitch_18
    const-string v0, "Centennial PR"

    goto :goto_0

    .line 950
    :sswitch_19
    const-string v0, "Golden State"

    goto :goto_0

    .line 951
    :sswitch_1a
    const-string v0, "Illionois Valley"

    goto :goto_0

    .line 952
    :sswitch_1b
    const-string v0, "Inland"

    goto :goto_0

    .line 953
    :sswitch_1c
    const-string v0, "Iusacell"

    goto :goto_0

    .line 954
    :sswitch_1d
    const-string v0, "James Valley"

    goto :goto_0

    .line 955
    :sswitch_1e
    const-string v0, "Leaco"

    goto :goto_0

    .line 956
    :sswitch_1f
    const-string v0, "Lyrix (now Chat Mobility)"

    goto :goto_0

    .line 957
    :sswitch_20
    const-string v0, "Midrivers"

    goto :goto_0

    .line 958
    :sswitch_21
    const-string v0, "MTA"

    goto :goto_0

    .line 959
    :sswitch_22
    const-string v0, "Nex-Tech"

    goto :goto_0

    .line 960
    :sswitch_23
    const-string v0, "Northwest MO"

    goto :goto_0

    .line 961
    :sswitch_24
    const-string v0, "nTelos"

    goto :goto_0

    .line 962
    :sswitch_25
    const-string v0, "Panhandle"

    goto :goto_0

    .line 963
    :sswitch_26
    const-string v0, "Pioneer"

    goto :goto_0

    .line 964
    :sswitch_27
    const-string v0, "Sagebrush"

    goto :goto_0

    .line 965
    :sswitch_28
    const-string v0, "Silverstar"

    goto :goto_0

    .line 966
    :sswitch_29
    const-string v0, "South Central"

    goto/16 :goto_0

    .line 967
    :sswitch_2a
    const-string v0, "SRT Communications"

    goto/16 :goto_0

    .line 968
    :sswitch_2b
    const-string v0, "Syringa"

    goto/16 :goto_0

    .line 969
    :sswitch_2c
    const-string v0, "Thumb"

    goto/16 :goto_0

    .line 970
    :sswitch_2d
    const-string v0, "Unicel"

    goto/16 :goto_0

    .line 971
    :sswitch_2e
    const-string v0, "United"

    goto/16 :goto_0

    .line 972
    :sswitch_2f
    const-string v0, "Open Mobile"

    goto/16 :goto_0

    .line 973
    :sswitch_30
    const-string v0, "Cooper valley"

    goto/16 :goto_0

    .line 974
    :sswitch_31
    const-string v0, "Mobi PCS"

    goto/16 :goto_0

    .line 975
    :sswitch_32
    const-string v0, "COX"

    goto/16 :goto_0

    .line 892
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_d
        0x7 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_5
        0xd -> :sswitch_17
        0xf -> :sswitch_b
        0x12 -> :sswitch_6
        0x13 -> :sswitch_e
        0x18 -> :sswitch_f
        0x19 -> :sswitch_1b
        0x1a -> :sswitch_12
        0x1b -> :sswitch_7
        0x65 -> :sswitch_11
        0x66 -> :sswitch_13
        0x68 -> :sswitch_22
        0x69 -> :sswitch_26
        0x6b -> :sswitch_23
        0x6c -> :sswitch_1c
        0x6d -> :sswitch_14
        0x6e -> :sswitch_24
        0x6f -> :sswitch_15
        0x70 -> :sswitch_10
        0x71 -> :sswitch_1f
        0x72 -> :sswitch_2e
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_19
        0x75 -> :sswitch_28
        0x76 -> :sswitch_8
        0x77 -> :sswitch_1a
        0x78 -> :sswitch_32
        0x79 -> :sswitch_25
        0x7a -> :sswitch_27
        0x7b -> :sswitch_1e
        0x7c -> :sswitch_21
        0x7d -> :sswitch_2a
        0x7e -> :sswitch_2d
        0x7f -> :sswitch_16
        0x80 -> :sswitch_20
        0x81 -> :sswitch_18
        0x82 -> :sswitch_2b
        0x83 -> :sswitch_2f
        0x84 -> :sswitch_29
        0x85 -> :sswitch_1d
        0x86 -> :sswitch_31
        0x87 -> :sswitch_30
        0xc9 -> :sswitch_9
        0xca -> :sswitch_a
        0xcb -> :sswitch_c
    .end sparse-switch
.end method

.method public static getOverwriteCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 355
    if-nez p0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-object v4

    .line 360
    :cond_1
    const/4 v3, 0x0

    .line 362
    .local v3, matchingTable:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 363
    .local v2, lenNumber:I
    if-ne v2, v9, :cond_3

    .line 365
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 366
    .local v0, firstDigit:C
    const/16 v5, 0x32

    if-gt v5, v0, :cond_0

    const/16 v5, 0x38

    if-gt v0, v5, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_0

    .line 370
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen3:[Ljava/lang/String;

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 374
    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 376
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v3, v4

    goto :goto_0

    .line 378
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 381
    .end local v0           #firstDigit:C
    .end local v1           #i:I
    :cond_3
    if-ne v2, v8, :cond_0

    .line 383
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_0

    .line 387
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_4

    .line 389
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    aget-object v4, v4, v7

    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x34

    if-ne v5, v6, :cond_0

    .line 393
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallEndNumberOverwritten_SprintLen2:[Ljava/lang/String;

    aget-object v4, v4, v9

    goto :goto_0
.end method

.method public static getOverwriteRoamingCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 421
    if-eqz p0, :cond_1

    .line 423
    const-string v0, "911"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    const-string v0, "Roaming"

    .line 431
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 567
    if-nez p0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-object v1

    .line 572
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 573
    .local v0, lenNumber:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 575
    const-string v2, "*9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 577
    const-string v1, "Correo de voz"

    goto :goto_0

    .line 579
    :cond_2
    const-string v2, "*5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 581
    const-string v1, "Consulta de Saldo"

    goto :goto_0

    .line 583
    :cond_3
    const-string v2, "*1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 585
    const-string v1, "Emergencia"

    goto :goto_0

    .line 588
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 590
    const-string v2, "*21"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 592
    const-string v1, "Recarga Prepago"

    goto :goto_0

    .line 595
    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 597
    const-string v2, "*611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 599
    const-string v1, "Atenci\u00f3n al Cliente"

    goto :goto_0
.end method

.method public static getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "nvValue"
    .parameter "mdn"

    .prologue
    .line 612
    const/4 v2, 0x0

    .line 614
    .local v2, voiceNumber:Ljava/lang/String;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v3, v4, :cond_1

    .line 616
    const-string v2, "1417"

    .line 696
    :cond_0
    :goto_0
    return-object v2

    .line 618
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_2

    .line 619
    const-string v2, "*86"

    goto :goto_0

    .line 621
    :cond_2
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 622
    const-string v2, "*99"

    goto :goto_0

    .line 623
    :cond_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x7

    if-eq v3, v4, :cond_4

    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->SIMTYPE_CONFIG:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 624
    :cond_4
    const-string v2, "777"

    goto :goto_0

    .line 627
    :cond_5
    move-object v2, p1

    .line 629
    move v0, p0

    .line 630
    .local v0, carrierId:I
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->convertProjectFlagToCarrierId()Ljava/lang/Integer;

    move-result-object v1

    .line 631
    .local v1, projectFlagId:Ljava/lang/Integer;
    if-eqz v1, :cond_6

    .line 632
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 634
    :cond_6
    if-nez v1, :cond_7

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7

    sget-boolean v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDetectVMbyCarrierIdFromNV:Z

    if-eqz v3, :cond_0

    .line 637
    :cond_7
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 691
    :sswitch_0
    const-string v2, "*9"

    goto :goto_0

    .line 639
    :sswitch_1
    const-string v2, "0000000000"

    .line 640
    goto :goto_0

    .line 643
    :sswitch_2
    const-string v2, "*86"

    .line 644
    goto :goto_0

    .line 647
    :sswitch_3
    const-string v2, "*89"

    .line 648
    goto :goto_0

    .line 651
    :sswitch_4
    const-string v2, "6057256245"

    .line 652
    goto :goto_0

    .line 655
    :sswitch_5
    const-string v2, "4064850808"

    .line 656
    goto :goto_0

    .line 659
    :sswitch_6
    const-string v2, "*95"

    .line 660
    goto :goto_0

    .line 663
    :sswitch_7
    const-string v2, "7018529600"

    .line 664
    goto :goto_0

    .line 667
    :sswitch_8
    const-string v2, "*86"

    .line 668
    goto :goto_0

    .line 671
    :sswitch_9
    const-string v2, "123"

    .line 672
    goto :goto_0

    .line 675
    :sswitch_a
    const-string v2, "9078226245"

    .line 676
    goto :goto_0

    .line 679
    :sswitch_b
    const-string v2, "8154886245"

    .line 680
    goto :goto_0

    .line 683
    :sswitch_c
    const-string v2, "9077457900"

    .line 684
    goto :goto_0

    .line 687
    :sswitch_d
    const-string v2, "#9"

    .line 688
    goto :goto_0

    .line 637
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x66 -> :sswitch_1
        0x6c -> :sswitch_d
        0x6d -> :sswitch_2
        0x77 -> :sswitch_b
        0x79 -> :sswitch_6
        0x7c -> :sswitch_c
        0x7d -> :sswitch_7
        0x80 -> :sswitch_5
        0x81 -> :sswitch_3
        0x82 -> :sswitch_8
        0x83 -> :sswitch_9
        0x85 -> :sswitch_4
        0x87 -> :sswitch_a
    .end sparse-switch
.end method

.method public static isN11Number(Ljava/lang/String;)Z
    .locals 8
    .parameter "number"

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, isN11Number:Z
    if-eqz p0, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    move v2, v1

    .line 461
    .end local v1           #isN11Number:Z
    .local v2, isN11Number:I
    :goto_0
    return v2

    .line 441
    .end local v2           #isN11Number:I
    .restart local v1       #isN11Number:Z
    :cond_1
    const/4 v4, 0x0

    .line 443
    .local v4, matchingTable:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 444
    .local v3, lenNumber:I
    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 445
    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    aget-object v4, v5, v3

    .line 448
    :cond_2
    if-eqz v4, :cond_4

    .line 449
    const-string v5, "HtcCdmaModifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "matchingTable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-object v5, v4, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 455
    :cond_3
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 456
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    if-eqz v5, :cond_4

    .line 457
    const/4 v1, 0x1

    .end local v0           #i:I
    :cond_4
    move v2, v1

    .line 461
    .restart local v2       #isN11Number:I
    goto :goto_0
.end method

.method public static overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 321
    if-eqz p0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    if-nez v4, :cond_2

    .line 322
    :cond_0
    const/4 v2, 0x0

    .line 344
    :cond_1
    :goto_0
    return-object v2

    .line 324
    :cond_2
    const/4 v2, 0x0

    .line 325
    .local v2, matchedName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 327
    .local v3, matchingTable:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 329
    .local v1, lenNumber:I
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 330
    sget-object v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->sCallerNumberOverwritten_lenVari:[[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 333
    :cond_3
    if-eqz v3, :cond_1

    .line 334
    sget-boolean v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "HtcCdmaModifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "matchingTable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_4
    const/4 v0, 0x0

    .line 337
    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 338
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 340
    :cond_5
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 341
    add-int/lit8 v4, v0, 0x1

    aget-object v2, v3, v4

    goto :goto_0
.end method
