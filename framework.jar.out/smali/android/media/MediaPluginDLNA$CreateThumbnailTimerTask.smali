.class Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;
.super Ljava/util/TimerTask;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateThumbnailTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 932
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 934
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[CreateThumbnailTimerTask] TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, v2}, Landroid/media/MediaPluginDLNA;->setDLNAThumbnail(Landroid/graphics/Bitmap;)V

    .line 936
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1800(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1800(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->cancel(Z)Z

    .line 938
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;
    invoke-static {v0, v2}, Landroid/media/MediaPluginDLNA;->access$1802(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$CreateThumbnailTask;)Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    .line 940
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/16 v1, 0x2001

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 941
    return-void
.end method
