.class public Lcom/htc/album/Customizable/CustFeatureItem;
.super Ljava/lang/Object;
.source "CustFeatureItem.java"


# static fields
.field private static mEnablePaintView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEvents()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public static enableLandingPage()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public static enablePaintView(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 36
    sput-boolean p0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    .line 37
    return-void
.end method

.method public static isCHS()Z
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, bResult:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 27
    :cond_0
    return v0
.end method

.method public static isEnablePaintView()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return v0
.end method

.method public static isEnableRemoveLocalImageFileCache()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableUserProfiling()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public static isExcludeSocialNetwork()Z
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 15
    .local v0, bResult:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    :cond_0
    return v0
.end method

.method public static isSenseA()Z
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, bResult:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xdf

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe2

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe4

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe5

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x23f

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x240

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x241

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x242

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x1

    .line 87
    :cond_1
    return v0
.end method

.method public static isSupportBurstShots()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportNfc()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPanorama()Z
    .locals 2

    .prologue
    .line 57
    const/16 v0, 0x9b

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPenPaint()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return v0
.end method

.method public static isSupportSnapbooth()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public static show3DVirtualFolder()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
