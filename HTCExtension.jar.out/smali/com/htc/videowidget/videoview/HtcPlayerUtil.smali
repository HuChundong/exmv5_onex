.class public Lcom/htc/videowidget/videoview/HtcPlayerUtil;
.super Ljava/lang/Object;
.source "HtcPlayerUtil.java"


# static fields
.field public static final BEATS_INDICATOR_BUNDLE_IS_SUPPORT:Ljava/lang/String; = "beats_indicator_is_support"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BEATS_INDICATOR_BUNDLE_RESOURCE_ID:Ljava/lang/String; = "beats_indicator_resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLIP_TYPE_AUDIO_ONLY:I = 0x0

.field public static final CLIP_TYPE_UNKNOWN:I = -0x1

.field public static final CLIP_TYPE_VIDEOAUDIO:I = 0x1

.field public static final CLIP_TYPE_VIDEO_ONLY:I = 0x2

.field public static final CONTROLLER_PORTRAIT_FULL:I = 0x25a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROLLER_PORTRAIT_SIMPLE:I = 0x259
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROLLER_TYPE_FULL:I = 0x25a

.field public static final CONTROLLER_TYPE_SIMPLE:I = 0x259

.field public static final DISPLAYMODE_BESTFIT:I = 0x0

.field public static final DISPLAYMODE_FULLSCREEN:I = 0x1

.field public static final ERROR_BUFFER_TOO_SMALL:I = -0x3f1

.field public static final ERROR_BUNDLE_TAG_FRAMEWORK:Ljava/lang/String; = "framework_err"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_BUNDLE_TAG_IMPL:Ljava/lang/String; = "impl_err"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_CANNOT_CONNECT:I = -0x3eb

.field public static final ERROR_CONNECTION_LOST:I = -0x3ed

.field public static final ERROR_CORRUPT_NAL:I = -0x44b

.field public static final ERROR_END_OF_STREAM:I = -0x3f3

.field public static final ERROR_IO:I = -0x3ec

.field public static final ERROR_MALFORMED:I = -0x3ef

.field public static final ERROR_NOT_CONNECTED:I = -0x3e9

.field public static final ERROR_OUT_OF_RANGE:I = -0x3f0

.field public static final ERROR_TIMEOUT:I = -0x7cf

.field public static final ERROR_UNKNOWN_HOST:I = -0x3ea

.field public static final ERROR_UNSUPPORTED:I = -0x3f2

.field public static final EVENT_BUFFERING_UPDATE:I = 0x0

.field public static final EVENT_CENTERBUTTON_CLICK:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EVENT_CLEAN_FRAME_BUFFER:I = 0xf

.field public static final EVENT_CLIP_TYPE:I = 0x18

.field public static final EVENT_CLOSE:I = 0xd

.field public static final EVENT_COMPLETION:I = 0x1

.field public static final EVENT_CONTROLLER_SELECTE:I = 0x8

.field public static final EVENT_ERROR:I = 0x2

.field public static final EVENT_HDMI_CONNECTED:I = 0x17

.field public static final EVENT_INFO:I = 0x3

.field public static final EVENT_LOCKSCREEN:I = 0xe

.field public static final EVENT_PAUSE:I = 0xb

.field public static final EVENT_PLAY:I = 0xa

.field public static final EVENT_PREPARED:I = 0x4

.field public static final EVENT_SEEK_COMPLETE:I = 0x5

.field public static final EVENT_SELECT_DMR:I = 0x15

.field public static final EVENT_STOP:I = 0xc

.field public static final EVENT_TOUCHSCREEN:I = 0x7

.field public static final EVENT_UPDATE_BEATS_INDICATOR:I = 0x16

.field public static final EVENT_VIDEO_SIZE_CHANGED:I = 0x6

.field public static final FUNC_ID_AUDIO_ONLY:I = 0xd

.field public static final FUNC_ID_CAPTURE_FRAME:I = 0x3

.field public static final FUNC_ID_DELETE:I = 0x6

.field public static final FUNC_ID_DETAIL:I = 0xc

.field public static final FUNC_ID_DISPLAY:I = 0x0

.field public static final FUNC_ID_LOCKSCREEN:I = 0x7

