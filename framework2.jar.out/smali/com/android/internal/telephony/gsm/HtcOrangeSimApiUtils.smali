.class public Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;
.super Ljava/lang/Object;
.source "HtcOrangeSimApiUtils.java"


# static fields
.field private static final isOrangeSimApiEnabled:Z

.field private static final mController:Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-ne v0, v1, :cond_0

    .line 19
    const-string v0, "gsm.orange.sim.test"

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSimAuthentication()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->isOrangeSimApiEnabled:Z

    .line 25
    :goto_0
    sget-boolean v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->isOrangeSimApiEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;-><init>()V

    :goto_1
    sput-object v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->mController:Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;

    .line 26
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSimAuthentication()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->isOrangeSimApiEnabled:Z

    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiDummyController;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiDummyController;-><init>()V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->mController:Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiControllerInterface;->init(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 31
    return-void
.end method
