.class public final Lcom/htc/utils/ulog/UPolicy;
.super Ljava/lang/Object;
.source "UPolicy.java"

# interfaces
.implements Lcom/htc/utils/ulog/Policy;


# static fields
.field private static final APPID_SENSE_DOT_COM:Ljava/lang/String; = "sense.com"

#the value of this static final field might be set in the static constructor
.field private static final IS_DEBUG_ULOG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_EFFECTIVE_DATE_ENABLED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_LESS_THAN_SENSE_40:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_POLICY_ENABLED:Z = false

.field public static final KEY_DEFAULT_VALUE:Ljava/lang/String; = "default_value"

.field public static final KEY_DUE_DATE:Ljava/lang/String; = "due_date"

.field public static final KEY_SECOND_SWITCH_OF_ERROR_REPORT:Ljava/lang/String; = "second_switch_of_error_report"

.field public static final KEY_SECOND_SWITCH_OF_USER_PROFILING:Ljava/lang/String; = "second_switch_of_usage_report"

.field public static final KEY_SETTINGS_ERROR_REPORT:Ljava/lang/String; = "settings_error_report"

.field public static final KEY_SETTINGS_SENSE_DOT_COM:Ljava/lang/String; = "settings_sense_dot_com"

.field public static final KEY_SETTINGS_TELLHTC_UI:Ljava/lang/String; = "setting_tellhtc_ui"

.field public static final KEY_SETTINGS_USER_PROFILING:Ljava/lang/String; = "settings_user_profiling"

.field public static final KEY_TELLHTC_UI_MODE:Ljava/lang/String; = "tellhtc_uimode"

.field private static final TAG:Ljava/lang/String; = "UPolicy"

.field private static sInit:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sPolicy:Landroid/os/Bundle;

.field private static final sRemoteCallback:Landroid/os/IRemoteCallback;

.field private static sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;


# instance fields
.field private mAllPolicies:Landroid/os/Bundle;

.field private mAppId:Ljava/lang/String;

.field private mAppPolicies:Landroid/os/Bundle;

.field private mIsSenseDotComAppId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    .line 50
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense30()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_EFFECTIVE_DATE_ENABLED:Z

    .line 51
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense40()Z

    move-result v0

    sput-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    .line 52
    const-string v0, "ulog.enable_logcat"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    sput-boolean v1, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    .line 315
    sput-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    .line 316
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    .line 320
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    .line 321
    new-instance v0, Lcom/htc/utils/ulog/UPolicy$1;

    invoke-direct {v0}, Lcom/htc/utils/ulog/UPolicy$1;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/UPolicy;->sRemoteCallback:Landroid/os/IRemoteCallback;

    return-void

    :cond_1
    move v0, v2

    .line 50
    goto :goto_0

    :cond_2
    move v1, v2

    .line 52
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "appid"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    .line 68
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    iput-object p1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    .line 73
    const-string v0, "sense.com"

    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/utils/ulog/UPolicy;->mIsSenseDotComAppId:Z

    .line 77
    :cond_2
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v0, :cond_3

    .line 78
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 79
    :cond_3
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v0, :cond_4

    .line 80
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->setPolicies()V

    .line 82
    :cond_4
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v0, :cond_5

    const-string v0, "UPolicy"

    const-string v1, "[canLogUserProfiling] enabled in engineering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_5
    sget-boolean v0, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v0, :cond_0

    const-string v0, "UPolicy"

    const-string v1, "[canLogUserProfiling] normal case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-object p0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    return-object p0
.end method