.field public static final FUNC_ID_SELECT_PLAYER:I = 0xa

.field public static final FUNC_ID_SHARE:I = 0xb

.field public static final FUNC_ID_SOUND_ENHANCER:I = 0x4

.field public static final FUNC_ID_SUBTITLE:I = 0x2

.field public static final FUNC_ID_THREE_D_MODE:I = 0x8

.field public static final FUNC_ID_TRIM:I = 0x5

.field public static final FUNC_ID_VIDEO_AUDIO:I = 0xe

.field public static final FUNC_ID_VIDEO_ONLY:I = 0xf

.field static final HELPER_BEATSSTATECHANGE:I = 0x4

.field static final HELPER_HEADSETSTATECHANGE:I = 0x3

.field static final HELPER_ONAIRPLANMODE:I = 0x5

.field static final HELPER_ONHDMICONNECTED:I = 0x1

.field static final HELPER_ONHDMIDISCONNECTED:I = 0x2

.field public static final INFO_BAD_INTERLEAVING:I = 0x320

.field public static final INFO_BUFFERING_END:I = 0x2be

.field public static final INFO_BUFFERING_START:I = 0x2bd

.field public static final INFO_BUNDLE_TAG_EXTRA:Ljava/lang/String; = "int2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final INFO_DISCONTINUITY:I = -0x3f5

.field private static final INFO_FORMAT_CHANGED:I = -0x3f4

.field public static final INFO_METADATA_UPDATE:I = 0x322

.field public static final INFO_NOT_SEEKABLE:I = 0x321

.field public static final INFO_UNKNOWN:I = 0x1

.field public static final INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final KEY_BOOLEAN_BEATS_INDICATOR_IS_SUPPORT:Ljava/lang/String; = "beats_indicator_is_support"

.field public static final KEY_BOOLEAN_CLEAN_FRAME_BUFFER:Ljava/lang/String; = "clean_frame"

.field public static final KEY_BOOLEAN_HDMI_CONNECT:Ljava/lang/String; = "hdmi_connect"

.field public static final KEY_BOOLEAN_LOCK_MODE:Ljava/lang/String; = "lock_mode"

.field public static final KEY_INT_BEATS_INDICATOR_RESOURCE_ID:Ljava/lang/String; = "beats_indicator_resource"

.field public static final KEY_INT_BUFFERING_PERCENT:Ljava/lang/String; = "int2"

.field public static final KEY_INT_CLEAN_FRAME_BUFFER:Ljava/lang/String; = "clean_frame_delay"

.field public static final KEY_INT_MEDIA_ERROR_FRAMEWORK:Ljava/lang/String; = "framework_err"

.field public static final KEY_INT_MEDIA_ERROR_IMPL:Ljava/lang/String; = "impl_err"

.field public static final KEY_INT_MEDIA_INFO_EXTRA:Ljava/lang/String; = "int2"

.field public static final KEY_STRING_CLIP_TYPE:Ljava/lang/String; = "clip_type"

.field public static final KEY_STRING_META_TITLE:Ljava/lang/String; = "meta_title"

.field public static final KEY_STRING_RENDER:Ljava/lang/String; = "render"

.field private static final MEDIA_ERROR_BASE:I = -0x3e8

.field public static final MENU_ITEM_ORDER_CENTER:I = 0x1

.field public static final MENU_ITEM_ORDER_LEFT:I = 0x0

.field public static final MENU_ITEN_ORDER_RIGHT:I = 0x2

.field public static final PROTOCAL_FILE:I = 0x0

.field public static final PROTOCAL_LIVE:I = 0x4

.field public static final PROTOCAL_ONDEMAND:I = 0x2

.field public static final PROTOCAL_PROGRESSIVE:I = 0x3

.field public static final PROTOCAL_UNKNOWN:I = -0x1

.field public static final STATE_BUFFERING:I = 0x5

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACKCOMPLETED:I = 0x6

.field public static final STATE_PLAYING:I = 0x2

.field public static final STATE_PREPARED:I = 0x1

.field public static final STATE_SEEKING:I = 0x3

.field public static final STATE_STOPPED:I = 0x0

