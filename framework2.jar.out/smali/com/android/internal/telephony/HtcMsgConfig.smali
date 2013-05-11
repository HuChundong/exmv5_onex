.class public Lcom/android/internal/telephony/HtcMsgConfig;
.super Ljava/lang/Object;
.source "HtcMsgConfig.java"


# static fields
.field protected static final APTG_MCC_MNC:Ljava/lang/String; = "46605"

.field private static sSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcMsgConfig;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 17
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0       #e:Ljava/lang/Exception;
    const/high16 v1, 0x3f80

    sput v1, Lcom/android/internal/telephony/HtcMsgConfig;->sSenseVersion:F

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeMoSmsWithShiftJis()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_0

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method static getSenseVersion()F
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/android/internal/telephony/HtcMsgConfig;->sSenseVersion:F

    return v0
.end method

.method public static isAPTG()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v2, :cond_2

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 98
    .local v1, isAsiaTW:Z
    :goto_0
    const-string v4, "46605"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    .local v0, isAPTGmccmnc:Z
    const-string v4, "isAPTG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aptg/asiatw : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    .line 105
    :cond_1
    return v3

    .end local v0           #isAPTGmccmnc:Z
    .end local v1           #isAsiaTW:Z
    :cond_2
    move v1, v3

    .line 96
    goto :goto_0
.end method

.method public static isDetectDataActivityAndCallStateForMoSms()Z
    .locals 4

    .prologue
    .line 129
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4012

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPendingMsgRepoEnabled()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMoPacketSms()Z
    .locals 2

    .prologue
    .line 45
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMtCmail()Z
    .locals 2

    .prologue
    .line 56
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintReassembleSms()Z
    .locals 2

    .prologue
    .line 112
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldCheckOtasp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_0

    .line 70
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0
.end method
