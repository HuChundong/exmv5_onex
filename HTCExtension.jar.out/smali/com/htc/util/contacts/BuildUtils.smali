.class public final Lcom/htc/util/contacts/BuildUtils;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/BuildUtils$SocialNetwork;,
        Lcom/htc/util/contacts/BuildUtils$IM;,
        Lcom/htc/util/contacts/BuildUtils$Feature;,
        Lcom/htc/util/contacts/BuildUtils$Customization;,
        Lcom/htc/util/contacts/BuildUtils$HtcSense;,
        Lcom/htc/util/contacts/BuildUtils$OpenSense;
    }
.end annotation


# static fields
.field public static final HTC_SENSE_1_5:D = 1.5

.field public static final HTC_SENSE_1_5_1:D = 1.51

.field public static final HTC_SENSE_1_6:D = 1.51

.field public static final HTC_SENSE_2_0:D = 2.0

.field public static final HTC_SENSE_2_1:D = 2.1

.field public static final HTC_SENSE_2_1_T:D = 2.11

.field public static final HTC_SENSE_3_0:D = 3.0

.field public static final HTC_SENSE_3_5:D = 3.5

.field public static final HTC_SENSE_4_0:D = 4.0

.field public static final HTC_SENSE_4_5:D = 4.5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 776
    return-void
.end method

.method public static isCdma()Z
    .locals 2

    .prologue
    .line 830
    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->s_byteHtc_MobileNetworkInUse:B

    sget-byte v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->s_byteHtc_MobileNetwork_CDMA:B

    if-ne v0, v1, :cond_0

    .line 831
    const/4 v0, 0x1

    .line 833
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDebug()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    return v0
.end method

.method public static isFaceBookPhoneProject()Z
    .locals 2

    .prologue
    .line 880
    const-wide/high16 v0, 0x400c

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x42

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x89

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_1

    .line 884
    :cond_0
    const/4 v0, 0x1

    .line 886
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMMSBlockedEnabled()Z
    .locals 2

    .prologue
    .line 916
    const-wide/high16 v0, 0x4012

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    const/4 v0, 0x1

    .line 923
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSIMSDNEnabled()Z
    .locals 4

    .prologue
    const/16 v3, 0xa8

    const/4 v0, 0x1

    .line 891
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xe1

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 910
    :cond_2
    :goto_0
    return v0

    .line 903
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_2

    .line 907
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_2

    .line 910
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 841
    const/16 v0, 0x28

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x21

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x22

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x7c

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0xdd

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x80

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x81

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x82

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 849
    :cond_0
    const/4 v0, 0x1

    .line 851
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTabletPhoneEnabled()Z
    .locals 1

    .prologue
    .line 858
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTabletPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVVMEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 869
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVVMFlag:Z

    if-ne v0, v1, :cond_0

    .line 872
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