.field public static final TAG_ADJUST_BRIGHTNESS:Ljava/lang/String; = "TAG_ADJUST_BRIGHTNESS"

.field public static final TAG_ADJUST_VOLUME:Ljava/lang/String; = "TAG_ADJUST_VOLUME"

.field public static final TAG_AUDIO_SESSION_ID:Ljava/lang/String; = "TAG_AUDIO_SESSION_ID"

.field public static final TAG_CHANGE_SUBTITLE_AS_CLOSE_CAPTION:Ljava/lang/String; = "TAG_CHANGE_SUBTITLE_AS_CLOSE_CAPTION"

.field public static final TAG_DISABLE_AUTO_DLNA:Ljava/lang/String; = "TAG_DISABLE_AUTO_DLNA"

.field public static final TAG_DISPLAY_MODE:Ljava/lang/String; = "TAG_DISPLAY_MODE"

.field public static final TAG_DMP:Ljava/lang/String; = "TAG_DMP"

.field public static final TAG_DURATION:Ljava/lang/String; = "TAG_DURATION"

.field public static final TAG_FORCE_DISABLE_CONTROLLER_FUNCTION:Ljava/lang/String; = "TAG_FORCE_DISABLE_CONTROLLER_FUNCTION"

.field public static final TAG_FORCE_DISABLE_SEEKBAR:Ljava/lang/String; = "TAG_FORCE_DISABLE_SEEKBAR"

.field public static final TAG_HIDE_CONTROLLER:Ljava/lang/String; = "TAG_HIDE_CONTROLLER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_INSTANT_PLAY:Ljava/lang/String; = "TAG_INSTANT_PLAY"

.field public static final TAG_MHL_CONTROLLER:Ljava/lang/String; = "TAG_MHL_CONTROLLER"

.field public static final TAG_MOTION_SPEED:Ljava/lang/String; = "TAG_MOTION_SPEED"

.field public static final TAG_NAVIGATIONBAR_EXISTED:Ljava/lang/String; = "TAG_NAVIGATIONBAR_EXISTED"

.field public static final TAG_SEEKTO:Ljava/lang/String; = "TAG_SEEKTO"

.field public static final TAG_SET_DEFAULT_ENHANCER_AS_HTC51:Ljava/lang/String; = "TAG_SET_DEFAULT_ENHANCER_AS_HTC51"

.field public static final TAG_SET_DEFAULT_SUBTITLE_SHOW:Ljava/lang/String; = "TAG_SET_DEFAULT_SUBTITLE_SHOW"

.field public static final TAG_SHOWME:Ljava/lang/String; = "TAG_SHOWME"

.field public static final TAG_SHOW_CONTROLLER:Ljava/lang/String; = "TAG_SHOW_CONTROLLER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_STEREO_MODE:Ljava/lang/String; = "TAG_STEREO_MODE"

.field public static final TAG_UPDATE_SECONDARY_PROGRESS:Ljava/lang/String; = "TAG_UPDATE_SECONDARY_PROGRESS"

.field public static final TAG_VIDEO_HEIGHT:Ljava/lang/String; = "TAG_VIDEO_HEIGHT"

.field public static final TAG_VIDEO_SPEED:Ljava/lang/String; = "TAG_VIDEO_SPEED"

.field public static final TAG_VIDEO_WIDTH:Ljava/lang/String; = "TAG_VIDEO_WIDTH"

.field public static final VIDEOSPEED_FFW_1X:I = 0x1

.field public static final VIDEOSPEED_FFW_2X:I = 0x2

.field public static final VIDEOSPEED_NORMAL:I = 0x0

.field public static final VIDEOSPEED_REW_1X:I = -0x1

.field public static final VIDEOSPEED_REW_2X:I = -0x2

.field private static sResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->sResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 426
    sget-object v1, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->sResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 429
    if-eqz p0, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc.videowidget.res"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->sResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 439
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->sResources:Landroid/content/res/Resources;

    return-object v1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-object v3, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->sResources:Landroid/content/res/Resources;

    goto :goto_0

    .line 433
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 434
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 435
    sput-object v3, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->sResources:Landroid/content/res/Resources;

    goto :goto_0
.end method
