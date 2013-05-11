.class public Lcom/htc/dlnasharedmodule/HtcDLNAController;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$PgTimerTask;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;,
        Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "dlna"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://dlna"

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DIALOG_DMR_DISCONNECT:I = 0x0

.field public static final DLNA_COOKIE_GALLERY:I = 0x0

.field public static final DLNA_COOKIE_HTCALBUM:Ljava/lang/String; = "HtcAlbum"

.field public static final DLNA_COOKIE_HTCMUSIC:Ljava/lang/String; = "HtcMusic"

.field public static final DLNA_COOKIE_MUSIC:I = 0x1

.field public static final DLNA_CTRL_STATE_BUFFERING:I = 0x5

.field public static final DLNA_CTRL_STATE_IDLE:I = -0x1

.field public static final DLNA_CTRL_STATE_PAUSED:I = 0x2

.field public static final DLNA_CTRL_STATE_STARTED:I = 0x0

.field public static final DLNA_CTRL_STATE_STOPPED:I = 0x1

.field public static final DLNA_CTRL_STATE_TIMEOUT:I = 0xc

.field public static final DLNA_CTRL_STATE_WAITING:I = 0xb

.field static final DLNA_INTER_AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field static final DLNA_INTER_NO_MEDIA:I = 0x6

.field static final DLNA_INTER_PAUSED:I = 0x2

.field static final DLNA_INTER_PAUSED_RECORDING:I = 0x3

.field static final DLNA_INTER_PLAYING:I = 0x0

.field static final DLNA_INTER_RECORDING:I = 0x4

.field static final DLNA_INTER_STOPPED:I = 0x1

.field static final DLNA_INTER_TRANSITIONING:I = 0x5

.field static final DLNA_INTER_UNKNOWN:I = 0x7

.field public static final DLNA_MODE_MUSIC:I = 0x1

.field public static final DLNA_MODE_PHOTO:I = 0x2

.field public static final DLNA_MODE_VIDEO:I = 0x0

.field public static final DLNA_REPEAT_STATE_NOREPEAT:I = 0x0

.field public static final DLNA_REPEAT_STATE_REPEATALL:I = 0x1

.field public static final DLNA_REPEAT_STATE_REPEATONE:I = 0x2

.field public static final DLNA_SLIDESHOW_DURATION:I = 0xa

.field public static final DLNA_SOURCE_INTERNET:I = 0x2

.field public static final DLNA_SOURCE_INTERNET_WEBSITE:I = 0x3

.field public static final DLNA_SOURCE_LOCAL:I = 0x0

.field public static final DLNA_SOURCE_REMOTE:I = 0x1

.field private static final DMCAPP_STATUS:I = 0x12d

.field public static final DMC_FORCE_OFF:I = 0x2

.field public static final DMC_FORCE_ON:I = 0x1

.field public static final DMC_NOFORCE:I = 0x0

.field private static final DMR_FUNC_ACTION_GET:I = 0x1

.field private static final DMR_FUNC_ACTION_SET:I = 0x0

.field private static final DMR_FUNC_CURRENT:I = 0x1

.field private static final DMR_FUNC_DEFAULT:I = 0x0

.field private static final NOTIFY_CTRL_ERROR:I = 0x64

.field private static final NOTIFY_CTRL_RESPONSE:I = 0x65

.field private static final NOTIFY_DMR_MSG_TIMEOUT:I = 0x69

.field private static final NOTIFY_DMR_REMOVED:I = 0x67

.field private static final NOTIFY_DMR_TIMEOUT:I = 0x68

.field private static final NOTIFY_DMS_REMOVED:I = 0x6a

.field private static final NOTIFY_SHOW_DETAILS:I = 0x6b

.field private static final NOTIFY_VOLBLOCK_TIMEOUT:I = 0xca

.field private static final NOTIFY_VOLUI_TIMEOUT:I = 0xc9

.field private static final NOTIFY_WANT_POWEROFF:I = 0x66

.field private static final REFRESH_ALBUMART:I = 0x1

.field private static final REFRESH_DMCPREP:I = 0x9

.field private static final REFRESH_DMR:I = 0x8

.field private static final REFRESH_INFO:I = 0x0

.field private static final REFRESH_LISTINDEX:I = 0x2

.field private static final REFRESH_PLAYSTATE:I = 0x4

.field private static final REFRESH_RSTATE:I = 0x5

