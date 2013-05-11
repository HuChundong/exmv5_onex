.class Landroid/media/MediaPluginDLNA$TVListener;
.super Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TVListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$TVListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 882
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$TVListener;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public onTvOff()V
    .locals 3

    .prologue
    .line 884
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onTvOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$TVListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1080

    #calls: Landroid/media/MediaPluginDLNA;->setState(I)V
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$1000(Landroid/media/MediaPluginDLNA;I)V

    .line 886
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$TVListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 887
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$TVListener;->this$0:Landroid/media/MediaPluginDLNA;

    #calls: Landroid/media/MediaPluginDLNA;->leaveDimMode()V
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1200(Landroid/media/MediaPluginDLNA;)V

    .line 888
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$TVListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlugin$OnEventListener;->onError(II)V

    .line 889
    return-void
.end method
