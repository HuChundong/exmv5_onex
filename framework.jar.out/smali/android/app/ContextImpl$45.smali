.class final Landroid/app/ContextImpl$45;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 602
    const-string/jumbo v1, "wireless_display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 603
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 604
    const/4 v1, 0x0

    .line 606
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/htc/service/WirelessDisplayManager;

    invoke-static {v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWirelessDisplayService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/service/WirelessDisplayManager;-><init>(Lcom/htc/service/IWirelessDisplayService;)V

    goto :goto_0
.end method
