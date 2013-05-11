.class public Lcom/htc/util/calendar/holidays/HolidayUtils;
.super Ljava/lang/Object;
.source "HolidayUtils.java"


# static fields
.field public static final HOLIDAY_TYPE_CHINA:I = 0x1

.field public static final HOLIDAY_TYPE_JAPAN:I = 0x2

.field public static final HOLIDAY_TYPE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HolidayUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHolidayType()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public static getHolidayType(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isJapanHoildayEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x2

    .line 25
    :goto_0
    return v0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaHoildayEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x1

    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLunarCalendarSetting(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "calendar_show_lunar"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, showLunar:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isChinaHoildayEnable()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public static isChinaHoildayEnable(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-static {p0}, Lcom/htc/util/calendar/holidays/HolidayUtils;->getLunarCalendarSetting(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v4

    .line 44
    :cond_1
    const/high16 v0, 0x4000

    .line 45
    .local v0, FROM_VERSION:F
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, SUPPORT_LANGUAGE_CHINA:Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, SUPPORT_LANGUAGE_CHINESE:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, systemLanguage:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 54
    :cond_2
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    move v4, v5

    .line 57
    goto :goto_0

    .line 65
    :cond_4
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_5
    move v4, v5

    .line 69
    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public static isChinaSku()Z
    .locals 1

    .prologue
    .line 93
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static isJapanHoildayEnable()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isJapanSku()Z

    move-result v0

    return v0
.end method

.method public static isJapanSku()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 112
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 124
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x51 -> :sswitch_0
        0xd1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isShowSolarHoilday()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/util/calendar/holidays/HolidayUtils;->isChinaSku()Z

    move-result v0

    return v0
.end method
