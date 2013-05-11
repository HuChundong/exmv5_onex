.class Landroid/media/medialinkhd/HtcDLNAServiceManager$5;
.super Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2891
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscovered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 2896
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererAsDefaultRenderer][onDiscovered] renderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$2300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->getStatusBarData()Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    .line 2900
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/16 v1, 0x4e20

    const-string v2, "Discover DMR success"

    #calls: Landroid/media/medialinkhd/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    invoke-static {v0, p1, v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$2400(Landroid/media/medialinkhd/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I

    .line 2901
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 2907
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setRendererAsDefaultRenderer][onTimeout]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/16 v1, -0x4000

    const-string v2, "Discover Timeout"

    #calls: Landroid/media/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I
    invoke-static {v0, v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$2500(Landroid/media/medialinkhd/HtcDLNAServiceManager;ILjava/lang/String;)I

    .line 2910
    return-void
.end method
