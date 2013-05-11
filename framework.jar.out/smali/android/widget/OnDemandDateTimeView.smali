.class public Landroid/widget/OnDemandDateTimeView;
.super Landroid/widget/DateTimeView;
.source "OnDemandDateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "OnDemandDateTimeView"

    iput-object v0, p0, Landroid/widget/OnDemandDateTimeView;->TAG:Ljava/lang/String;

    .line 18
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Landroid/widget/OnDemandDateTimeView;->DEBUG:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v0, "OnDemandDateTimeView"

    iput-object v0, p0, Landroid/widget/OnDemandDateTimeView;->TAG:Ljava/lang/String;

    .line 18
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Landroid/widget/OnDemandDateTimeView;->DEBUG:Z

    .line 28
    return-void
.end method


# virtual methods
.method registerReceivers()V
    .locals 2

    .prologue
    .line 33
    iget-boolean v0, p0, Landroid/widget/OnDemandDateTimeView;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    const-string v0, "OnDemandDateTimeView"

    const-string/jumbo v1, "skip registerReceivers()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method

.method unregisterReceivers()V
    .locals 2

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/widget/OnDemandDateTimeView;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    const-string v0, "OnDemandDateTimeView"

    const-string/jumbo v1, "skip unregisterReceivers()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method
