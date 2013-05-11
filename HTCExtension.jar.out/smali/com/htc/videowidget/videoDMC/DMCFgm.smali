.class public Lcom/htc/videowidget/videoDMC/DMCFgm;
.super Landroid/app/Fragment;
.source "DMCFgm.java"

# interfaces
.implements Lcom/htc/videowidget/videoDMC/IHtcDMCAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;,
        Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;,
        Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;,
        Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;,
        Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    }
.end annotation


# static fields
.field private static final DLNA_BROADCAST_COMPLETED:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.PLAY_END"

.field private static final DLNA_BROADCAST_COOKIE:Ljava/lang/String; = "cookie"

.field private static final DLNA_BROADCAST_DESTROY:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_destroy_notify"

.field private static final DLNA_BROADCAST_FILEPATH:Ljava/lang/String; = "media"

.field private static final DLNA_BROADCAST_POSITION:Ljava/lang/String; = "position"

.field private static final DLNA_BROADCAST_RENDERERID:Ljava/lang/String; = "renderer_id"

.field private static final DLNA_BROADCAST_STOP:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_stop_position"

.field private static final DRM_LIST_REQUEST_CODE:I = 0x276e6

.field private static final SEEK_PERIOD_SEC:I = 0x1e

.field private static final UI_CALLBACK_ACTIONBAR_PRIM:I = 0x13

.field private static final UI_CALLBACK_ACTIONBAR_SEC:I = 0x14

.field private static final UI_CTRLER_ENABLE:I = 0x10

.field private static final UI_DEFAULT_THUMBNAIL:I = 0x15

.field private static final UI_ERROR_DIALOG:I = 0x11

.field private static final UI_PLAY_BTN:I = 0xf

.field private static final UI_RESET_POSITION_DURATION:I = 0xa

.field private static final UI_UPDATE_DURATION:I = 0xe

.field private static final UI_UPDATE_POSITION:I = 0x12

.field private static final UI_UPDATE_POSITION_TASK:I = 0xc

.field private static final UI_UPDATE_THUMBNAIL:I = 0xb

.field private static final UI_UPDATE_UI_BY_DLNASTATE:I = 0xd

.field private static final UPDATE_POSITION_DELAY_TIME:I = 0x1f4


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TIME_OUT_MSEC_RENDERER_MEDIALINK:I

.field private final TYPE_DMS:I

.field private final TYPE_NORMAL:I

.field private final TYPE_WATCH:I

.field private final id:Ljava/lang/String;

.field mBroadcastReceiverDLNAManagerCompleted:Landroid/content/BroadcastReceiver;

.field mBroadcastReceiverDLNAManagerDestroy:Landroid/content/BroadcastReceiver;

.field mBroadcastReceiverDLNAManagerStop:Landroid/content/BroadcastReceiver;

.field private mCenterButtonView:Lcom/htc/widget/HtcRimButton;

.field private mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field private mDLNAControllerListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;

.field private mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

.field private volatile mDLNAManagerState:I

.field private mDLNARendererListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;

.field private mDLNAStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

.field private mDLNAStatusListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;

.field private mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

.field private mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

.field private mErrorCode:I

.field private mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

.field private mFooterControllerListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

.field private mImageThumbNail:Lcom/htc/videowidget/videoDMC/CacheImageView;

.field private mIntentFilterDLNAManagerCompleted:Landroid/content/IntentFilter;

.field private mIntentFilterDLNAManagerDestroy:Landroid/content/IntentFilter;

.field private mIntentFilterDLNAManagerStop:Landroid/content/IntentFilter;

.field private mIsVisible:Z

.field private mOnImageButtonPlayClickListener:Landroid/view/View$OnClickListener;

.field private mRendererLockObject:Ljava/lang/Object;

.field private mThumbNailContainer:Landroid/widget/RelativeLayout;

.field private mThumbNailDownloadTask:Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;

.field private mThumbNailUri:Landroid/net/Uri;

.field mTvHelper:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

.field private mTvListener:Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;

.field private mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

.field private mView:Landroid/view/View;

.field private mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

.field private mVolumeImageDisplay:Landroid/graphics/drawable/Drawable;

.field private mVolumeImageSilent:Landroid/graphics/drawable/Drawable;

.field private volatile mbDLNAManagerHasReleased:Z

.field private volatile mbDLNAManagerReleasing:Z

.field private volatile mbDLNAServiceConnected:Z

.field private volatile mbDataSourceIsReadyForSet:Z

.field private volatile mbDataSourceIsSetOrTheSame:Z

.field private volatile mbFirstPlayIsRequested:Z

.field private volatile mbHasPlayed:Z

.field private volatile mbIsCtrlerEnable:Z

.field mbIsInMirrorMode:Z

.field private mbIsPlaying:Z

.field private volatile mbNewRendererIsRequestedAsStateNotIDLE:Z

.field private volatile mbRefreshRendererList:Z

.field private volatile mbRendererIsMirrorMediaLinkHD:Z

.field private volatile mbShowErrorDialogueWithErrorCode:Z

.field private volatile mbTempResetPosition:Z

.field private volatile mbThumbNailFromActivity:Z

.field private volatile mbWaitForFirstPlayAfterDataSourceIsSet:Z

.field private volatile mbWaitForFirstPlayAfterFirstSeek:Z

.field private volatile mbWaitForReset:Z

.field private miCurrentPosition:I

.field private miCurrentType:I

.field private volatile miDuration:I

.field private miFirstSeekPosition:I

.field private miPreviousDlnaSessionCookie:I

.field private mlMaxDownloadFileSize:J

.field private msActionBarPrimText:Ljava/lang/String;

.field private msActionBarSecText:Ljava/lang/String;

.field private msContainerID:Ljava/lang/String;

.field private msContentID:Ljava/lang/String;

.field private msErrorReason:Ljava/lang/String;

.field private msFilePath:Ljava/lang/String;

.field private msNewRendererID:Ljava/lang/String;

.field private msOutPuttingFilePath:Ljava/lang/String;

.field private final msPrefDLNASessionCookieName:Ljava/lang/String;

.field private msRendererID:Ljava/lang/String;

.field private volatile msRendererName:Ljava/lang/String;

.field private msServerID:Ljava/lang/String;

.field private msStateDescription:Ljava/lang/String;

.field private volatile msThumbNailPath:Ljava/lang/String;

