.class Lcom/htc/album/addons/slideshow/SlideshowBase$TemplateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlideshowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowBase;Lcom/htc/album/addons/slideshow/SlideshowBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 985
    invoke-direct {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowBase$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 990
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, action:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBroadcastReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 994
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->finish()V

    .line 995
    sget-boolean v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][TemplateBroadcastReceiver]: finish() from onBroadcastReceive()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_1
    return-void
.end method