.field private static final REFRESH_SSTATE:I = 0x6

.field private static final REFRESH_TIME:I = 0x3

.field private static final REFRESH_VOLUME:I = 0x7

.field protected static final STATE_TIMEOUT_GALLERY:J = 0x88b8L

.field protected static final STATE_TIMEOUT_MSG:J = 0xfa0L

.field protected static final STATE_TIMEOUT_MUSIC:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "[HtcDLNAController]"

.field private static final UI_ALPHA_DISABLE:I = 0x5f

.field private static final UI_ALPHA_ENABLE:I = 0xff

.field private static final VOLBLOCK_TIMEOUT:I = 0xfa

.field private static final VOLUI_TIMEOUT:I = 0xbb8

.field protected static final VOL_LEVEL_COUNT:I = 0x32

.field private static mContext:Landroid/content/Context;


# instance fields
.field private lPreSeek:J

.field private mCallbackUnregistered:Z

.field mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

.field public mCurContainerID:Ljava/lang/String;

.field public mCurContentID:Ljava/lang/String;

.field private mCurCookie:I

.field private mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

.field private mCurDMRID:Ljava/lang/String;

.field private mCurDMRName:Ljava/lang/String;

.field private mCurFCap:I

.field public mCurFilePath:Ljava/lang/String;

