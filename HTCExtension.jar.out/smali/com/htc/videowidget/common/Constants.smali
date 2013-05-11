.class public Lcom/htc/videowidget/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_BLOCK_VIRTUAL_KEY:Ljava/lang/String; = "com.htc.intent.action.BLOCK_VIRTUAL_KEY"

.field public static final ACTION_MSG_SEND:Ljava/lang/String; = "com.htc.intent.action.SEND_MSG"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "htc.intent.action.SEND_MULTIPLE"

.field public static final ACTION_VMM_SEND:Ljava/lang/String; = "com.htc.vmm.SEND"

.field public static final CHARSET_CN:Ljava/lang/String; = "gb2312"

.field public static final CHARSET_JAPEN:Ljava/lang/String; = "euc-jp"

.field public static final CHARSET_JAPEN_JIS:Ljava/lang/String; = "shift_jis"

.field public static final CHARSET_KOR:Ljava/lang/String; = "euc-kr"

.field public static final CHARSET_TW:Ljava/lang/String; = "big5"

.field public static final CHARSET_UNICODE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DISABLE_DLNA:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DISABLE_MMS:Z = false

.field public static final ENABLE_VIDEO_UPLOAD:Z = true

.field public static final ENABLE_VMM_SHARE:Z = true

.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final ERROR_REASON:Ljava/lang/String; = "error_reason"

#the value of this static final field might be set in the static constructor
.field public static final FLAG_DRM_COUNTBASE_ALWAYS_CONFIRM:Z = false

#the value of this static final field might be set in the static constructor
.field public static final HAS_3D_BARRIER:Z = false

.field public static final HAS_HIGH_SPEED_SUPPORT:Z = true

.field public static final INTENT_VALUE_PAUSE:Ljava/lang/String; = "pause"

.field public static final KEY_PLAYBACK_MODE:Ljava/lang/String; = "playback_mode"

.field public static final KEY_TAB_DEFAULT:Ljava/lang/String; = "tab_default"

.field public static final META_DESCRIPTION:Ljava/lang/String; = "meta_description"

.field public static final META_TITLE:Ljava/lang/String; = "meta_title"

.field public static final MIME_TYPE_3GP_2D:Ljava/lang/String; = "video/3gpp"

.field public static final MIME_TYPE_3GP_3D:Ljava/lang/String; = "video/3gpp-3d"

.field public static final MIME_TYPE_MP4_2D:Ljava/lang/String; = "video/mp4"

.field public static final MIME_TYPE_MP4_3D:Ljava/lang/String; = "video/mp4-3d"

.field public static final MSG_INTENT_TRIMAPP:I = 0x13ba

.field public static final MSG_PICK_DMR:I = 0x1398

#the value of this static final field might be set in the static constructor
.field public static final NEED_RAISE_PRIORITY_FOR_OPERATOR:Z = false

.field public static final OPTION_BASE:I = 0xff00

.field public static final OPTION_BRIGHTNESS:I = 0xff02

.field public static final OPTION_CLOSE_DMC:I = 0xff05

.field public static final OPTION_OUTPUT:I = 0xff03

.field public static final OPTION_VOLUME:I = 0xff01

.field public static final OPTION_VOLUME_DMC:I = 0xff04

.field public static final PKG_NAME_HTC_MESSAGES:Ljava/lang/String; = "com.android.mms"

.field public static final PKG_ORANGE_PHOTO:Ljava/lang/String; = "com.newbay.pixota"

.field public static final PKG_UPLOADER_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final PKG_UPLOADER_FLICKR:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final PKG_VF360:Ljava/lang/String; = "com.vodafone.people"

.field public static final RESOURCE_PACKAGENAME:Ljava/lang/String; = "com.htc.videowidget.res"

.field public static final SOUND_EFFECT_VIDEO_BEATS:I = 0x8

.field public static final SOUND_EFFECT_VIDEO_DOLBY:I = 0x2