.field private volatile msVideoTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 97
    const-string v0, "DMCFgm"

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->TAG:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mView:Landroid/view/View;

    .line 101
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    .line 102
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mImageThumbNail:Lcom/htc/videowidget/videoDMC/CacheImageView;

    .line 103
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailContainer:Landroid/widget/RelativeLayout;

    .line 104
    const-string v0, "id"

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->id:Ljava/lang/String;

    .line 106
    iput v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    .line 107
    iput v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    .line 108
    iput v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I

    .line 109
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 110
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 111
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 115
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsCtrlerEnable:Z

    .line 116
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 117
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIsVisible:Z

    .line 118
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    .line 119
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbThumbNailFromActivity:Z

    .line 120
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbTempResetPosition:Z

    .line 122
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarPrimText:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarSecText:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 125
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    .line 128
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 129
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAControllerListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;

    .line 130
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNARendererListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;

    .line 131
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;

    .line 132
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    .line 133
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mRendererLockObject:Ljava/lang/Object;

    .line 136
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRendererIsMirrorMediaLinkHD:Z

    .line 137
    const-string v0, "PrefDLNASessionCookie"

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msPrefDLNASessionCookieName:Ljava/lang/String;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    .line 139
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mTvListener:Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;

    .line 141
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mVolumeImageSilent:Landroid/graphics/drawable/Drawable;

    .line 142
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mVolumeImageDisplay:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    .line 144
    const v0, -0x276e6

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    .line 145
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;

    .line 147
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->TIME_OUT_MSEC_RENDERER_MEDIALINK:I

    .line 150
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 153
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msServerID:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContainerID:Ljava/lang/String;

    .line 158
    iput v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->TYPE_NORMAL:I

    .line 159
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->TYPE_WATCH:I

    .line 160
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->TYPE_DMS:I

    .line 161
    iput v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    .line 171
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerDestroy:Landroid/content/IntentFilter;

    .line 172
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerStop:Landroid/content/IntentFilter;

    .line 173
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerCompleted:Landroid/content/IntentFilter;

    .line 179
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAServiceConnected:Z

    .line 180
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z

    .line 181
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    .line 182
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    .line 183
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterFirstSeek:Z

    .line 184
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbFirstPlayIsRequested:Z

    .line 185
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbNewRendererIsRequestedAsStateNotIDLE:Z

    .line 186
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForReset:Z

    .line 187
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRefreshRendererList:Z

    .line 188
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbHasPlayed:Z

    .line 189
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerHasReleased:Z

    .line 190
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerReleasing:Z

    .line 193
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mTvHelper:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    .line 194
    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsInMirrorMode:Z

    .line 209
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    .line 210
    iput-boolean v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbShowErrorDialogueWithErrorCode:Z

    .line 213
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    .line 216
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailDownloadTask:Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;

    .line 219
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;

    .line 222
    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    .line 227
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoDMC/DMCFgm$1;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mOnImageButtonPlayClickListener:Landroid/view/View$OnClickListener;

    .line 2271
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$4;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoDMC/DMCFgm$4;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mFooterControllerListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 3864
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoDMC/DMCFgm$6;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerDestroy:Landroid/content/BroadcastReceiver;

    .line 3960
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$7;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoDMC/DMCFgm$7;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerStop:Landroid/content/BroadcastReceiver;

    .line 4004
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoDMC/DMCFgm$8;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerCompleted:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->clickPlayButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/videowidget/videoDMC/DMCFgm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->updateSecondaryProgress()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/videowidget/videoDMC/DMCFgm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->updateUIbyDLNAState(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbTempResetPosition:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbTempResetPosition:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setCenterButtonImage(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsCtrlerEnable:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setCenterButtonEnable(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleErrorDialogMessage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarPrimText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarSecText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/videowidget/videoDMC/DMCFgm;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->seekTo(IZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/videowidget/videoDMC/DMCFgm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->onMoreMenuItemSelected(I)V

    return-void
.end method

.method static synthetic access$2802(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRendererIsMirrorMediaLinkHD:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/videowidget/videoDMC/DMCFgm;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/videowidget/videoDMC/DMCFgm;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getCurrentTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setDLNADataSourceByMediaInfo(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setDLNADataSource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setDLNADataSourceByDMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestDLNAStateAndUpdateUI()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRefreshRendererList:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbRefreshRendererList:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setRendererIdToDLNAManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForReset:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForReset:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbNewRendererIsRequestedAsStateNotIDLE:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbNewRendererIsRequestedAsStateNotIDLE:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleNewRendererID()V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterFirstSeek:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterFirstSeek:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbFirstPlayIsRequested:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbThumbNailFromActivity:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/htc/videowidget/videoDMC/DMCFgm;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestUpdateThumbNail()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    return p1
.end method

.method static synthetic access$6202(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/htc/videowidget/videoDMC/DMCFgm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->saveTheLastPosition(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I

    return v0
.end method

.method static synthetic access$6402(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I

    return p1
.end method

.method static synthetic access$6502(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAServiceConnected:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerHasReleased:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleRendererID()V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/videowidget/videoDMC/DMCFgm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setThumbNail()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setDefaultThumbNail()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    return-object v0
.end method

.method private callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "strPrim"
    .parameter "strSec"

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0x13

    .line 1251
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBackActionBarTexts(), Prim Text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Sec Text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v0, :cond_2

    .line 1258
    if-eqz p1, :cond_0

    .line 1260
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarPrimText:Ljava/lang/String;

    .line 1261
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1262
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 1264
    :cond_0
    if-eqz p2, :cond_1

    .line 1266
    iput-object p2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msActionBarSecText:Ljava/lang/String;

    .line 1267
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1268
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 1275
    :cond_1
    :goto_0
    return-void

    .line 1273
    :cond_2
    const-string v0, "DMCFgm"

    const-string v1, "callBackActionBarTexts(), Fail! mUIHandler is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized clickPlayButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2110
    monitor-enter p0

    :try_start_0
    const-string v0, "DMCFgm"

    const-string v1, "clickPlayButton(), BEGIN  ++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v0, :cond_4

    .line 2114
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsCtrlerEnable:Z

    if-nez v0, :cond_0

    .line 2116
    const-string v0, "DMCFgm"

    const-string v1, "clickPlayButton(), CtrollerEable is False, Ignore Action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    :goto_0
    monitor-exit p0

    return-void

    .line 2120
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2123
    :cond_1
    const-string v0, "DMCFgm"

    const-string v1, "clickPlayButton(), mDLNAManager.play()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->play()I

    .line 2126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbFirstPlayIsRequested:Z

    .line 2127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    .line 2130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 2149
    :goto_1
    const-string v0, "DMCFgm"

    const-string v1, "clickPlayButton(), END  ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2132
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    if-nez v0, :cond_3

    .line 2134
    const-string v0, "DMCFgm"

    const-string v1, "clickPlayButton(), mDLNAManager.pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->pause()I

    .line 2138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    goto :goto_1

    .line 2142
    :cond_3
    const-string v0, "DMCFgm"

    const-string v1, "clickPlayButton(), No Specific STATES. Do Nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2147
    :cond_4
    const-string v0, "DMCFgm"

    const-string v1, "clickPlayButton(), mDLNAManager is Null. Do Nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private createDetailsDialog()Landroid/app/Dialog;
    .locals 23

    .prologue
    .line 3714
    const-string v1, "DMCFgm"

    const-string v2, "[createDetailsDialog] Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    invoke-virtual/range {p0 .. p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v21

    .line 3717
    .local v21, res:Landroid/content/res/Resources;
    if-nez v21, :cond_0

    .line 3719
    const-string v1, "DMCFgm"

    const-string v2, "[createDetailsDialog] res is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    const/4 v1, 0x0

    .line 3805
    :goto_0
    return-object v1

    .line 3723
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 3724
    .local v22, resource:Landroid/content/res/Resources;
    new-instance v17, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3725
    .local v17, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3727
    invoke-virtual/range {p0 .. p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    .line 3728
    .local v19, factory:Landroid/view/LayoutInflater;
    const v1, 0x6030003

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 3730
    .local v12, viewDetailsDialog:Landroid/view/View;
    const v1, 0x60b000a

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    .line 3732
    .local v20, listView:Landroid/widget/ListView;
    const-string v8, ""

    .line 3733
    .local v8, strDuration:Ljava/lang/String;
    const-string v4, ""

    .line 3734
    .local v4, strPathName:Ljava/lang/String;
    const-string v5, ""

    .line 3735
    .local v5, strTitle:Ljava/lang/String;
    const-string v7, ""

    .line 3736
    .local v7, strFileSize:Ljava/lang/String;
    const-string v9, ""

    .line 3737
    .local v9, strType:Ljava/lang/String;
    const-string v10, ""

    .line 3738
    .local v10, strStatus:Ljava/lang/String;
    const-string v6, ""

    .line 3740
    .local v6, strModifiedDate:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_1

    .line 3742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v18

    .line 3743
    .local v18, detail:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    if-eqz v18, :cond_1

    .line 3745
    invoke-virtual/range {v18 .. v18}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->getContentPath()Ljava/lang/String;

    move-result-object v4

    .line 3746
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createDetailsDialog] strPathName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    invoke-virtual/range {v18 .. v18}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->getContentTitle()Ljava/lang/String;

    move-result-object v5

    .line 3749
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createDetailsDialog] strTitle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    invoke-direct/range {p0 .. p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->isWatchDTCPContent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getTotalFileSize()J

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    .line 3754
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    int-to-long v1, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->secondsToString(J)Ljava/lang/String;

    move-result-object v8

    .line 3761
    :goto_1
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createDetailsDialog] strDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createDetailsDialog] strFileSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    invoke-virtual/range {v18 .. v18}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 3765
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createDetailsDialog] strType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    invoke-virtual/range {v18 .. v18}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->getContentStatus()Ljava/lang/String;

    move-result-object v10

    .line 3768
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createDetailsDialog] strStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    invoke-virtual/range {v18 .. v18}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->getContentDate()Ljava/lang/String;

    move-result-object v6

    .line 3771
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createDetailsDialog] strModifiedDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    .end local v18           #detail:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    if-nez v1, :cond_2

    .line 3777
    new-instance v1, Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x6030004

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mImageThumbNail:Lcom/htc/videowidget/videoDMC/CacheImageView;

    invoke-virtual {v11}, Lcom/htc/videowidget/videoDMC/CacheImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/htc/videowidget/videoDMC/DetailsAdapter;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    .line 3790
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoDMC/DetailsAdapter;->notifyDataSetChanged()V

    .line 3792
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v17

    invoke-virtual/range {v11 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3793
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3794
    const v1, 0x2040151

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/videowidget/videoDMC/DMCFgm$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm$5;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3802
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3804
    const-string v1, "DMCFgm"

    const-string v2, "[createDetailsDialog] End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 3758
    .restart local v18       #detail:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->getContentSize()J

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    .line 3759
    invoke-virtual/range {v18 .. v18}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->getContentDuration()J

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->secondsToString(J)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method private dismissDetailDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2089
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2093
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2103
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    .line 2106
    :cond_0
    :goto_0
    return-void

    .line 2095
    :catch_0
    move-exception v0

    .line 2097
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "DMCFgm"

    const-string v2, "dismissDetailDialog(), Dismiss Detail dialog error "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissDetailDialog(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2102
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2103
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    goto :goto_0

    .line 2102
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2103
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsAdapter:Lcom/htc/videowidget/videoDMC/DetailsAdapter;

    throw v1
.end method

.method private formatFileSize(J)Ljava/lang/String;
    .locals 10
    .parameter "size"

    .prologue
    const-wide/high16 v8, 0x4090

    .line 3834
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 3835
    const-string v2, "0"

    .line 3839
    :goto_0
    return-object v2

    .line 3837
    :cond_0
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " B"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, " KB"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " MB"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, " GB"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " TB"

    aput-object v3, v1, v2

    .line 3838
    .local v1, units:[Ljava/lang/String;
    long-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 3839
    .local v0, digitGroups:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,##0.#"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v4, p1

    int-to-double v6, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCurrentTypeString(I)Ljava/lang/String;
    .locals 3
    .parameter "iType"

    .prologue
    .line 3846
    packed-switch p1, :pswitch_data_0

    .line 3858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3861
    .local v0, sResult:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3849
    .end local v0           #sResult:Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_NORMAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3850
    .restart local v0       #sResult:Ljava/lang/String;
    goto :goto_0

    .line 3852
    .end local v0           #sResult:Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_WATCH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3853
    .restart local v0       #sResult:Ljava/lang/String;
    goto :goto_0

    .line 3855
    .end local v0           #sResult:Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_DMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3856
    .restart local v0       #sResult:Ljava/lang/String;
    goto :goto_0

    .line 3846
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDLNANotificationInfo()Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    .locals 2

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    if-eqz v0, :cond_0

    .line 2327
    const-string v0, "DMCFgm"

    const-string v1, "getDLNANotificationInfo(), Success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    .line 2334
    :goto_0
    return-object v0

    .line 2332
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "getDLNANotificationInfo(), Return mDLNAStatusBarData == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDLNASessionCookie()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1346
    const-string v1, "DMCFgm"

    const-string v2, "getSessionCookie(), BEGIN  ++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "PrefDLNASessionCookie"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1349
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    const-string v1, "previousDlnaSessionCookie"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    .line 1355
    iget v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    if-ne v1, v4, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    .line 1358
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessionCookie(), There is no previous DLNA session cookie, get the New one = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :goto_0
    const-string v1, "DMCFgm"

    const-string v2, "getSessionCookie(), END    ----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return-void

    .line 1360
    :cond_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isCookieValid(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1362
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    .line 1363
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessionCookie(), Cookie from the Preference is inValid, get the New one = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1367
    :cond_1
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessionCookie(), Get the Previous Cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStateName(I)Ljava/lang/String;
    .locals 1
    .parameter "iState"

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 2555
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v0

    .line 2557
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mDLNAManager is NULL"

    goto :goto_0
.end method

.method private getTheLastPosition()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 2698
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_0

    .line 2700
    const-string v7, "DMCFgm"

    const-string v8, "getTheLastPosition(), Activity is NULL! Do Nothing."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2764
    :goto_0
    return v2

    .line 2704
    :cond_0
    const/4 v2, 0x0

    .line 2705
    .local v2, iPosition:I
    const/4 v4, 0x0

    .line 2707
    .local v4, sFilePath:Ljava/lang/String;
    const-string v7, "DMCFgm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTheLastPosition(), Current Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    invoke-direct {p0, v9}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getCurrentTypeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    iget v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 2711
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    .line 2712
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTheLastPosition(), Normal\'s FilePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :goto_1
    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2739
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->readLastStreamPosFromSharePref(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 2758
    :goto_2
    div-int/lit16 v2, v2, 0x3e8

    .line 2759
    if-gez v2, :cond_1

    .line 2760
    const/4 v2, 0x0

    .line 2762
    :cond_1
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTheLastPosition(), Return Position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2714
    :cond_2
    iget v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v7}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2716
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v6}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v5

    .line 2718
    .local v5, sMediaInfoFilePath:Ljava/lang/String;
    move-object v4, v5

    .line 2719
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTheLastPosition(), DLNAPushMediaInfo\'s FilePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2722
    .end local v5           #sMediaInfoFilePath:Ljava/lang/String;
    :cond_3
    iget v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 2724
    const-string v7, "DMCFgm"

    const-string v8, "getTheLastPosition(), DMS\'s File will not do First seek, Return 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2725
    goto/16 :goto_0

    .line 2727
    :cond_4
    if-nez v4, :cond_5

    .line 2729
    const-string v7, "DMCFgm"

    const-string v8, "getTheLastPosition(), No Valid FilePath to Get Position, Return 0"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2730
    goto/16 :goto_0

    .line 2734
    :cond_5
    const-string v7, "DMCFgm"

    const-string v8, "getTheLastPosition(), No Valid FilePath to Get Position, Return 0"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2735
    goto/16 :goto_0

    .line 2744
    :cond_6
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2745
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 2746
    .local v3, sCanonicalFilePath:Ljava/lang/String;
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTheLastPosition(), Get Position by CanonicalFilePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->readLastPositionFromSharePref(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_2

    .line 2749
    .end local v1           #file:Ljava/io/File;
    .end local v3           #sCanonicalFilePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2751
    .local v0, e:Ljava/io/IOException;
    const-string v6, "DMCFgm"

    const-string v7, "getTheLastPosition(), Can\'t Get Canonical Path, Use the original FilePath to get Position."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTheLastPosition(), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->readLastPositionFromSharePref(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2
.end method

.method private handleErrorDialogMessage()V
    .locals 8

    .prologue
    .line 1943
    const-string v5, "DMCFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleErrorDialogMessage(), ErrorCode   = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const-string v5, "DMCFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleErrorDialogMessage(), ErrorReason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1947
    .local v2, res:Landroid/content/res/Resources;
    const-string v4, "Error"

    .line 1948
    .local v4, title:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1949
    const v5, 0x1040012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1951
    :cond_0
    iget v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    sparse-switch v5, :sswitch_data_0

    .line 1998
    const-string v5, "DMCFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleErrorDialogMessage(), Error Code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Show < Can\'t play this video > ErrorDialogue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const-string v3, "Can\'t play this video."

    .line 2000
    .local v3, sErrorDialogueMessage:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2001
    const v5, 0x1040011

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2003
    :cond_1
    iget-boolean v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbShowErrorDialogueWithErrorCode:Z

    if-eqz v5, :cond_2

    .line 2004
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2006
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    .end local v3           #sErrorDialogueMessage:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    if-eqz v5, :cond_3

    .line 2012
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2013
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x2

    .line 2014
    .local v1, code:I
    const-string v5, "error_code"

    iget v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2015
    const-string v5, "error_reason"

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    invoke-interface {v5, v1, v0}, Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 2017
    const-string v5, "DMCFgm"

    const-string v6, "Send EVENT BACK = EVENT_ERROR"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:I
    :cond_3
    return-void

    .line 1963
    :sswitch_0
    const-string v5, "DMCFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleErrorDialogMessage(), ErrorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Keep Playing. Don\'t show ErrorDialogue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestDLNAStateAndUpdateUI()V

    goto :goto_0

    .line 1951
    :sswitch_data_0
    .sparse-switch
        -0x13a -> :sswitch_0
        0x2c6 -> :sswitch_0
        0x2c7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 788
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 789
    .local v1, iKeyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 790
    .local v0, iAction:I
    const-string v5, "DMCFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleKeyEvent(), KeyCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v5, "DMCFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleKeyEvent(), Action  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    move v3, v4

    .line 840
    :cond_0
    :goto_0
    return v3

    .line 802
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 804
    const-string v4, "DMCFgm"

    const-string v5, "handleKeyEvent(), Do clickPlayButton()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->clickPlayButton()V

    goto :goto_0

    .line 812
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 814
    const-string v5, "DMCFgm"

    const-string v6, "handleKeyEvent(), KeyEvent.ACTION_UP, Fast Forward Seek"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    add-int/lit8 v2, v5, 0x1e

    .line 816
    .local v2, iSeekPosition:I
    iget v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    if-lt v2, v5, :cond_1

    .line 817
    iget v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    add-int/lit8 v2, v5, -0x1

    .line 819
    :cond_1
    invoke-direct {p0, v2, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->seekTo(IZ)V

    goto :goto_0

    .line 826
    .end local v2           #iSeekPosition:I
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 828
    const-string v5, "DMCFgm"

    const-string v6, "handleKeyEvent(), KeyEvent.ACTION_UP, Rewind Seek"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    add-int/lit8 v2, v5, -0x1e

    .line 830
    .restart local v2       #iSeekPosition:I
    if-gez v2, :cond_2

    .line 831
    const/4 v2, 0x0

    .line 833
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->seekTo(IZ)V

    goto :goto_0

    .line 796
    nop

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_1
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private handleNewRendererID()V
    .locals 3

    .prologue
    .line 2340
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNewRendererID(), New Renderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2344
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "handleNewRendererID(), Do Nothing! InValid New Renderer ID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    :goto_0
    return-void

    .line 2349
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v0, :cond_2

    .line 2351
    const-string v0, "DMCFgm"

    const-string v1, "handleNewRendererID(), mDLNAManager.setRenderer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    .line 2357
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    .line 2358
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleRendererID()V

    goto :goto_0

    .line 2362
    :cond_2
    const-string v0, "DMCFgm"

    const-string v1, "handleNewRendererID(), Do Nothing! mDLNAManager is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized handleRendererID()V
    .locals 3

    .prologue
    .line 2370
    monitor-enter p0

    :try_start_0
    const-string v0, "DMCFgm"

    const-string v1, "handleRendererID(), ++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRendererID(), mDLNAManagerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    .line 2374
    const-string v0, "DMCFgm"

    const-string v1, "handleRendererID(), Do Nothing! mDLNAManager is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2486
    :goto_0
    monitor-exit p0

    return-void

    .line 2377
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 2383
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2385
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    .line 2387
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2389
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRendererID(), mDLNAManager.getRenderer() and setRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setRendererIdToDLNAManager(Ljava/lang/String;)Ljava/lang/String;

    .line 2485
    :goto_1
    const-string v0, "DMCFgm"

    const-string v1, "handleRendererID(), ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2394
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcTvDisplayHelper;->isTvOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsInMirrorMode:Z

    .line 2395
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsInMirrorMode:Z

    if-eqz v0, :cond_3

    .line 2397
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getMirrorRenderer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    .line 2398
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRendererID(), mDLNAManager.getMirrorRenderer() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2405
    const-string v0, "DMCFgm"

    const-string v1, "handleRendererID(), Get Renderer by getMirrorRenderer() Fail, setRendererAsMediaLinkHD()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getDLNANotificationInfo()Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    goto :goto_1

    .line 2410
    :cond_2
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleRendererID(), Get Renderer by getMirrorRenderer() Seccussfully, setRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setRendererIdToDLNAManager(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2416
    :cond_3
    const-string v0, "DMCFgm"

    const-string v1, "handleRendererID(), MirrorMode is False! But mRendererID is Null, Try to setRendererAsMediaLinkHD()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getDLNANotificationInfo()Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    goto/16 :goto_1

    .line 2432
    :cond_4
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRendererID(), Current RendererID  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2436
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    .line 2437
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCUtil;->removeDLNAPref(Landroid/content/Context;)V

    .line 2438
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRendererID(), Get the New RendererID and remove DLNAPref., setRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :goto_2
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setRendererIdToDLNAManager(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 2443
    :cond_5
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2445
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCUtil;->removeDLNAPref(Landroid/content/Context;)V

    .line 2446
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRendererID(), msRendererID is not the Current RendererID, remove DLNAPref. msRendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2453
    :cond_6
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRendererID(), msRendererID is the same as the Current RendererID, setRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2460
    :cond_7
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRendererID(), It can\'t set Renderer directly! mDLNAManager\'s State is not STATE_IDLE, It is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2469
    const-string v0, "DMCFgm"

    const-string v1, "handleRendererID(), But RendererID is not the same as the current outputting Renderer, Reset Renderer!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->saveTheLastPosition(I)V

    .line 2477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbNewRendererIsRequestedAsStateNotIDLE:Z

    .line 2478
    const-string v0, "handleRendererID(), Reset Renderer"

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetStateToIDLE(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2482
    :cond_8
    const-string v0, "DMCFgm"

    const-string v1, "handleRendererID(), RendererID is the same as the current outputting Renderer, Do Nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private initCenterButton(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "view"
    .parameter "res"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "btnCenter"

    const-string v1, "id"

    const-string v2, "com.htc.videowidget.res"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    .line 243
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mOnImageButtonPlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setBackgroundColor(I)V

    .line 245
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    const v1, 0x2080054

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private isWatchDTCPContent()Z
    .locals 2

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/DxDrm/fuse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1688
    const-string v0, "DMCFgm"

    const-string v1, "isWatchDTCPContent(), True."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/4 v0, 0x1

    .line 1696
    :goto_0
    return v0

    .line 1694
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "isWatchDTCPContent(), False."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchSelectPlayer(Z)V
    .locals 7
    .parameter "bAutoSearch"

    .prologue
    const/4 v6, 0x4

    .line 1702
    const/4 v0, 0x0

    .line 1704
    .local v0, bSelectPlayerDTCPOnly:Z
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->isWatchDTCPContent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1709
    const-string v3, "DMCFgm"

    const-string v4, "launchSelectPlayer(), Watch\'s DTCP Content, Only Show DTCP Dongles"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v0, 0x1

    .line 1718
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1720
    .local v2, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 1722
    const-string v3, "DMCFgm"

    const-string v4, "launchSelectPlayer(), Launch Auto Search DRM Activity."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const-string v3, "com.htc.selectplayer.ACTION_AUTO_SEARCH_RENDERER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    const-string v3, "SELECTPLAYER_DTCPIP_ONLY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1726
    const-string v3, "COOKIE"

    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1727
    const-string v3, "FILTER"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1743
    :goto_1
    const v3, 0x276e6

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    :goto_2
    return-void

    .line 1714
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "DMCFgm"

    const-string v4, "launchSelectPlayer(), Not Watch\'s DTCP Content, Show all DMR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const/4 v0, 0x0

    goto :goto_0

    .line 1732
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "DMCFgm"

    const-string v4, "launchSelectPlayer(), Launch DRM List Activity."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchSelectPlayer(), SELECTPLAYER_DTCPIP_ONLY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const-string v3, "com.htc.selectplayer"

    const-string v4, "com.htc.selectplayer.DmrListActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1736
    const-string v3, "SELECTPLAYER_DTCPIP_ONLY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1737
    const-string v3, "COOKIE"

    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1738
    const-string v3, "FILTER"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1745
    :catch_0
    move-exception v1

    .line 1747
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DMCFgm"

    const-string v4, "launchSelectPlayer(), Start DMR list activity fail "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchSelectPlayer(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onMoreMenuItemSelected(I)V
    .locals 5
    .parameter "menuID"

    .prologue
    .line 2242
    invoke-static {p1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getFunctionStringById(I)Ljava/lang/String;

    move-result-object v1

    .line 2243
    .local v1, s:Ljava/lang/String;
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMoreMenuItemSelected(), More menu selected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2245
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 2247
    const-string v2, "DMCFgm"

    const-string v3, "onMoreMenuItemSelected(), res is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_0
    :goto_0
    return-void

    .line 2251
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2256
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->launchSelectPlayer(Z)V

    goto :goto_0

    .line 2261
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->createDetailsDialog()Landroid/app/Dialog;

    .line 2262
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    .line 2263
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 2251
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private relayoutThumbNail(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 2605
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 2607
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2609
    .local v0, ThumbNailContainerLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2611
    const-string v2, "DMCFgm"

    const-string v3, "relayoutThumbNail(), Orientation = PORTRAIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2619
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 2620
    .local v1, iTopMargin:I
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2621
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relayoutThumbNail(), Get ActionBar Height, TopMargin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    .end local v1           #iTopMargin:I
    :goto_0
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2658
    .end local v0           #ThumbNailContainerLP:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 2625
    .restart local v0       #ThumbNailContainerLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const-string v2, "DMCFgm"

    const-string v3, "relayoutThumbNail(), TopMargin = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2632
    :cond_1
    const-string v2, "DMCFgm"

    const-string v3, "relayoutThumbNail(), Orientation = LANDSCAPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2640
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 2641
    .restart local v1       #iTopMargin:I
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2642
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relayoutThumbNail(), Get ActionBar Height, TopMargin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2646
    .end local v1           #iTopMargin:I
    :cond_2
    const-string v2, "DMCFgm"

    const-string v3, "relayoutThumbNail(), TopMargin = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2655
    .end local v0           #ThumbNailContainerLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const-string v2, "DMCFgm"

    const-string v3, "relayoutThumbNail(), Fail! mThumbNailContainer is Null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private releaseDLNAManager(Ljava/lang/String;)V
    .locals 6
    .parameter "sCaller"

    .prologue
    const/4 v5, 0x1

    .line 1078
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseDLNAManager(), from = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iput-boolean v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerReleasing:Z

    .line 1081
    iget-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerHasReleased:Z

    if-ne v2, v5, :cond_0

    .line 1083
    const-string v2, "DMCFgm"

    const-string v3, "releaseDLNAManager(), DLNAManager has been released, Don\'t need to do release() again."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v2, :cond_1

    .line 1091
    :try_start_0
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->release()I

    move-result v1

    .line 1092
    .local v1, iResult:I
    const-string v2, "releaseDLNAManager(), release"

    invoke-direct {p0, v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->showDLNACmdResult(ILjava/lang/String;)V

    .line 1093
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerHasReleased:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .end local v1           #iResult:I
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerReleasing:Z

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1097
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMCFgm"

    const-string v3, "releaseDLNAManager(), Release Fail! Exception!! "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseDLNAManager(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1103
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "DMCFgm"

    const-string v3, "releaseDLNAManager(), mDLNAManager is Null. No Action."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private releaseMediaVoluemControl()V
    .locals 3

    .prologue
    .line 1287
    const-string v1, "DMCFgm"

    const-string v2, "releaseMediaVoluemControl()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DONGLE_MEDIA_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1290
    return-void
.end method

.method private removeOptionMenuItem(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const v3, 0xff05

    const v2, 0xff04

    .line 688
    const-string v0, "DMCFgm"

    const-string v1, "removeOptionMenuItem()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 691
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 692
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 693
    :cond_1
    return-void
.end method

.method private requestDLNAStateAndUpdateUI()V
    .locals 4

    .prologue
    .line 2679
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 2681
    const-string v1, "DMCFgm"

    const-string v2, "requestDLNAStateAndUpdateUI(), mDLNAManager is Null. Do Nothing!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :goto_0
    return-void

    .line 2684
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    iput v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    .line 2685
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDLNAStateAndUpdateUI(), State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2687
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2688
    iget v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2690
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v1, :cond_1

    .line 2691
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v1, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2693
    :cond_1
    const-string v1, "DMCFgm"

    const-string v2, "requestDLNAStateAndUpdateUI(), Fail! mUIHandler is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestMediaVoluemControl()V
    .locals 3

    .prologue
    .line 1280
    const-string v1, "DMCFgm"

    const-string v2, "requestMediaVoluemControl()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DONGLE_MEDIA_PLAYING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1283
    return-void
.end method

.method private requestUpdateThumbNail()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 2663
    const-string v0, "DMCFgm"

    const-string v1, "requestUpdateThumbNail()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v0, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 2668
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 2675
    :goto_0
    return-void

    .line 2672
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "requestUpdateThumbNail(), Fail! mUIHandler is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetForNewDataSource(Ljava/lang/String;)V
    .locals 7
    .parameter "sCaller"

    .prologue
    const/16 v6, 0x15

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1004
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetForNewDataSource(), Requested by = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iput-boolean v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    .line 1010
    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbThumbNailFromActivity:Z

    if-nez v1, :cond_0

    .line 1012
    const-string v1, "DMCFgm"

    const-string v2, "resetForNewDataSource(), Reset ThumbNailPath and ThumbNailUri and Show Default ThumbNail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;

    .line 1014
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    .line 1016
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v1, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1019
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v1, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 1029
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    .line 1030
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 1031
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContainerID:Ljava/lang/String;

    .line 1032
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;

    .line 1033
    iput-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msServerID:Ljava/lang/String;

    .line 1035
    iput v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    .line 1037
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1038
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_2

    .line 1040
    const-string v1, "DMCFgm"

    const-string v2, "resetForNewDataSource(), res is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :goto_1
    return-void

    .line 1023
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    const-string v1, "DMCFgm"

    const-string v2, "resetForNewDataSource(), mUIHandler is NULL. Can\'t Upload Default ThumbNail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1045
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_2
    const-string v1, "view_video_label"

    const-string v2, "string"

    const-string v3, "com.htc.videowidget.res"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method private resetPositionAndDuration(Ljava/lang/String;)V
    .locals 4
    .parameter "caller"

    .prologue
    const/16 v3, 0xa

    .line 1403
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPositionAndDuration(), caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1407
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 1409
    :cond_0
    return-void
.end method

.method private resetStateToIDLE(Ljava/lang/String;)V
    .locals 4
    .parameter "sCaller"

    .prologue
    const/4 v3, 0x1

    .line 2494
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetStateToIDLE(), Caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetStateToIDLE(), Current State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    if-ne v0, v3, :cond_0

    .line 2499
    const-string v0, "DMCFgm"

    const-string v1, "resetStateToIDLE(), Call Reset directly to get STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->reset()I

    .line 2508
    :goto_0
    return-void

    .line 2504
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "resetStateToIDLE(), Call Stop first and call Reset in STATE_STOPPED to get STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    iput-boolean v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForReset:Z

    .line 2506
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->stop()I

    goto :goto_0
.end method

.method private saveDLNASessionCookie()V
    .locals 5

    .prologue
    .line 1328
    const-string v2, "DMCFgm"

    const-string v3, "saveDLNASessionCookie()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "PrefDLNASessionCookie"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1333
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1334
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "previousDlnaSessionCookie"

    iget v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1336
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDLNASessionCookie(), Save cookie to Preferences = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPref:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1340
    :cond_0
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDLNASessionCookie(), No Valid cookie value to be saved! Cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveTheLastPosition(I)V
    .locals 8
    .parameter "iPosition"

    .prologue
    const/4 v7, 0x1

    .line 2769
    iget-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbHasPlayed:Z

    if-eq v4, v7, :cond_0

    .line 2771
    const-string v4, "DMCFgm"

    const-string v5, "saveTheLastPosition(), It hasn\'t Played. Don\'t Save the Position"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :goto_0
    return-void

    .line 2775
    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 2777
    if-gez p1, :cond_1

    .line 2778
    const/4 p1, 0x0

    .line 2781
    :cond_1
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveTheLastPosition(), Position(ms) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveTheLastPosition(), Current Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    invoke-direct {p0, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getCurrentTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2787
    const-string v4, "DMCFgm"

    const-string v5, "saveTheLastPosition(), Activity is NULL! Do Nothing."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2791
    :cond_2
    const/4 v3, 0x0

    .line 2793
    .local v3, sFilePath:Ljava/lang/String;
    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2795
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    .line 2796
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveTheLastPosition(), Normal FilePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :goto_1
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2820
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1, v3}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastStreamPosFromSharePref(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 2798
    :cond_3
    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2800
    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v3

    .line 2801
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveTheLastPosition(), DLNAPushMediaInfo\'s FilePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2803
    :cond_4
    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2805
    const-string v4, "DMCFgm"

    const-string v5, "saveTheLastPosition(), DMS\' File will not be saved the Last Position"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2808
    :cond_5
    if-nez v3, :cond_6

    .line 2810
    const-string v4, "DMCFgm"

    const-string v5, "saveTheLastPosition(), No Valid FilePath to be Saved In SharePreference"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2815
    :cond_6
    const-string v4, "DMCFgm"

    const-string v5, "saveTheLastPosition(), No Valid FilePath to be Saved In SharePreference"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2825
    :cond_7
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2826
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 2827
    .local v2, sCanonicalFilePath:Ljava/lang/String;
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveTheLastPosition(), Save Position as CanonicalFilePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1, v2}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastPositionToSharePref(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2830
    .end local v1           #file:Ljava/io/File;
    .end local v2           #sCanonicalFilePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2832
    .local v0, e:Ljava/io/IOException;
    const-string v4, "DMCFgm"

    const-string v5, "saveTheLastPosition(), Can\'t Get Canonical Path, Use the original FilePath to Save Position"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    const-string v4, "DMCFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveTheLastPosition(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1, v3}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastPositionToSharePref(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private secondsToString(J)Ljava/lang/String;
    .locals 12
    .parameter "lSeconds"

    .prologue
    const/4 v6, 0x3

    const-wide/16 v10, 0x3c

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3810
    rem-long v4, p1, v10

    long-to-int v2, v4

    .line 3811
    .local v2, seconds:I
    div-long v4, p1, v10

    rem-long/2addr v4, v10

    long-to-int v1, v4

    .line 3812
    .local v1, minutes:I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 3814
    .local v0, hours:I
    const-string v3, ""

    .line 3815
    .local v3, strTime:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 3817
    const-string v4, "%d:%02d:%02d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3827
    :goto_0
    return-object v4

    .line 3821
    :cond_0
    const-wide/16 v4, 0xe10

    cmp-long v4, p1, v4

    if-ltz v4, :cond_1

    .line 3823
    const-string v4, "%d:%02d:%02d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3827
    :cond_1
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private declared-synchronized seekTo(IZ)V
    .locals 8
    .parameter "iseekToPosition"
    .parameter "bIsFirstSeek"

    .prologue
    .line 2157
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsCtrlerEnable:Z

    if-nez v0, :cond_0

    .line 2159
    const-string v0, "DMCFgm"

    const-string v1, "seekTo(), CtrollerEable is False, Ignore Action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    :goto_0
    monitor-exit p0

    return-void

    .line 2163
    :cond_0
    if-gez p1, :cond_1

    .line 2165
    :try_start_1
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo(), iseekToPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Adjust to Zero"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    const/4 p1, 0x0

    .line 2169
    :cond_1
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo(), iseekToPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v0, :cond_6

    .line 2172
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v6

    .line 2173
    .local v6, nState:I
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    if-eq v6, v0, :cond_2

    const/4 v0, 0x2

    if-ne v6, v0, :cond_5

    .line 2177
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    if-eqz v0, :cond_4

    .line 2179
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/DxDrm/fuse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2183
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    if-le p1, v0, :cond_4

    .line 2185
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    if-eqz v0, :cond_3

    .line 2187
    int-to-long v0, p1

    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    iget-wide v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mlMaxDownloadFileSize:J

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/htc/videowidget/videoDMC/DMCUtil;->getMaxPosCanSeekTo(JIJLjava/lang/String;)I

    move-result p1

    .line 2188
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo(), Adjusted position is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    if-ge p1, v0, :cond_4

    .line 2192
    const-string v0, "DMCFgm"

    const-string v1, "seekTo(), adjust position < current position, ignore the seek"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    const-string v0, "Caller is seekTo()"

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->startUpdatePositionTask(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2157
    .end local v6           #nState:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2199
    .restart local v6       #nState:I
    :cond_3
    :try_start_2
    const-string v0, "DMCFgm"

    const-string v1, "seekTo(), Current Duration is Zero, Didn\'t Adjust Position"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_4
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    move-result v7

    .line 2208
    .local v7, seekResult:I
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 2210
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2224
    :pswitch_1
    const-string v0, "DMCFgm"

    const-string v1, "seekTo(), seek Result = Fail! Render is NOT Ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2214
    :pswitch_2
    const-string v0, "DMCFgm"

    const-string v1, "seekTo(), seek Result = Success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2219
    :pswitch_3
    const-string v0, "DMCFgm"

    const-string v1, "seekTo(), seek Result = Fail! Seek in Wrong State"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2231
    .end local v7           #seekResult:I
    :cond_5
    const-string v0, "DMCFgm"

    const-string v1, "seekTo(), Didn\'t Attempt to Seek! In Wrong State."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2236
    .end local v6           #nState:I
    :cond_6
    const-string v0, "DMCFgm"

    const-string v1, "seekTo(), Didn\'t Attempt to Seek! mDLNAManager didn\'t exist."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2210
    :pswitch_data_0
    .packed-switch -0x3eb
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setCenterBtnVisibility(ZI)V
    .locals 2
    .parameter "visibility"
    .parameter "resID"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getControllerType()I

    move-result v0

    const/16 v1, 0x259

    if-ne v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimButton;->setBackgroundResource(I)V

    .line 272
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCenterButtonEnable(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mCenterButtonView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 283
    :cond_0
    return-void
.end method

.method private setCenterButtonImage(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "playing"

    .prologue
    const/4 v3, 0x1

    .line 252
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterButtonImage(), playing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const v0, 0x6020010

    invoke-direct {p0, v3, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setCenterBtnVisibility(ZI)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    const v0, 0x2080054

    invoke-direct {p0, v3, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setCenterBtnVisibility(ZI)V

    goto :goto_0
.end method

.method private setControllerByOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1233
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerByOrientation(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setOrientation(I)V

    .line 1238
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->show()Z

    .line 1245
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->relayoutThumbNail(I)V

    .line 1246
    return-void

    .line 1242
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "setControllerByOrientation(), mControllerHelper == Null, It Can\'t SetController by Orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setControllerEnable(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    const/16 v3, 0x10

    .line 1431
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v0, :cond_0

    .line 1433
    iput-boolean p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsCtrlerEnable:Z

    .line 1434
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerEnable() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsCtrlerEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1436
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 1438
    :cond_0
    return-void
.end method

.method private declared-synchronized setDLNADataSource(Ljava/lang/String;)V
    .locals 5
    .parameter "strPathName"

    .prologue
    .line 2904
    monitor-enter p0

    :try_start_0
    const-string v2, "DMCFgm"

    const-string v3, "setDLNADataSource(), BEGIN  ++++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    if-nez p1, :cond_0

    .line 2908
    const-string v2, "DMCFgm"

    const-string v3, "setDLNADataSource(), Fail! Data FilePath is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2962
    :goto_0
    monitor-exit p0

    return-void

    .line 2912
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v2, :cond_2

    .line 2914
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDLNADataSource(), FilePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getTheLastPosition()I

    move-result v2

    iput v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I

    .line 2918
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/videowidget/videoDMC/DMCUtil;->isFileOutputing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2920
    .local v0, bIsFilePlaying:Z
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDLNADataSource(), Is File Playing? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    if-eqz v0, :cond_1

    .line 2924
    const-string v2, "DMCFgm"

    const-string v3, "setDLNADataSource(), File Is Playing! No need to SetAVTransportURI Again."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    .line 2927
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestDLNAStateAndUpdateUI()V

    .line 2950
    :goto_1
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestUpdateThumbNail()V

    .line 2955
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2961
    .end local v0           #bIsFilePlaying:Z
    :goto_2
    const-string v2, "DMCFgm"

    const-string v3, "setDLNADataSource(), END    ----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2904
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2931
    .restart local v0       #bIsFilePlaying:Z
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setAVTransportURI(Ljava/lang/String;)I

    move-result v1

    .line 2932
    .local v1, iResult:I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2935
    :pswitch_1
    const-string v2, "DMCFgm"

    const-string v3, "setDLNADataSource(), Set URI Fail! Render is not Ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2938
    :pswitch_2
    const-string v2, "DMCFgm"

    const-string v3, "setDLNADataSource(), Set URI Fail! Set in Incorrect State."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2942
    :pswitch_3
    const-string v2, "DMCFgm"

    const-string v3, "setDLNADataSource(), Set URI OK!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    .line 2945
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestDLNAStateAndUpdateUI()V

    goto :goto_1

    .line 2959
    .end local v0           #bIsFilePlaying:Z
    .end local v1           #iResult:I
    :cond_2
    const-string v2, "DMCFgm"

    const-string v3, "setDLNADataSource(), Fail! mDLNAManager is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2932
    nop

    :pswitch_data_0
    .packed-switch -0x3eb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized setDLNADataSourceByDMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "sServerID"
    .parameter "sContentID"
    .parameter "sContainerID"

    .prologue
    .line 2969
    monitor-enter p0

    :try_start_0
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByDMS(), BEGIN  ++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2973
    :cond_0
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByDMS(), Fail! ServerID or ContentID or ContainerID is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDLNADataSourceByDMS(), ServerID    = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDLNADataSourceByDMS(), ContentID   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDLNADataSourceByDMS(), ContainerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3015
    :goto_0
    monitor-exit p0

    return-void

    .line 2980
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_3

    .line 2982
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDLNADataSourceByDMS(), ServerID    = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDLNADataSourceByDMS(), ContentID   = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDLNADataSourceByDMS(), ContainerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getTheLastPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I

    .line 2988
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/htc/videowidget/videoDMC/DMCUtil;->isFileOutputing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2990
    .local v0, bIsFilePlaying:Z
    if-eqz v0, :cond_2

    .line 2992
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByDMS(), File Is Playing! No need to SetAVTransportURI Again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    .line 3002
    :goto_1
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestDLNAStateAndUpdateUI()V

    .line 3003
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestUpdateThumbNail()V

    .line 3008
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 3014
    .end local v0           #bIsFilePlaying:Z
    :goto_2
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByDMS(), END    ----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2969
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2997
    .restart local v0       #bIsFilePlaying:Z
    :cond_2
    :try_start_2
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByDMS(), setDataSource()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    goto :goto_1

    .line 3012
    .end local v0           #bIsFilePlaying:Z
    :cond_3
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByDMS(), Fail! mDLNAManager is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized setDLNADataSourceByMediaInfo(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "dlnaPushMediaInfo"

    .prologue
    .line 2844
    monitor-enter p0

    :try_start_0
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByMediaInfo, BEGIN  ++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    if-nez p1, :cond_0

    .line 2848
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByMediaInfo, Fail! Data dlnaPushMediaInfo is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2897
    :goto_0
    monitor-exit p0

    return-void

    .line 2852
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_3

    .line 2854
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDLNADataSourceByMediaInfo(), FilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getTheLastPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miFirstSeekPosition:I

    .line 2858
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoDMC/DMCUtil;->isFileOutputing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2860
    .local v0, bIsFilePlaying:Z
    if-eqz v0, :cond_1

    .line 2862
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByMediaInfo(), File Is Playing! No need to SetDataSource Again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    .line 2883
    :goto_1
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestUpdateThumbNail()V

    .line 2884
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->requestDLNAStateAndUpdateUI()V

    .line 2889
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2896
    .end local v0           #bIsFilePlaying:Z
    :goto_2
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByMediaInfo, END    ----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2844
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2867
    .restart local v0       #bIsFilePlaying:Z
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/DxDrm/fuse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2872
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByMediaInfo(), setDTCPIPDataSource()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setDTCPIPDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    .line 2880
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    goto :goto_1

    .line 2877
    :cond_2
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByMediaInfo(), setDataSource()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    goto :goto_3

    .line 2893
    .end local v0           #bIsFilePlaying:Z
    :cond_3
    const-string v1, "DMCFgm"

    const-string v2, "setDLNADataSourceByMediaInfo, Fail! mDLNAManager is Null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private setDLNAManager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1375
    const-string v0, "DMCFgm"

    const-string v1, "setDLNAManager(), BEGIN  ++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v0, :cond_3

    .line 1380
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;

    if-nez v0, :cond_0

    .line 1381
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;

    invoke-virtual {v0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setDLNAServiceStatusListener(Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I

    .line 1384
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNARendererListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;

    if-nez v0, :cond_1

    .line 1385
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNARendererListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNARendererListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;

    invoke-virtual {v0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererStatusListener(Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;)I

    .line 1388
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAControllerListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;

    if-nez v0, :cond_2

    .line 1389
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAControllerListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;

    .line 1390
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAControllerListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;

    invoke-virtual {v0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;)I

    .line 1398
    :goto_0
    const-string v0, "DMCFgm"

    const-string v1, "setDLNAManager(), END    ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return-void

    .line 1395
    :cond_3
    const-string v0, "DMCFgm"

    const-string v1, "setDLNAManager(), mDLNAManager is Null. Set Fail@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDefaultThumbNail()V
    .locals 3

    .prologue
    .line 2562
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mImageThumbNail:Lcom/htc/videowidget/videoDMC/CacheImageView;

    if-eqz v1, :cond_0

    .line 2564
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mImageThumbNail:Lcom/htc/videowidget/videoDMC/CacheImageView;

    const v2, 0x20800ef

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoDMC/CacheImageView;->setImageResource(I)V

    .line 2565
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mImageThumbNail:Lcom/htc/videowidget/videoDMC/CacheImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoDMC/CacheImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2567
    const-string v1, "DMCFgm"

    const-string v2, "setDefaultThumbNail(), Show Default ThumbNail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2570
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 2571
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->relayoutThumbNail(I)V

    .line 2575
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 2573
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_1
    const-string v1, "DMCFgm"

    const-string v2, "setDefaultThumbNail(), resource is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPlayBTN()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 1442
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v0, :cond_0

    .line 1444
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayBTN() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1446
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 1448
    :cond_0
    return-void
.end method

.method private declared-synchronized setRendererIdToDLNAManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "rendererId"

    .prologue
    .line 2512
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    .line 2513
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2515
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRendererIdToDLNAManager(), mDLNAManager.setRenderer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getDLNANotificationInfo()Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v0

    .line 2517
    .local v0, result:I
    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    .line 2519
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    iput v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    .line 2520
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRendererIdToDLNAManager(), Set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as Renderer OK, Sync Renderer State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    .end local v0           #result:I
    :goto_0
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 2522
    .restart local v0       #result:I
    :cond_0
    const/16 v1, -0x3ee

    if-ne v0, v1, :cond_1

    .line 2525
    :try_start_1
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRendererIdToDLNAManager(), Renderer id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid, Need to Select another One."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    .line 2528
    const-string v1, "General Error after Setting RendererID"

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;

    .line 2529
    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    .line 2530
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 2531
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2512
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2535
    .restart local v0       #result:I
    :cond_1
    :try_start_2
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRendererIdToDLNAManager(), Set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as Renderer Fail. Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    const-string v1, "Other Error after Setting RendererID"

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;

    .line 2538
    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I

    .line 2539
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 2540
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2545
    .end local v0           #result:I
    :cond_2
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRendererIdToDLNAManager(), msRendererID Invalid, msRendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private setTVHelper()V
    .locals 3

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mTvHelper:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    if-nez v0, :cond_0

    .line 1314
    const-string v0, "DMCFgm"

    const-string v1, "setTVHelper(), Initialize HtcTvDisplayHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mTvListener:Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;

    .line 1317
    new-instance v0, Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mTvListener:Lcom/htc/videowidget/videoDMC/DMCFgm$TvListener;

    invoke-direct {v0, v1, v2}, Lcom/htc/medialinkhd/HtcTvDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mTvHelper:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    .line 1324
    :goto_0
    return-void

    .line 1322
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "setTVHelper(), HtcTvDisplayHelper has existed, No need to initialization."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setThumbNail()V
    .locals 4

    .prologue
    .line 2580
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 2582
    const-string v1, "DMCFgm"

    const-string v2, "setThumbNail(), mThumbNailUri Availible. Do ThumbNail Task"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setThumbNail(), Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mImageThumbNail:Lcom/htc/videowidget/videoDMC/CacheImageView;

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoDMC/CacheImageView;->postSetImageURI(Landroid/net/Uri;)V

    .line 2586
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2587
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 2588
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->relayoutThumbNail(I)V

    .line 2598
    .end local v0           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 2590
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_0
    const-string v1, "DMCFgm"

    const-string v2, "setThumbNail(),, resource is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2594
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    const-string v1, "DMCFgm"

    const-string v2, "setThumbNail(), mThumbNailUri is NULL. Show Default ThumbNail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setDefaultThumbNail()V

    goto :goto_0
.end method

.method private setupActionbarBtn(Landroid/view/Menu;IIIII)Landroid/view/Menu;
    .locals 2
    .parameter "menu"
    .parameter "index"
    .parameter "id"
    .parameter "order"
    .parameter "title"
    .parameter "imageResource"

    .prologue
    .line 3703
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3704
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 3706
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3707
    invoke-interface {v0, p6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3709
    :cond_0
    return-object p1
.end method

.method private showDLNACmdResult(ILjava/lang/String;)V
    .locals 3
    .parameter "iResult"
    .parameter "strCaller"

    .prologue
    .line 1175
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDLNACmdResult(), Caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    packed-switch p1, :pswitch_data_0

    .line 1225
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDLNACmdResult(), Result = UNDEFINED Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    return-void

    .line 1180
    :pswitch_0
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_GENERAL_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1185
    :pswitch_1
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1190
    :pswitch_2
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_INVALID_RENDERERID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1195
    :pswitch_3
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_LISTENER_NOT_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1200
    :pswitch_4
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_NO_VALID_SESSION_COOKIE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1205
    :pswitch_5
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    :pswitch_6
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1215
    :pswitch_7
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_SAME_RENDERER_ALREADY_EXIST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    :pswitch_8
    const-string v0, "DMCFgm"

    const-string v1, "showDLNACmdResult(), Result = RETURN_CODE_WRONG_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1176
    :pswitch_data_0
    .packed-switch -0x3f0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 2023
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2027
    :try_start_0
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2037
    const-string v2, "DMCFgm"

    const-string v3, "showErrorDialog(), Do Nothing! Activity is Null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_1
    :goto_1
    return-void

    .line 2029
    :catch_0
    move-exception v1

    .line 2031
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DMCFgm"

    const-string v3, "showErrorDialog(), Dismiss Error Dialog error "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showErrorDialog(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2041
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCUtil;->removeDLNAPref(Landroid/content/Context;)V

    .line 2043
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2044
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2045
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2046
    const v2, 0x1040010

    new-instance v3, Lcom/htc/videowidget/videoDMC/DMCFgm$2;

    invoke-direct {v3, p0}, Lcom/htc/videowidget/videoDMC/DMCFgm$2;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2055
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2056
    new-instance v2, Lcom/htc/videowidget/videoDMC/DMCFgm$3;

    invoke-direct {v2, p0}, Lcom/htc/videowidget/videoDMC/DMCFgm$3;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2064
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2065
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    .line 2067
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2068
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->dismiss()V

    .line 2069
    :cond_3
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2070
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->dismissDetailDialog()V

    .line 2071
    :cond_4
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2072
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 2075
    :try_start_1
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2077
    :catch_1
    move-exception v1

    .line 2079
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    const-string v2, "DMCFgm"

    const-string v3, "showErrorDialog(), show ErrorDialog ErrorLog "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showErrorDialog(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1
.end method

.method private startUpdatePositionTask(Ljava/lang/String;)V
    .locals 4
    .parameter "caller"

    .prologue
    const/16 v3, 0xc

    .line 1420
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUpdatePositionTask(), caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1424
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1426
    :cond_0
    return-void
.end method

.method private stopUpdatePositionTask(Ljava/lang/String;)V
    .locals 3
    .parameter "caller"

    .prologue
    .line 1413
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopUpdatePositionTask(), caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1416
    :cond_0
    return-void
.end method

.method private static toString(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)Ljava/lang/String;
    .locals 4
    .parameter "dlnaPushMediaInfo"

    .prologue
    .line 1295
    if-nez p0, :cond_0

    .line 1297
    const-string v1, ""

    .line 1307
    :goto_0
    return-object v1

    .line 1299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1300
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "========= DLNAPushMediaInfo ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nThumb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getThumbFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nTotalFileSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getTotalFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nDownloadedSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getDownloadedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string v1, "\n==============================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private updateSecondaryProgress()V
    .locals 14

    .prologue
    .line 4087
    iget-object v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v8}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v8}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    .line 4115
    :cond_0
    :goto_0
    return-void

    .line 4090
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v8}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4091
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4094
    const-string v8, "DMCFgm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateSecondaryProgress], miDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    iget v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    if-lez v8, :cond_0

    .line 4097
    iget-object v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v8}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getTotalFileSize()J

    move-result-wide v6

    .line 4098
    .local v6, totalBytes:J
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 4100
    .local v0, currentBytes:J
    const-string v8, "DMCFgm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateSecondaryProgress], totalBytes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    const-string v8, "DMCFgm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateSecondaryProgress], currentBytes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 4106
    const-wide/high16 v8, 0x4059

    long-to-double v10, v0

    long-to-double v12, v6

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 4107
    .local v3, percent:D
    iget v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miDuration:I

    int-to-double v8, v8

    mul-double/2addr v8, v3

    const-wide/high16 v10, 0x4059

    div-double/2addr v8, v10

    double-to-int v5, v8

    .line 4108
    .local v5, secPos:I
    const-string v8, "DMCFgm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateSecondaryProgress], percent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    const-string v8, "DMCFgm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateSecondaryProgress], secPos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    if-lez v5, :cond_0

    iget-object v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v8, :cond_0

    .line 4113
    iget-object v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/16 v9, 0x387

    mul-int/lit16 v10, v5, 0x3e8

    invoke-virtual {v8, v9, v10}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    goto/16 :goto_0
.end method

.method private updateUIbyDLNAState(I)V
    .locals 8
    .parameter "DLNAState"

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1455
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUIbyDLNAState(), DLNAState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1458
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 1682
    :goto_0
    :pswitch_0
    return-void

    .line 1462
    :pswitch_1
    const-string v1, "HtcDLNAServiceManager.STATE_DISCONNECTED"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    .line 1463
    iput-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 1464
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1465
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1467
    if-eqz v0, :cond_0

    .line 1469
    const v1, 0x20402f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1470
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1473
    :cond_0
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1480
    :pswitch_2
    const-string v1, "HtcDLNAServiceManager.STATE_IDLE"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    .line 1481
    iput-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 1482
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1483
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1485
    if-eqz v0, :cond_1

    .line 1487
    const v1, 0x609001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1488
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    :cond_1
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1497
    :pswitch_3
    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    if-ne v1, v5, :cond_3

    .line 1499
    :cond_2
    const-string v1, "HtcDLNAServiceManager.STATE_NO_MEDIA"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetPositionAndDuration(Ljava/lang/String;)V

    .line 1501
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1502
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    goto :goto_0

    .line 1506
    :cond_3
    const-string v1, "HtcDLNAServiceManager.STATE_NO_MEDIA"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    .line 1508
    iput-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 1509
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1510
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1512
    if-eqz v0, :cond_4

    .line 1514
    const v1, 0x609001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1515
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1518
    :cond_4
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1525
    :pswitch_4
    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    if-ne v1, v5, :cond_6

    .line 1527
    :cond_5
    const-string v1, "HtcDLNAServiceManager.STATE_PAUSED"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetPositionAndDuration(Ljava/lang/String;)V

    .line 1529
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1530
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    goto/16 :goto_0

    .line 1534
    :cond_6
    const-string v1, "HtcDLNAServiceManager.STATE_PAUSED"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    .line 1536
    iput-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 1537
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1538
    invoke-direct {p0, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1541
    if-eqz v0, :cond_7

    .line 1543
    const v1, 0x609001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1545
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1548
    :cond_7
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1555
    :pswitch_5
    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    if-ne v1, v5, :cond_9

    .line 1557
    :cond_8
    const-string v1, "HtcDLNAServiceManager.STATE_PLAYING"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetPositionAndDuration(Ljava/lang/String;)V

    .line 1559
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1560
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    goto/16 :goto_0

    .line 1564
    :cond_9
    iput-boolean v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbHasPlayed:Z

    .line 1566
    const-string v1, "HtcDLNAServiceManager.STATE_PLAYING"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->startUpdatePositionTask(Ljava/lang/String;)V

    .line 1568
    iput-boolean v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 1569
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1570
    invoke-direct {p0, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1572
    if-eqz v0, :cond_a

    .line 1574
    const v1, 0x609001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1576
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1579
    :cond_a
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1587
    :pswitch_6
    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    if-ne v1, v5, :cond_d

    .line 1589
    :cond_b
    const-string v1, "HtcDLNAServiceManager.STATE_STOPPED"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetPositionAndDuration(Ljava/lang/String;)V

    .line 1591
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1592
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1594
    if-eqz v0, :cond_c

    .line 1596
    const-string v1, "dlna_controller_state_stopped"

    const-string v2, "string"

    const-string v3, "com.htc.videowidget.res"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1597
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1600
    :cond_c
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1604
    :cond_d
    const-string v1, "HtcDLNAServiceManager.STATE_STOPPED"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    .line 1609
    iput-boolean v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbTempResetPosition:Z

    .line 1610
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v1, v7}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 1611
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v1, v7}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 1613
    iput-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 1614
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1615
    invoke-direct {p0, v5}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1617
    if-eqz v0, :cond_e

    .line 1619
    const v1, 0x609001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1620
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1623
    :cond_e
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1629
    :pswitch_7
    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    if-ne v1, v5, :cond_10

    .line 1631
    :cond_f
    const-string v1, "HtcDLNAServiceManager.STATE_TRANSITIONING"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetPositionAndDuration(Ljava/lang/String;)V

    .line 1633
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1634
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    goto/16 :goto_0

    .line 1638
    :cond_10
    const-string v1, "HtcDLNAServiceManager.STATE_TRANSITIONING"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    .line 1640
    iput-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 1641
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1642
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1644
    if-eqz v0, :cond_11

    .line 1646
    const v1, 0x609001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1647
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1650
    :cond_11
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1656
    :pswitch_8
    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbWaitForFirstPlayAfterDataSourceIsSet:Z

    if-ne v1, v5, :cond_13

    .line 1658
    :cond_12
    const-string v1, "HtcDLNAServiceManager.STATE_END"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetPositionAndDuration(Ljava/lang/String;)V

    .line 1660
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1661
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    goto/16 :goto_0

    .line 1665
    :cond_13
    const-string v1, "HtcDLNAServiceManager.STATE_END"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    .line 1667
    iput-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    .line 1668
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setPlayBTN()V

    .line 1669
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerEnable(Z)V

    .line 1671
    if-eqz v0, :cond_14

    .line 1673
    const v1, 0x6090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    .line 1674
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msStateDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1677
    :cond_14
    const-string v1, "DMCFgm"

    const-string v2, "updateUIbyDLNAState(), resource is NULL! Can\'t call back Video\'s Description for Secondary ActionBar Text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public closeDMC()V
    .locals 4

    .prologue
    .line 1115
    const-string v2, "closeDMC()"

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V

    .line 1125
    const-string v2, "closeDMC()"

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->releaseDLNAManager(Ljava/lang/String;)V

    .line 1127
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    if-eqz v2, :cond_0

    .line 1129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1130
    .local v0, bundle:Landroid/os/Bundle;
    const/16 v1, 0xd

    .line 1131
    .local v1, code:I
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    invoke-interface {v2, v1, v0}, Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 1132
    const-string v2, "DMCFgm"

    const-string v3, "Send EVENT BACK = EVENT_CLOSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:I
    :cond_0
    const-string v2, "DMCFgm"

    const-string v3, "closeDMC(), Finish release."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentRendererID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1070
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRendererID(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "nTagId"

    .prologue
    .line 3695
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3697
    .local v0, b:Landroid/os/Bundle;
    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v0

    .line 1060
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 426
    const-string v0, "DMCFgm"

    const-string v1, "onActivityCreated(), ++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v0, "DMCFgm"

    const-string v1, "onActivityCreated(), ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 730
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(), RequestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ResultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const v1, 0x276e6

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 733
    const-string v1, "DMR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, sRendererID:Ljava/lang/String;
    const-string v1, "DMCFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(), New Renderer ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    :cond_0
    const-string v1, "DMCFgm"

    const-string v2, "onActivityResult(), Do Nothing! InValid New Renderer ID. NULL or Blank"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .end local v0           #sRendererID:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 741
    .restart local v0       #sRendererID:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 743
    const-string v1, "DMCFgm"

    const-string v2, "onActivityResult(), Do Nothing! Current RendererID equals New RendererID "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 748
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_4

    .line 754
    const-string v1, "DMCFgm"

    const-string v2, "onActivityResult(), Reset DLNAManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    .line 760
    iget v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->saveTheLastPosition(I)V

    .line 762
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbNewRendererIsRequestedAsStateNotIDLE:Z

    .line 763
    const-string v1, "onActivityResult(), Reset Renderer"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetStateToIDLE(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_4
    const-string v1, "DMCFgm"

    const-string v2, "onActivityResult(), Do Nothing! mDLNAManager is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 291
    const-string v0, "DMCFgm"

    const-string v1, "onAttch(), ++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 294
    const-string v0, "DMCFgm"

    const-string v1, "onAttch(), ------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 850
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(), orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 853
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_0

    .line 854
    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerByOrientation(I)V

    .line 858
    :goto_0
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsPlaying:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setCenterButtonImage(Ljava/lang/Boolean;)V

    .line 859
    return-void

    .line 856
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerByOrientation(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 303
    const-string v0, "DMCFgm"

    const-string v1, "onCreate(), +++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    new-instance v0, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setHasOptionsMenu(Z)V

    .line 311
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerDestroy:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 313
    const-string v0, "DMCFgm"

    const-string v1, "onCreate(), Register InterFilter for DLNA DESTROY BroadCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerDestroy:Landroid/content/IntentFilter;

    .line 315
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerDestroy:Landroid/content/IntentFilter;

    const-string v1, "com.htc.htcdlnamiddlelayer.action.dmc_destroy_notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerDestroy:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerDestroy:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerStop:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 320
    const-string v0, "DMCFgm"

    const-string v1, "onCreate(), Register InterFilter for DLNA STOP BroadCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerStop:Landroid/content/IntentFilter;

    .line 322
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerStop:Landroid/content/IntentFilter;

    const-string v1, "com.htc.htcdlnamiddlelayer.action.dmc_stop_position"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerStop:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerStop:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerCompleted:Landroid/content/IntentFilter;

    if-nez v0, :cond_2

    .line 327
    const-string v0, "DMCFgm"

    const-string v1, "onCreate(), Register InterFilter for DLNA COMPLETED BroadCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerCompleted:Landroid/content/IntentFilter;

    .line 329
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerCompleted:Landroid/content/IntentFilter;

    const-string v1, "com.htc.htcdlnamiddlelayer.PLAY_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerCompleted:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerCompleted:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    :cond_2
    const-string v0, "DMCFgm"

    const-string v1, "onCreate(), -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 657
    const-string v0, "DMCFgm"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    const-string v2, "DMCFgm"

    const-string v3, "onCreateView(), ++++++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 350
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 352
    const-string v2, "DMCFgm"

    const-string v3, "[onCreateView] res is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v2, 0x0

    .line 416
    :goto_0
    return-object v2

    .line 358
    :cond_0
    const v2, 0x6030006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mView:Landroid/view/View;

    .line 361
    new-instance v2, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mView:Landroid/view/View;

    const/16 v5, 0x259

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    .line 364
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setFFFRButtonVisibility(Z)V

    .line 366
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2, v6, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 367
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2, v7, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 368
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2, v8, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 369
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 370
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 371
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 372
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 373
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 374
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 375
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v7}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 376
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v6}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 377
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v7}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 379
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 380
    .local v1, rotation:I
    packed-switch v1, :pswitch_data_0

    .line 391
    invoke-direct {p0, v7}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerByOrientation(I)V

    .line 397
    :goto_1
    const-string v2, "view_video_label"

    const-string v3, "string"

    const-string v4, "com.htc.videowidget.res"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;

    .line 399
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mView:Landroid/view/View;

    const-string v3, "dmc_video_thumbnail"

    const-string v4, "id"

    const-string v5, "com.htc.videowidget.res"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/videowidget/videoDMC/CacheImageView;

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mImageThumbNail:Lcom/htc/videowidget/videoDMC/CacheImageView;

    .line 400
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mView:Landroid/view/View;

    const-string v3, "thumbnail_container"

    const-string v4, "id"

    const-string v5, "com.htc.videowidget.res"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailContainer:Landroid/widget/RelativeLayout;

    .line 402
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->initCenterButton(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 405
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    if-eqz v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v2, v9}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 408
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    invoke-virtual {v2, v9}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 415
    :goto_2
    const-string v2, "DMCFgm"

    const-string v3, "onCreateView(), ------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 384
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerByOrientation(I)V

    goto :goto_1

    .line 388
    :pswitch_1
    invoke-direct {p0, v8}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setControllerByOrientation(I)V

    goto :goto_1

    .line 412
    :cond_1
    const-string v2, "DMCFgm"

    const-string v3, "onCreateView(), mUIHandler is NULL. Can\'t Upload Default ThumbNail!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    const-string v0, "DMCFgm"

    const-string v1, "onDestroy(), ++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 603
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerDestroy:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 605
    const-string v0, "DMCFgm"

    const-string v1, "onDestroy(), UnRegister InterFilter for DLNA DESTROY BroadCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerDestroy:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 607
    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerDestroy:Landroid/content/IntentFilter;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerStop:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 611
    const-string v0, "DMCFgm"

    const-string v1, "onDestroy(), UnRegister InterFilter for DLNA STOP BroadCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerStop:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerStop:Landroid/content/IntentFilter;

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerCompleted:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    .line 617
    const-string v0, "DMCFgm"

    const-string v1, "onDestroy(), UnRegister InterFilter for DLNA COMPLETED BroadCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mBroadcastReceiverDLNAManagerCompleted:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 619
    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIntentFilterDLNAManagerCompleted:Landroid/content/IntentFilter;

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailDownloadTask:Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailDownloadTask:Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 625
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailDownloadTask:Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->cancel(Z)Z

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v0, :cond_4

    .line 631
    const-string v0, "DMCFgm"

    const-string v1, "onDestroy(), Set mDLNAManager == Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 635
    :cond_4
    const-string v0, "DMCFgm"

    const-string v1, "onDestroy(), ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 585
    const-string v0, "DMCFgm"

    const-string v1, "onDestroyView(), ++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 589
    const-string v0, "DMCFgm"

    const-string v1, "onDestroyView(), ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 644
    const-string v0, "DMCFgm"

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 646
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 703
    const-string v1, "DMCFgm"

    const-string v2, "onOptionsItemSelected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v0, 0x1

    .line 705
    .local v0, bRet:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 718
    const/4 v0, 0x0

    .line 721
    :goto_0
    return v0

    .line 709
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->popupVolumePanel(Landroid/content/Context;)V

    goto :goto_0

    .line 714
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->closeDMC()V

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0xff04
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 512
    const-string v0, "DMCFgm"

    const-string v1, "onPause(), BEGIN ++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 516
    const-string v0, "DMCFgm"

    const-string v1, "onPause(), END   ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const v2, 0xff05

    const v8, 0xff04

    const/4 v4, 0x1

    .line 669
    const-string v0, "DMCFgm"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->removeOptionMenuItem(Landroid/view/Menu;)V

    .line 671
    const v5, 0x2040270

    const v6, 0x20800a3

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setupActionbarBtn(Landroid/view/Menu;IIIII)Landroid/view/Menu;

    .line 672
    const v5, 0x20402d8

    const v6, 0x20800c7

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setupActionbarBtn(Landroid/view/Menu;IIIII)Landroid/view/Menu;

    .line 673
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 678
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v7

    .line 679
    .local v7, res:Landroid/content/res/Resources;
    if-eqz v7, :cond_0

    .line 680
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->relayoutThumbNail(I)V

    .line 683
    :goto_0
    return-void

    .line 682
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "onCreateOptionsMenu, resource is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 487
    const-string v1, "DMCFgm"

    const-string v2, "onResume(), BEGIN ++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIsVisible:Z

    .line 492
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msVideoTitle:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->callBackActionBarTexts(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 497
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->relayoutThumbNail(I)V

    .line 502
    :goto_0
    const-string v1, "DMCFgm"

    const-string v2, "onResume(), END   ----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 500
    :cond_0
    const-string v1, "DMCFgm"

    const-string v2, "onResume(), resource is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 438
    const-string v2, "DMCFgm"

    const-string v3, "onStart(), ++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 441
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mFooterControllerListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    if-eqz v2, :cond_0

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mFooterControllerListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 446
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setTVHelper()V

    .line 447
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcTvDisplayHelper;->isTvOn(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsInMirrorMode:Z

    .line 448
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart(), Is it MirrorMode ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbIsInMirrorMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getDLNASessionCookie()V

    .line 452
    const/4 v1, 0x4

    .line 453
    .local v1, filter:I
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-nez v2, :cond_1

    .line 457
    :try_start_0
    new-instance v2, Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I

    invoke-direct {v2, v3, v4, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    :try_end_0
    .catch Lcom/htc/medialinkhd/CookieException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_1
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->saveDLNASessionCookie()V

    .line 469
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->setDLNAManager()V

    .line 471
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 473
    const-string v2, "DMCFgm"

    const-string v3, "onStart(), mDLNAManager.connect()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->connect()I

    .line 478
    :cond_2
    const-string v2, "DMCFgm"

    const-string v3, "onStart(), --"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Lcom/htc/medialinkhd/CookieException;
    const-string v2, "DMCFgm"

    invoke-virtual {v0}, Lcom/htc/medialinkhd/CookieException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v2, "DMCFgm"

    const-string v3, "onStart(), Create HtcDLNAServiceManager error! Do nothing! "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    const-string v0, "DMCFgm"

    const-string v1, "onStop(), ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mIsVisible:Z

    .line 530
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v0, :cond_1

    .line 533
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbFirstPlayIsRequested:Z

    if-nez v0, :cond_0

    .line 535
    const-string v0, "DMCFgm"

    const-string v1, "onStop(), Didn\'t Request First Play. CloseDMC and Release DLNAManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->closeDMC()V

    .line 539
    :cond_0
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerHasReleased:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerReleasing:Z

    if-nez v0, :cond_7

    .line 541
    const-string v0, "DMCFgm"

    const-string v1, "onStop(), mDLNAManager.disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnect()V

    .line 548
    :goto_0
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I

    .line 553
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setDLNAServiceStatusListener(Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I

    .line 554
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererStatusListener(Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;)I

    .line 555
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;)I

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAControllerListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;

    if-eqz v0, :cond_2

    .line 562
    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAControllerListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAControllerListener;

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNARendererListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;

    if-eqz v0, :cond_3

    .line 564
    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNARendererListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNARendererListener;

    .line 565
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;

    if-eqz v0, :cond_4

    .line 566
    :cond_4
    iput-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusListener:Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;

    .line 567
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mTvHelper:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    if-eqz v0, :cond_5

    .line 569
    const-string v0, "DMCFgm"

    const-string v1, "onStop(), mTvHelper.release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mTvHelper:Lcom/htc/medialinkhd/HtcTvDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcTvDisplayHelper;->release()V

    .line 572
    :cond_5
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_6

    .line 573
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 576
    :cond_6
    const-string v0, "DMCFgm"

    const-string v1, "onStop(), --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 546
    :cond_7
    const-string v0, "DMCFgm"

    const-string v1, "onStop(), mDLNAManager has been released, Don\'t need to disconnect() again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setControllerMode(I)V
    .locals 3
    .parameter "iMode"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getControllerType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1149
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerMode(), Do Nothing! Same ControllerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :goto_0
    return-void

    .line 1152
    :cond_0
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerMode(), Set ControllerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerType(I)V

    .line 1154
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->show()Z

    goto :goto_0

    .line 1158
    :cond_1
    const-string v0, "DMCFgm"

    const-string v1, "setControllerMode(), Do Nothing! mControllerHelper is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDLNAStatusBar(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V
    .locals 0
    .parameter "notification"

    .prologue
    .line 888
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    .line 889
    return-void
.end method

.method public setDMSDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"

    .prologue
    .line 981
    const-string v0, "GetDataSource For DMS"

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetForNewDataSource(Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    .line 984
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msServerID:Ljava/lang/String;

    .line 985
    iput-object p2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;

    .line 986
    iput-object p3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContainerID:Ljava/lang/String;

    .line 988
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;

    .line 990
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDataSource For DMS, serverID    = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDataSource For DMS, contentID   = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDataSource For DMS, containerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z

    .line 995
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAServiceConnected:Z

    if-eqz v0, :cond_0

    .line 997
    const-string v0, "DMCFgm"

    const-string v1, "GetDataSource For DMS, DLNAManager Service is Connected. handleRendererID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleRendererID()V

    .line 1000
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 6
    .parameter "dlnaPushMediaInfo"

    .prologue
    const/4 v5, 0x1

    .line 920
    const-string v0, "GetDataSource With DLNAPushMediaInfo, For Watch"

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetForNewDataSource(Ljava/lang/String;)V

    .line 921
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    .line 923
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 924
    const-string v0, "DMCFgm"

    const-string v1, "GetDataSource With DLNAPushMediaInfo, info<%s> "

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->toString(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v0, "DMCFgm"

    const-string v1, "GetDataSource With DLNAPushMediaInfo, mbDataSourceIsReadyForSet = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iput-boolean v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z

    .line 928
    if-eqz p1, :cond_0

    .line 930
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;

    .line 933
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMetaDataFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/DxDrm/fuse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDataSource With DLNAPushMediaInfo, DTCP DataSource FilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCUtil;->getMaxFileSize(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mlMaxDownloadFileSize:J

    .line 939
    :cond_1
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAServiceConnected:Z

    if-eqz v0, :cond_2

    .line 941
    const-string v0, "DMCFgm"

    const-string v1, "GetDataSource With DLNAPushMediaInfo DLNAManager Service is Connected. handleRendererID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleRendererID()V

    .line 945
    :cond_2
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "strPathName"

    .prologue
    const/4 v3, 0x1

    .line 954
    const-string v0, "Get DataSource For Local or Streaming"

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->resetForNewDataSource(Ljava/lang/String;)V

    .line 955
    iput v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I

    .line 957
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    .line 958
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msOutPuttingFilePath:Ljava/lang/String;

    .line 960
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDataSource With strPathName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iput-boolean v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z

    .line 964
    iget-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAServiceConnected:Z

    if-eqz v0, :cond_0

    .line 966
    const-string v0, "DMCFgm"

    const-string v1, "GetDataSource, DLNAManager Service is Connected. handleRendererID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleRendererID()V

    .line 969
    :cond_0
    return-void
.end method

.method public setOnEventListener(Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 1169
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnEventListener(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    .line 1171
    return-void
.end method

.method public setProperty(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .parameter "sTagID"
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 3664
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3666
    :cond_0
    const-string v2, "DMCFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProperty(), sTagID is inValid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :cond_1
    :goto_0
    return v1

    .line 3670
    :cond_2
    const-string v2, "TAG_MHL_CONTROLLER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3672
    const-string v2, "DMCFgm"

    const-string v3, "setProperty(), TagID = TAG_MHL_CONTROLLER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    if-eqz p2, :cond_1

    .line 3675
    const-string v1, "TAG_MHL_CONTROLLER"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3676
    .local v0, keycode:I
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 3682
    .end local v0           #keycode:I
    :cond_3
    const-string v2, "DMCFgm"

    const-string v3, "setProperty(), No Action, No cooresponding TagID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 3
    .parameter "rendererID"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    .line 872
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRendererID() Get the Newer rendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_0
    return-void

    .line 876
    :cond_0
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;

    .line 877
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRendererID() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setThumbNailSource(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 899
    if-eqz p1, :cond_0

    .line 901
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbNailSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mbThumbNailFromActivity:Z

    .line 903
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    .line 904
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->mThumbNailUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm;->msThumbNailPath:Ljava/lang/String;

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    const-string v0, "DMCFgm"

    const-string v1, "setThumbNailSource(), ThumbNail\'s Uri from Outer Acitivity is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