.field private mCurFilePathList:[Ljava/lang/String;

.field private mCurFolderID:Ljava/lang/String;

.field private mCurFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field private mCurFolderName:Ljava/lang/String;

.field private mCurFolderPanelID:Ljava/lang/String;

.field private mCurFolderPosition:Ljava/lang/String;

.field private mCurFolderType:Ljava/lang/String;

.field private mCurIndex:I

.field private mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

.field private mCurMode:I

.field private mCurOnlineThumbPath:Ljava/lang/String;

.field private mCurOnlineThumbPathList:[Ljava/lang/String;

.field private mCurOnlineTitle:Ljava/lang/String;

.field private mCurOnlineTitleList:[Ljava/lang/String;

.field private mCurOnlineURL:Ljava/lang/String;

.field private mCurOnlineURLList:[Ljava/lang/String;

.field public mCurPLDirection:I

.field public mCurPLEndIdx:J

.field public mCurPLStartIdx:J

.field private mCurPushList:[I

.field public mCurServerID:Ljava/lang/String;

.field private mCurSlideDur:I

.field private mCurSource:I

.field private mCurThumbHQ:Z

.field private mCurURL:Ljava/lang/String;

.field mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

.field mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

.field private mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

.field private mDMCPref:Landroid/content/SharedPreferences;

.field private mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

.field mErrorListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;

.field private final mHandler:Landroid/os/Handler;

.field private mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

.field private mIsBtnPPEnable:Z

.field public mIsDMCLineOn:Z

.field private mIsNewIntented:Z

.field private mIsRequestDetails:Z

.field mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

.field private mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field mOldState:I

.field private mOncePlayed:Z

.field private mPosTimer:Ljava/util/Timer;

.field mResponseListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;

.field private mSC:Landroid/content/ServiceConnection;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceUnbinded:Z

.field private mState:I

.field mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

.field private mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

.field private mSwitchTimer:Ljava/util/Timer;

.field private mVolSetBlocked:Z

.field private mbIsEncrypted:Z

.field private mbIsNewDataSource:Z

.field private mszAppTitle:Ljava/lang/String;

.field private mszListIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "nSource"
    .parameter "szCookie"
    .parameter "nMode"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2085
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mszListIndex:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mszAppTitle:Ljava/lang/String;

    .line 831
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    .line 832
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    invoke-direct {v0, p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    .line 834
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 892
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 893
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    .line 896
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsNewIntented:Z

    .line 898
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 900
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 902
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 903
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    .line 908
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    .line 909
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 912
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurThumbHQ:Z

    .line 915
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 916
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    .line 920
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    .line 921
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 922
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 927
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    .line 933
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    .line 934
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 936
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePathList:[Ljava/lang/String;

    .line 937
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    .line 943
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    .line 948
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    .line 953
    iput-wide v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    .line 958
    iput-wide v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    .line 963
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    .line 965
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 966
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    .line 967
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    .line 968
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    .line 970
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    .line 971
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    .line 972
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    .line 975
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurURL:Ljava/lang/String;

    .line 981
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderID:Ljava/lang/String;

    .line 982
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderType:Ljava/lang/String;

    .line 983
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderName:Ljava/lang/String;

    .line 984
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderPosition:Ljava/lang/String;

    .line 985
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderPanelID:Ljava/lang/String;

    .line 986
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFolderList:Ljava/util/ArrayList;

    .line 989
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 991
    iput-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsBtnPPEnable:Z

    .line 993
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 994
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    .line 1503
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    .line 1572
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsDMCLineOn:Z

    .line 1618
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$2;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    .line 1911
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 2069
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    .line 2181
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$3;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    .line 2239
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    .line 2250
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mErrorListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    .line 2261
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mResponseListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    .line 2276
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    .line 2405
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    .line 2422
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    .line 2436
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    .line 2464
    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    .line 2484
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2492
    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2836
    iput-wide v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    .line 2086
    sput-object p1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    .line 2088
    iput p4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    .line 2094
    const-string v0, "HtcMusic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2095
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    .line 2103
    :goto_0
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-ne v0, v3, :cond_0

    .line 2104
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2106
    :cond_0
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-nez v0, :cond_1

    .line 2107
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2109
    :cond_1
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v4, :cond_2

    .line 2110
    iput v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2114
    :cond_2
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v4, :cond_5

    .line 2117
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 2123
    :goto_1
    return-void

    .line 2096
    :cond_3
    const-string v0, "HtcAlbum"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2097
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    goto :goto_0

    .line 2099
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    goto :goto_0

    .line 2120
    :cond_5
    iput v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    goto :goto_1
.end method

.method private ClearPref()Z
    .locals 1

    .prologue
    .line 1421
    const/4 v0, 0x0

    return v0
.end method

.method private GetPref()Z
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    return v0
.end method

.method private SavePref()Z
    .locals 1

    .prologue
    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mszListIndex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->setDMCLine(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/DLNAStatusBarData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/htc/dlnasharedmodule/HtcDLNAController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->SavePref()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    return v0
.end method

.method private static getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "nAction"
    .parameter "nWhich"
    .parameter "szCurCookie"
    .parameter "szDMRID"

    .prologue
    const/4 v0, 0x1

    .line 137
    if-nez p3, :cond_0

    const-string p3, ""

    .line 139
    :cond_0
    if-nez p1, :cond_2

    .line 140
    if-nez p0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 142
    :cond_1
    if-ne p0, v0, :cond_4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_2
    if-ne p1, v0, :cond_4

    .line 146
    if-nez p0, :cond_3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_3
    if-ne p0, v0, :cond_4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrefFile(I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "nMode"

    .prologue
    .line 1382
    const/4 v0, 0x0

    return-object v0
.end method

.method private isServiceHealthy()Z
    .locals 2

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 1497
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DLNAService down!!"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetVolBlock()V
    .locals 4

    .prologue
    const/16 v2, 0xca

    .line 2071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    .line 2072
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2073
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2074
    return-void
.end method

.method private setDMCLine(I)V
    .locals 3
    .parameter "nForce"

    .prologue
    .line 1577
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDMCLine nForce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    return-void
.end method


# virtual methods
.method protected ChangeState(Z)V
    .locals 12
    .parameter "bReload"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x2

    const/4 v10, 0x1

    .line 1930
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v0, v3, :cond_2

    .line 1931
    const/4 v8, 0x1

    .line 1933
    .local v8, nSSState:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 1941
    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 1954
    :goto_1
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    if-eq v0, v1, :cond_1

    .line 1955
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 1956
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    invoke-interface {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;->onStateChanged(I)V

    .line 2033
    .end local v8           #nSSState:I
    :cond_1
    :goto_2
    :sswitch_0
    return-void

    .line 1934
    .restart local v8       #nSSState:I
    :catch_0
    move-exception v7

    .line 1935
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1937
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 1938
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1944
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_0
    iput v11, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_1

    .line 1947
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1949
    iput v10, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_1

    .line 1962
    .end local v8           #nSSState:I
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne p1, v10, :cond_7

    .line 1965
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 1966
    .local v9, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_8

    .line 1967
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 1968
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-nez v0, :cond_4

    .line 1969
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1970
    :cond_4
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v10, :cond_5

    .line 1971
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1972
    :cond_5
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v3, :cond_6

    .line 1973
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    .line 1974
    :cond_6
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z
    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$2602(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;Z)Z

    .line 1976
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init nPlaystate, get current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1988
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bStateSynced:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$2600(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    :goto_4
    sparse-switch v0, :sswitch_data_0

    .line 2007
    :goto_5
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    sparse-switch v0, :sswitch_data_1

    .line 2024
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :goto_6
    :sswitch_1
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    if-eq v0, v1, :cond_1

    .line 2030
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOldState:I

    .line 2031
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    invoke-interface {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;->onStateChanged(I)V

    goto/16 :goto_2

    .line 1978
    .restart local v9       #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 1980
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_2
    move-exception v7

    .line 1981
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1982
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 1983
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 1984
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1988
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_9
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    goto :goto_4

    .line 1990
    :sswitch_2
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$PosTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1992
    iput v11, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_5

    .line 1996
    :sswitch_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1997
    iput v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_5

    .line 2002
    :sswitch_4
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 2003
    iput v10, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto/16 :goto_5

    .line 2018
    :sswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    goto :goto_6

    .line 2021
    :sswitch_6
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput v10, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    goto :goto_6

    .line 1941
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1988
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3e8 -> :sswitch_4
    .end sparse-switch

    .line 2007
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_5
        0x3e8 -> :sswitch_6
    .end sparse-switch
.end method

.method protected RequestDetails(Ljava/lang/String;)V
    .locals 6
    .parameter "contentID"

    .prologue
    const/4 v3, 0x1

    .line 1511
    :try_start_0
    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    if-ne v2, v3, :cond_0

    .line 1513
    const-string v2, "[HtcDLNAController]"

    const-string v3, "Request detail by getContentItemDetails (remote)"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1522
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z

    .line 1526
    :goto_1
    return-void

    .line 1518
    :cond_0
    const-string v2, "[HtcDLNAController]"

    const-string v3, "Request detail by getLocalContentItemDetails (local)"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1520
    .local v1, nId:I
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCLocalContentItemDetails(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1523
    .end local v1           #nId:I
    :catch_0
    move-exception v0

    .line 1524
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public StopTimers()V
    .locals 2

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mPosTimer:Ljava/util/Timer;

    .line 1490
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 1491
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 1492
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 1493
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 1494
    return-void
.end method

.method public TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 3
    .parameter "timer"

    .prologue
    .line 1856
    if-eqz p1, :cond_0

    .line 1857
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1858
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 1859
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const/4 p1, 0x0

    .line 1863
    :goto_0
    return-object p1

    .line 1862
    :cond_0
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Timer already disabled..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;
    .locals 3
    .parameter "timer"
    .parameter "timertask"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 1872
    if-nez p1, :cond_1

    .line 1873
    new-instance p1, Ljava/util/Timer;

    .end local p1
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 1874
    .restart local p1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    .line 1875
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1878
    :goto_0
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    :goto_1
    return-object p1

    .line 1877
    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 1880
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Timer already enabled..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public connect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2127
    const-string v1, "[HtcDLNAController]"

    const-string v2, "connect"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const/4 v0, 0x0

    .line 2129
    .local v0, bBindRes:Z
    sget-object v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2130
    sget-object v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 2132
    const-string v1, "[HtcDLNAController]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MLService Bind result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    iput-boolean v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 2135
    if-nez v0, :cond_0

    .line 2136
    const-string v1, "[HtcDLNAController]"

    const-string v2, "connect: binding service unsuccessful"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2140
    const-string v1, "[HtcDLNAController]"

    const-string v2, "disconnect"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 2143
    const-string v1, "[HtcDLNAController]"

    const-string v2, "unregister service callbacks"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 2145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2155
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->StopTimers()V

    .line 2157
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput-boolean v4, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastR:Z

    .line 2158
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput-boolean v4, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bCanToastS:Z

    .line 2172
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 2173
    sget-object v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2174
    const-string v1, "[HtcDLNAController]"

    const-string v2, "ML Service unbind"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 2179
    iput-boolean v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mServiceUnbinded:Z

    .line 2180
    return-void

    .line 2147
    :catch_0
    move-exception v0

    .line 2148
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2149
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2150
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2152
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2176
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "ML ServiceConnection null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 7

    .prologue
    .line 1534
    const/4 v0, 0x0

    .line 1537
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1547
    :cond_0
    :goto_0
    return-object v0

    .line 1539
    :catch_0
    move-exception v1

    .line 1540
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1541
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1542
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1544
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2903
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_1

    .line 2906
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-interface {v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    .line 2907
    .local v1, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    if-eqz v1, :cond_0

    .line 2909
    iget-object v3, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 2916
    :goto_0
    const-string v3, "[HtcDLNAController]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Mirror DMR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    .end local v1           #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :goto_1
    return-object v1

    .line 2913
    .restart local v1       #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2920
    .end local v1           #rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :catch_0
    move-exception v0

    .line 2922
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v1, v2

    .line 2925
    goto :goto_1
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    return v0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 2451
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2443
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 8

    .prologue
    .line 2879
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 2880
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 2881
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 2883
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 2887
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->setStateSync()V

    .line 2896
    :cond_0
    :goto_1
    return-void

    .line 2885
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "UI Next/Prev safty block ..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2889
    :catch_0
    move-exception v7

    .line 2890
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2892
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 2894
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 2800
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_1

    .line 2801
    const-string v1, "[HtcDLNAController]"

    const-string v2, "start()"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 2809
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V

    .line 2813
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 2822
    :cond_0
    :goto_1
    return-void

    .line 2806
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2817
    :catch_0
    move-exception v0

    .line 2818
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2815
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    :try_start_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "DMC Status null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2819
    :catch_1
    move-exception v0

    .line 2820
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2802
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public powerOffDMR()V
    .locals 4

    .prologue
    .line 2279
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    .line 2280
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 2281
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2282
    :catch_0
    move-exception v0

    .line 2283
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2284
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2285
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2286
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public prepare(Ljava/lang/String;)Z
    .locals 1
    .parameter "curDMRID"

    .prologue
    .line 2605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->prepare(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v0

    return v0
.end method

.method public prepare(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 13
    .parameter "curDMRID"
    .parameter "statusBarData"

    .prologue
    .line 2610
    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    .line 2613
    iput-object p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 2616
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "[HtcDLNAController]"

    const-string v1, "Store current DMR Success"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    :goto_0
    const/4 v8, 0x0

    .line 2623
    .local v8, bIsNewController:Z
    const/4 v11, 0x0

    .line 2624
    .local v11, nCreateRes:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v11

    .line 2626
    if-eqz v11, :cond_9

    .line 2627
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaController OK, cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-interface {v0, v1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V

    .line 2632
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 2633
    .local v9, dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    .line 2635
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    .line 2636
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2641
    :cond_0
    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    const/4 v8, 0x1

    .line 2644
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2645
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DMR doesn\'t support Volume Control"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    :cond_2
    :goto_1
    if-nez v8, :cond_a

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    if-nez v0, :cond_a

    .line 2660
    const-string v0, "[HtcDLNAController]"

    const-string v1, "!!! prepare(): feed playlist: is NOT new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    .line 2662
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    .line 2663
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2664
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    #calls: Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setPosUI(I)V
    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->access$3000(Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;I)V

    .line 2761
    :cond_3
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->ChangeState(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2769
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2770
    :cond_4
    const/4 v0, 0x1

    .end local v8           #bIsNewController:Z
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .end local v11           #nCreateRes:I
    :goto_3
    return v0

    .line 2611
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 2617
    :cond_6
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Store current DMR failed"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2647
    .restart local v8       #bIsNewController:Z
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .restart local v11       #nCreateRes:I
    :cond_7
    :try_start_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "DMR support Volume Control"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshVolume()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2762
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_0
    move-exception v10

    .line 2763
    .local v10, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "[HtcDLNAController]"

    invoke-virtual {v10}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 2651
    .end local v10           #e:Ljava/lang/NullPointerException;
    :cond_9
    :try_start_2
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaController Failed, cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->storeCurrentDMR(Ljava/lang/String;)Z

    .line 2654
    const/4 v0, 0x0

    goto :goto_3

    .line 2666
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_a
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    if-nez v0, :cond_10

    .line 2667
    const-string v0, "[HtcDLNAController]"

    const-string v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: LOCAL"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    if-nez v0, :cond_b

    const-string v0, "[HtcDLNAController]"

    const-string v1, "Push List null!"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    :goto_4
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 2676
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    if-eqz v0, :cond_d

    .line 2678
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    if-eqz v0, :cond_c

    .line 2679
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2765
    .end local v9           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_1
    move-exception v10

    .line 2766
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "[HtcDLNAController]"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2672
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v9       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_b
    :try_start_3
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Push List is NOT null!"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2681
    :cond_c
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V

    goto/16 :goto_2

    .line 2683
    :cond_d
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2684
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2687
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    iget v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2688
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2691
    :cond_e
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2696
    :pswitch_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    iget v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2697
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2700
    :cond_f
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Push List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2705
    :cond_10
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2706
    const-string v0, "[HtcDLNAController]"

    const-string v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: REMOTE"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 2710
    :pswitch_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2715
    :pswitch_4
    new-instance v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v12}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 2717
    .local v12, plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 2718
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 2719
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    iput-object v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 2720
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    iput v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 2721
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    int-to-long v0, v0

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 2723
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 2724
    iget-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    iput-wide v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 2725
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    iput v0, v12, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 2727
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v12}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2728
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Play List OK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserShuffleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 2731
    :cond_11
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Play List Failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2737
    .end local v12           #plinfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :cond_12
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 2738
    const-string v0, "[HtcDLNAController]"

    const-string v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: INTERNET"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    .line 2742
    :pswitch_5
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2748
    :cond_13
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2749
    const-string v0, "[HtcDLNAController]"

    const-string v1, "prepare(): feed playlist: is new launch"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Source: INTERNET WEBSITE (fb,fl,yt)"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v0, :pswitch_data_3

    :pswitch_6
    goto/16 :goto_2

    .line 2753
    :pswitch_7
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V

    goto/16 :goto_2

    .line 2756
    :pswitch_8
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2708
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 2740
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 2751
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public prev()V
    .locals 8

    .prologue
    .line 2855
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mOncePlayed:Z

    .line 2856
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 2857
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$SwitchTimerTask;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnasharedmodule/HtcDLNAController$1;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mSwitchTimer:Ljava/util/Timer;

    .line 2859
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 2863
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->setStateSync()V

    .line 2872
    :cond_0
    :goto_1
    return-void

    .line 2861
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "UI Next/Prev safty block ..."

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2865
    :catch_0
    move-exception v7

    .line 2866
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2867
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2868
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 2870
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public queryCurrentDMR()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 2348
    sget-object v2, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v4, v3, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2352
    .local v0, szResult:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 2353
    .end local v0           #szResult:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public queryDefaultDMR()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2366
    sget-object v2, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2370
    .local v0, szResult:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 2371
    .end local v0           #szResult:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public seekTo(J)V
    .locals 4
    .parameter "lSeconds"

    .prologue
    .line 2839
    iput-wide p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    .line 2841
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2848
    :cond_0
    :goto_0
    return-void

    .line 2842
    :catch_0
    move-exception v0

    .line 2843
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2844
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2845
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2846
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .locals 1
    .parameter "dlnaPushMediaInfo"

    .prologue
    const/4 v0, 0x1

    .line 2510
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2512
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2513
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2514
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 2515
    return-void
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;Z)V
    .locals 1
    .parameter "dlnaPushMediaInfo"
    .parameter "bIsEncrypted"

    .prologue
    .line 2498
    iput-boolean p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsEncrypted:Z

    .line 2500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2501
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2502
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDLNAPushMediaInfo:Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 2503
    return-void
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V
    .locals 2
    .parameter "plinfo"

    .prologue
    const/4 v0, 0x1

    .line 2534
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2535
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2536
    if-nez p1, :cond_0

    .line 2546
    :goto_0
    return-void

    .line 2537
    :cond_0
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    .line 2538
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    .line 2539
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    .line 2540
    iget v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFCap:I

    .line 2541
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    long-to-int v0, v0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSlideDur:I

    .line 2543
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLStartIdx:J

    .line 2544
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLEndIdx:J

    .line 2545
    iget v0, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPLDirection:I

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2488
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2489
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePath:Ljava/lang/String;

    .line 2490
    return-void
.end method

.method public setDataSource([II)V
    .locals 1
    .parameter "pushlist"
    .parameter "nCurrentIndex"

    .prologue
    .line 2526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2527
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2528
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurPushList:[I

    .line 2529
    iput p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurIndex:I

    .line 2530
    return-void
.end method

.method public setDataSource([Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 2517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2518
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2519
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurFilePathList:[Ljava/lang/String;

    .line 2520
    return-void
.end method

.method public setDataSourceURL(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 2586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2587
    if-nez p1, :cond_0

    .line 2589
    const-string v0, "[HtcDLNAController]"

    const-string v1, "setDataSourceURL NG !"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    :goto_0
    return-void

    .line 2593
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2595
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    goto :goto_0
.end method

.method public setDataSourceURL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "bIsWebsite"
    .parameter "szURL"
    .parameter "szTitle"
    .parameter "szThumbPath"

    .prologue
    .line 2549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2550
    if-eqz p1, :cond_0

    .line 2551
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2555
    :goto_0
    iput-object p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    .line 2556
    iput-object p3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    .line 2557
    iput-object p4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    .line 2558
    new-instance v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 2559
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    .line 2560
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    .line 2561
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    .line 2562
    return-void

    .line 2553
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    goto :goto_0
.end method

.method public setDataSourceURL(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "bIsWebsite"
    .parameter "szURLList"
    .parameter "szTitleList"
    .parameter "szThumbPathList"

    .prologue
    .line 2565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mbIsNewDataSource:Z

    .line 2566
    if-eqz p1, :cond_0

    .line 2567
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    .line 2571
    :goto_0
    iput-object p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    .line 2572
    iput-object p3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    .line 2573
    iput-object p4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    .line 2574
    new-instance v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 2575
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineURLList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    .line 2576
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineTitleList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    .line 2577
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mInternetPushPlaylistInfo:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurOnlineThumbPathList:[Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    .line 2578
    return-void

    .line 2569
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurSource:I

    goto :goto_0
.end method

.method public setOnConnectionListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2241
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mConnectionListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnConnectionListener;

    .line 2242
    return-void
.end method

.method public setOnCurrentDMRListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    .line 2394
    return-void
.end method

.method public setOnCurrentDMSListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2411
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    .line 2412
    return-void
.end method

.method public setOnErrorListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2252
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mErrorListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    .line 2253
    return-void
.end method

.method public setOnItemInfoListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2466
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    .line 2467
    return-void
.end method

.method public setOnResponseListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2267
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mResponseListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    .line 2268
    return-void
.end method

.method public setOnStateListener(Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mStateListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnStateListener;

    .line 2455
    return-void
.end method

.method public setRepeat(I)V
    .locals 4
    .parameter "nRepeatState"

    .prologue
    .line 2830
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2834
    :goto_0
    return-void

    .line 2831
    :catch_0
    move-exception v0

    .line 2832
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[HtcDLNAController]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeat NG ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShuffle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2326
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget-boolean v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    if-ne v1, v5, :cond_1

    .line 2327
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2329
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V

    .line 2330
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2331
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2333
    :catch_0
    move-exception v0

    .line 2334
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStateSync()V
    .locals 2

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserState:I

    if-nez v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 1894
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 5
    .parameter "nVolume"

    .prologue
    const/16 v3, 0x64

    .line 2303
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iput p1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2304
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    if-gtz v1, :cond_0

    .line 2305
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2307
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    if-lt v1, v3, :cond_1

    .line 2308
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/16 v2, 0x64

    iput v2, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    .line 2310
    :cond_1
    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mVolSetBlocked:Z

    if-nez v1, :cond_2

    .line 2312
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    iget v4, v4, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nUserVolume:I

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V

    .line 2313
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->resetVolBlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2318
    :cond_2
    :goto_0
    return-void

    .line 2315
    :catch_0
    move-exception v0

    .line 2316
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 2774
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_2

    .line 2775
    const-string v1, "[HtcDLNAController]"

    const-string v2, "start()"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 2783
    iget-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    iget-wide v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->lPreSeek:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V

    .line 2784
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V

    .line 2788
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->setUserState(I)V

    .line 2797
    :cond_1
    :goto_1
    return-void

    .line 2780
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2792
    :catch_0
    move-exception v0

    .line 2793
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2790
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    const-string v1, "[HtcDLNAController]"

    const-string v2, "DMC Status null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2794
    :catch_1
    move-exception v0

    .line 2795
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2776
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public storeCurrentDMR(Ljava/lang/String;)Z
    .locals 5
    .parameter "szDMRID"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2338
    sget-object v3, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2342
    .local v0, szResult:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2345
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public storeDefaultDMR(Ljava/lang/String;)Z
    .locals 4
    .parameter "szDMRID"

    .prologue
    const/4 v1, 0x0

    .line 2356
    sget-object v2, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurCookie:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v1, v3, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->getDMRFunctionUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2360
    .local v0, szResult:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2361
    const/4 v1, 0x1

    .line 2363
    :cond_0
    return v1
.end method