.field public static final SOUND_EFFECT_VIDEO_HTC51:I = 0x4

.field public static final SOUND_EFFECT_VIDEO_SRS:I = 0x1

.field public static final SOUND_EFFECT_VIDEO_UNKNOWN:I = -0x1

.field public static final TOP_PRIORITY_OPERATOR_NAME:Ljava/lang/String; = null

.field public static final VALUE_PLAYBACK_MODE_2D:I = 0x1

.field public static final VALUE_PLAYBACK_MODE_3D:I = 0x2

.field public static final VALUE_PLAYBACK_MODE_CROP:I = 0x1

.field public static final VALUE_PLAYBACK_MODE_FIT:I = 0x0

.field public static final VALUE_PLAYBACK_MODE_NONE:I = 0x0

.field public static final WATCH_FUSE_PATH:Ljava/lang/String; = "/data/DxDrm/fuse"

.field public static final WMDRM_MIMETYPE:Ljava/lang/String; = "video/x-wmv-drm"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/videowidget/common/Constants;->DEBUG:Z

    .line 53
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/common/Constants;->CHARSET_UNICODE:Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcMMSFlag:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/videowidget/common/Constants;->DISABLE_MMS:Z

    .line 120
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-static {v0}, Lcom/htc/videowidget/common/Constants;->getTopPriorityOperatorPackage(S)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/common/Constants;->TOP_PRIORITY_OPERATOR_NAME:Ljava/lang/String;

    .line 147
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x71

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x70

    if-ne v0, v3, :cond_5

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/htc/videowidget/common/Constants;->NEED_RAISE_PRIORITY_FOR_OPERATOR:Z

    .line 164
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x41

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x42

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x62

    if-ne v0, v3, :cond_6

    :cond_1
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    .line 173
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-eq v0, v3, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd0

    if-eq v0, v3, :cond_7

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/htc/videowidget/common/Constants;->FLAG_DRM_COUNTBASE_ALWAYS_CONFIRM:Z

    .line 176
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x95

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x96

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x97

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xdc

    if-ne v0, v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    sput-boolean v2, Lcom/htc/videowidget/common/Constants;->HAS_3D_BARRIER:Z

    return-void

    :cond_4
    move v0, v2

    .line 80
    goto :goto_0

    :cond_5
    move v0, v2

    .line 147
    goto :goto_1

    :cond_6
    move v0, v2

    .line 164
    goto :goto_2

    :cond_7
    move v0, v2

    .line 173
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedFacebookURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    const-string v0, "com.htc.socialnetwork.facebook"

    .line 139
    .local v0, szServiceUrl:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 142
    :cond_0
    const-string v0, "com.facebook.auth.login"

    .line 144
    :cond_1
    return-object v0
.end method

.method private static getTopPriorityOperatorPackage(S)Ljava/lang/String;
    .locals 1
    .parameter "PROJECT_FLAG"

    .prologue
    .line 124
    const-string v0, ""

    .line 125
    .local v0, ans:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 132
    :goto_0
    return-object v0

    .line 129
    :pswitch_0
    const-string v0, "com.newbay.pixota"

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isHighSpeedVideoSupport(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 154
    if-eqz p0, :cond_1

    .line 157
    const-string v1, "video/mp4-3d"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/3gpp-3d"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/mp4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/3gpp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x1

    .line 161
    :cond_1
    return v0
.end method

.method public static final isUnsupportedPackage(Ljava/lang/String;)Z
    .locals 4
    .parameter "szPackageName"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, bResult:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 117
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 97
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    move v1, v0

    .line 117
    .restart local v1       #bResult:I
    goto :goto_0

    .line 102
    .end local v1           #bResult:I
    :pswitch_0
    const-string v3, "com.newbay.pixota"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, szPhoneCID:Ljava/lang/String;
    const-string v3, "ro.cid"

    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 109
    const-string v3, "ORANG309"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ORANGB10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