.method private static canLog(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 11
    .parameter "appBundle"
    .parameter "category"

    .prologue
    const/4 v4, 0x0

    .line 355
    if-eqz p0, :cond_4

    .line 356
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 357
    .local v0, cateBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 358
    const-string v7, "enable"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 359
    .local v6, keyBundle:Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 360
    const-string v7, "due_date"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 361
    .local v2, dueDate:J
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-nez v7, :cond_3

    .line 362
    .local v4, expired:Z
    :cond_0
    :goto_0
    const-string v7, "1"

    const-string v8, "enable"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 363
    .local v5, isEnabled:Z
    const/4 v1, 0x0

    .line 364
    .local v1, defaultValue:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v7, "default_value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 365
    const-string v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 366
    :cond_1
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v7, :cond_2

    const-string v7, "UPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[canLog] category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", enable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", due date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", default value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v0           #cateBundle:Landroid/os/Bundle;
    .end local v1           #defaultValue:Ljava/lang/String;
    .end local v2           #dueDate:J
    .end local v4           #expired:Z
    .end local v5           #isEnabled:Z
    .end local v6           #keyBundle:Landroid/os/Bundle;
    :cond_2
    :goto_1
    return v5

    .line 361
    .restart local v0       #cateBundle:Landroid/os/Bundle;
    .restart local v2       #dueDate:J
    .restart local v6       #keyBundle:Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-gez v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .end local v0           #cateBundle:Landroid/os/Bundle;
    .end local v2           #dueDate:J
    .end local v6           #keyBundle:Landroid/os/Bundle;
    :cond_4
    move v5, v4

    .line 373
    goto :goto_1
.end method

.method private canLog(Ljava/lang/String;)Z
    .locals 2
    .parameter "category"

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 213
    .local v0, appPolicy:Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    .line 215
    .end local v0           #appPolicy:Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static canLog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "appid"
    .parameter "category"

    .prologue
    .line 377
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    .line 379
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 380
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 381
    .local v1, appBundle:Landroid/os/Bundle;
    invoke-static {v1, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    .line 384
    .end local v0           #allPolicy:Landroid/os/Bundle;
    .end local v1           #appBundle:Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static canLogErrorReport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "appid"
    .parameter "category"

    .prologue
    const/4 v1, 0x0

    .line 393
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v1

    .line 395
    :cond_1
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v2, :cond_2

    .line 396
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 397
    :cond_2
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v2, :cond_0

    .line 398
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    const-string v3, "tellhtc_uimode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, uiMode:Ljava/lang/String;
    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Eng]canLogErrorReport, TellHtc Ui Mode is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v2, "background"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 403
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isErrorReportCheckBoxEnabled(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 408
    :cond_3
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isErrorReportCheckBoxEnabled(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isTellhtcUiEnable(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static canLogUserProfiling(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "appid"
    .parameter "category"

    .prologue
    const/4 v1, 0x0

    .line 422
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v1

    .line 424
    :cond_1
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v2, :cond_2

    .line 425
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 426
    :cond_2
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v2, :cond_0

    .line 427
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 430
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isUPCheckBoxEnabledByUser(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isTellhtcUiEnable(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 434
    :cond_3
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    const-string v3, "tellhtc_uimode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, uiMode:Ljava/lang/String;
    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Eng]canLogUserProfiling, TellHtc Ui Mode is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v2, "background"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isUPCheckBoxEnabledByUser(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 443
    :cond_4
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isUPCheckBoxEnabledByUser(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isTellhtcUiEnable(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    :cond_5
    invoke-static {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private declared-synchronized checkLatestPolicy()V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    sget-object v1, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    if-eq v0, v1, :cond_0

    .line 221
    const-string v0, "UPolicy"

    const-string v1, "[checkLatestPolicy] policy changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->setPolicies()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static init()V
    .locals 5

    .prologue
    .line 331
    sget-object v3, Lcom/htc/utils/ulog/UPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 332
    :try_start_0
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v2, :cond_0

    .line 333
    const-string v2, "userbehavior"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 334
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 335
    invoke-static {v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    move-result-object v2

    sput-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    .line 336
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 338
    :try_start_1
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    sget-object v4, Lcom/htc/utils/ulog/UPolicy;->sRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v4}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->registerPolicyListener(Landroid/os/IRemoteCallback;)Z

    .line 339
    sget-object v2, Lcom/htc/utils/ulog/UPolicy;->sUBLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    invoke-interface {v2}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->getPolicy()Landroid/os/Bundle;

    move-result-object v2

    sput-object v2, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    :goto_0
    :try_start_2
    const-string v2, "UPolicy"

    const-string v4, "IUserBehaviorLoggingService reference is gotten !"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    .line 351
    :cond_0
    :goto_1
    monitor-exit v3

    .line 352
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 347
    :cond_1
    :try_start_3
    const-string v2, "UPolicy"

    const-string v4, "IUserBehaviorLoggingService reference is null !"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static isErrorReportCheckBoxEnabled(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 232
    move-object v0, p0

    .line 233
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 234
    const-string v2, "settings_error_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 235
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings_error_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v1           #b:Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 277
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    if-eqz v2, :cond_2

    .line 278
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfErrorReportEnabled, ver < 4.0] always return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    const/4 v1, 0x1

    .line 290
    :cond_1
    :goto_0
    return v1

    .line 282
    :cond_2
    move-object v0, p0

    .line 283
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 284
    const-string v2, "second_switch_of_error_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 285
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_1

    const-string v2, "[isSecondSwitchOfErrorReportEnabled, ver >= 4.0] UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "second_switch_of_error_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    .end local v1           #b:Z
    :cond_3
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_4

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfErrorReportEnabled, ver >= 4.0] turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 299
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_LESS_THAN_SENSE_40:Z

    if-eqz v2, :cond_2

    .line 300
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfUserProfilingEnabled, ver < 4.0] always return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    const/4 v1, 0x1

    .line 311
    :cond_1
    :goto_0
    return v1

    .line 304
    :cond_2
    move-object v0, p0

    .line 305
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 306
    const-string v2, "second_switch_of_usage_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 307
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_1

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSecondSwitchOfUserProfilingEnabled, ver >= 4.0] second_switch_of_usage_report value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    .end local v1           #b:Z
    :cond_3
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_4

    const-string v2, "UPolicy"

    const-string v3, "[isSecondSwitchOfUserProfilingEnabled, ver > 4.0] turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSenseDotComEnabled(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 262
    move-object v0, p0

    .line 263
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 264
    const-string v2, "settings_sense_dot_com"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 265
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings_sense_dot_com value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v1           #b:Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTellhtcUiEnable(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 252
    move-object v0, p0

    .line 253
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 254
    const-string v2, "setting_tellhtc_ui"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 255
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting_tellhtc_ui value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v1           #b:Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isUPCheckBoxEnabledByUser(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "policy"

    .prologue
    .line 242
    move-object v0, p0

    .line 243
    .local v0, allPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 244
    const-string v2, "settings_user_profiling"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 245
    .local v1, b:Z
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v2, :cond_0

    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings_user_profiling value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v1           #b:Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPolicies()V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/htc/utils/ulog/UPolicy;->sPolicy:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    .line 203
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/htc/utils/ulog/UPolicy;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public canLogErrorReport(Ljava/lang/String;)Z
    .locals 4
    .parameter "category"

    .prologue
    const/4 v1, 0x0

    .line 93
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v2, :cond_2

    .line 96
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 97
    :cond_2
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 100
    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfErrorReportEnabled(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    const-string v3, "tellhtc_uimode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, uiMode:Ljava/lang/String;
    const-string v2, "background"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isErrorReportCheckBoxEnabled(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isErrorReportCheckBoxEnabled(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isTellhtcUiEnable(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public canLogUserProfiling(Ljava/lang/String;)Z
    .locals 5
    .parameter "category"

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v2, :cond_2

    .line 126
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 127
    :cond_2
    sget-boolean v2, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v2, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 129
    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isSecondSwitchOfUserProfilingEnabled(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isUPCheckBoxEnabledByUser(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isTellhtcUiEnable(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    const-string v3, "tellhtc_uimode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, uiMode:Ljava/lang/String;
    const-string v2, "UPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Eng]canLogUserProfiling, TellHtc Ui Mode is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v2, "background"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isUPCheckBoxEnabledByUser(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 145
    :cond_4
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isUPCheckBoxEnabledByUser(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/utils/ulog/UPolicy;->mAllPolicies:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/htc/utils/ulog/UPolicy;->isTellhtcUiEnable(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/UPolicy;->canLog(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "category"
    .parameter "key"

    .prologue
    .line 162
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_POLICY_ENABLED:Z

    if-nez v7, :cond_1

    .line 163
    const-string v6, ""

    .line 194
    :cond_0
    :goto_0
    return-object v6

    .line 164
    :cond_1
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-nez v7, :cond_2

    .line 165
    invoke-static {}, Lcom/htc/utils/ulog/UPolicy;->init()V

    .line 166
    :cond_2
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->sInit:Z

    if-eqz v7, :cond_5

    .line 167
    invoke-direct {p0}, Lcom/htc/utils/ulog/UPolicy;->checkLatestPolicy()V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 169
    iget-object v0, p0, Lcom/htc/utils/ulog/UPolicy;->mAppPolicies:Landroid/os/Bundle;

    .line 170
    .local v0, appPolicy:Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 172
    .local v1, cateBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 173
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 174
    .local v5, keyBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_5

    .line 175
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, value:Ljava/lang/String;
    const-string v7, "due_date"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 179
    .local v3, dueDate:J
    const/4 v2, 0x0

    .line 180
    .local v2, defaultValue:Ljava/lang/String;
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 181
    const-string v7, "default_value"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 182
    move-object v6, v2

    .line 184
    :cond_3
    sget-boolean v7, Lcom/htc/utils/ulog/UPolicy;->IS_DEBUG_ULOG:Z

    if-eqz v7, :cond_4

    const-string v7, "UPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", due date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", default value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_4
    if-nez v6, :cond_0

    const-string v6, ""

    goto/16 :goto_0

    .line 194
    .end local v0           #appPolicy:Landroid/os/Bundle;
    .end local v1           #cateBundle:Landroid/os/Bundle;
    .end local v2           #defaultValue:Ljava/lang/String;
    .end local v3           #dueDate:J
    .end local v5           #keyBundle:Landroid/os/Bundle;
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    const-string v6, ""

    goto/16 :goto_0
.end method
