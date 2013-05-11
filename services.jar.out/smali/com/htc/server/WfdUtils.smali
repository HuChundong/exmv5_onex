.class public Lcom/htc/server/WfdUtils;
.super Ljava/lang/Object;
.source "WfdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WfdUtils$RestoreMgmt;
    }
.end annotation


# static fields
.field public static final CONFIG_FILE_NAME:Ljava/lang/String; = "/data/misc/wifidisplay.conf"

.field public static final DFS_CHANNELS:[I = null

.field public static final ERROR_DONGLE_NOT_FOUND:I = 0x7

.field public static final ERROR_INCORRECT_DONGLE_STATUS:I = 0x6

.field public static final ERROR_L2PE_TIMEOUT:I = 0x3

.field public static final ERROR_NULL_DONGLE:I = 0x5

.field public static final ERROR_PATTERN_UNLOCK_FAILED:I = 0x8

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final ERROR_WIVU_DISCOVERY_TIMEOUT:I = 0x4

.field public static final ERROR_WPS_CONNECT_FAILED:I = 0x9

.field public static final ERROR_WPS_FAILED:I = 0x1

.field public static final ERROR_WPS_TIMEOUT:I = 0x2

.field public static final MODE_CONFIGURE:I = 0x0

.field public static final MODE_DISCOVERY:I = 0x1

.field public static final MODE_DLNA:I = 0x2

.field public static final MODE_THREE_FINGER:I = 0x3

.field public static final PROGRESS_CONFIGURE_SUCCEED:I = 0x64

.field public static final PROGRESS_L2PE_SUCCEED:I = 0x32

.field public static final PROGRESS_WIVU_AP_ONE:I = 0x50

.field public static final PROGRESS_WIVU_AP_THREE:I = 0x5a

.field public static final PROGRESS_WIVU_AP_TWO:I = 0x55

.field public static final PROGRESS_WIVU_STA_ONE:I = 0x3c

.field public static final PROGRESS_WIVU_STA_THREE:I = 0x4b

.field public static final PROGRESS_WIVU_STA_TWO:I = 0x46

.field public static final PROGRESS_WPS_START:I = 0xa

.field public static final PROGRESS_WPS_SUCCEED:I = 0x28

.field public static final STATE_CONFIGURE_FAILED:I = 0x18

.field public static final STATE_CONFIGURE_FAILED_DLNA:I = 0x28

.field public static final STATE_CONFIGURE_FAILED_EXTERNAL:I = 0x27

.field public static final STATE_CONFIGURE_FAILED_INTERNAL:I = 0x26

.field public static final STATE_CONFIGURE_SUCCEED:I = 0x36

.field public static final STATE_CONFIGURE_SUCCEED_EXTERNAL:I = 0x37

.field public static final STATE_CONNECTION_TIMEOUT_DLNA:I = 0x35

.field public static final STATE_CONNECTION_TIMEOUT_EXTERNAL:I = 0x34

.field public static final STATE_CONNECTION_TIMEOUT_INTERNAL:I = 0x33

.field public static final STATE_DISPLAY_SETTINGS:I = 0x3a

.field public static final STATE_DLNA_SUCCEED:I = 0x25

.field public static final STATE_DONGLE_CONFIGURED:I = 0x16

.field public static final STATE_DONGLE_CONFIGURING:I = 0x15

.field public static final STATE_DONGLE_DETAILS:I = 0x38

.field public static final STATE_DONGLE_PAIRED:I = 0x17

.field public static final STATE_DONGLE_SETTING:I = 0x3f

.field public static final STATE_FAILED_FOR_CONNECTION_REQUEST:I = 0x43

.field public static final STATE_MIRROR_FAILED:I = 0x22

.field public static final STATE_MIRROR_FAILED_AND_END:I = 0x23

.field public static final STATE_MIRROR_FAILED_AND_END_EXTERNAL:I = 0x24

.field public static final STATE_MIRROR_FAILED_DETAILS:I = 0x3b

.field public static final STATE_MIRROR_SUCCEED:I = 0x1f

.field public static final STATE_MIRROR_SUCCEED_DETAILS:I = 0x21

.field public static final STATE_MIRROR_SUCCEED_EXTERNAL:I = 0x20

.field public static final STATE_PATTERN_UNLOCK_FAILED:I = 0x40

.field public static final STATE_PATTERN_UNLOCK_TIMEOUT:I = 0x41

.field public static final STATE_PBC_ON_DONGLE_DLNA:I = 0x2b

.field public static final STATE_PBC_ON_DONGLE_EXTERNAL:I = 0x2a

.field public static final STATE_PBC_ON_DONGLE_INTERNAL:I = 0x29

.field public static final STATE_READY_FOR_CONNECTION_REQUEST:I = 0x42

.field public static final STATE_READY_TO_CONFIGURE:I = 0xc

.field public static final STATE_READY_TO_RECONFIGURE:I = 0xd

.field public static final STATE_RESETTING_TO_DEFAULT:I = 0x19

.field public static final STATE_RESET_COMPLETE:I = 0x1a

.field public static final STATE_SCANNING_DONGLE:I = 0x7

.field public static final STATE_SCANNING_DONGLE_COMPLETE_EXTERNAL:I = 0x39

.field public static final STATE_SCANNING_DONGLE_COMPLETE_INTERNAL:I = 0xb

.field public static final STATE_SCANNING_DONGLE_MULTIPLE:I = 0x9

.field public static final STATE_SCANNING_DONGLE_NONE:I = 0x8

.field public static final STATE_SCANNING_DONGLE_REFRESH:I = 0xa

.field public static final STATE_SETUP_DONGLE_NAME:I = 0x1b

.field public static final STATE_SHOW_TUTORIAL:I = 0x3c

.field public static final STATE_START_CONFIGURING_DLNA:I = 0x32

.field public static final STATE_START_CONFIGURING_EXTERNAL:I = 0x31

.field public static final STATE_START_CONFIGURING_INTERNAL:I = 0x30

.field public static final STATE_START_CONNECTING_DETAILS:I = 0x2f

.field public static final STATE_START_CONNECTING_EXTERNAL:I = 0x2e

.field public static final STATE_START_CONNECTING_INTERNAL:I = 0x2d

.field public static final STATE_START_PAIRING:I = 0x2c

.field public static final STATE_SYNC_PROFILE_START:I = 0x11

.field public static final STATE_SYNC_PROFILE_SUCCESS:I = 0x12

.field public static final STATE_TURNNING_OFF_MIRROR_MODE:I = 0x1d

.field public static final STATE_TURNNING_ON_MIRROR_MODE:I = 0x1c

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_UNSUPPORT_SECURITY_TYPE_EXTERNAL:I = 0x3e

.field public static final STATE_UNSUPPORT_SECURITY_TYPE_INTERNAL:I = 0x3d

.field public static final STATE_WIFI_AP_DISABLED:I = 0x6

.field public static final STATE_WIFI_AP_DISABLING:I = 0x5

.field public static final STATE_WIFI_AP_ENABLED:I = 0x4

.field public static final STATE_WIFI_AP_ENABLING:I = 0x3

.field public static final STATE_WIFI_ENABLED:I = 0x2

.field public static final STATE_WIFI_ENABLING:I = 0x1

.field public static final STATE_WIVU_DISCOVER_START:I = 0x13

.field public static final STATE_WIVU_DISCOVER_SUCCESS:I = 0x14

.field public static final STATE_WPS_ENABLING:I = 0xe

.field public static final STATE_WPS_FAILED:I = 0x10

.field public static final STATE_WPS_PBC_ON_DONGLE:I = 0x1e

.field public static final STATE_WPS_SUCCESS:I = 0xf

.field public static final WFD_VERSION:Ljava/lang/String; = "20120816_P2P_FW_001"

.field public static final WPS_EVENT_FAILED:I = 0x2

.field public static final WPS_EVENT_START:I = 0x0

.field public static final WPS_EVENT_SUCCEED:I = 0x1

.field public static isConcurrentSupport:Z

.field public static final modeNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/server/WfdUtils;->DFS_CHANNELS:[I

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MODE_CONFIGURE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MODE_DISCOVERY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MODE_DLNA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MODE_THREE_FINGER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/WfdUtils;->modeNames:[Ljava/lang/String;

    return-void

    .line 112
    nop

    :array_0
    .array-data 0x4
        0x8ct 0x14t 0x0t 0x0t
        0xa0t 0x14t 0x0t 0x0t
        0xb4t 0x14t 0x0t 0x0t
        0xc8t 0x14t 0x0t 0x0t
        0x7ct 0x15t 0x0t 0x0t
        0x90t 0x15t 0x0t 0x0t
        0xa4t 0x15t 0x0t 0x0t
        0xb8t 0x15t 0x0t 0x0t
        0xcct 0x15t 0x0t 0x0t
        0xe0t 0x15t 0x0t 0x0t
        0xf4t 0x15t 0x0t 0x0t
        0x8t 0x16t 0x0t 0x0t
        0x1ct 0x16t 0x0t 0x0t
        0x30t 0x16t 0x0t 0x0t
        0x44t 0x16t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method
