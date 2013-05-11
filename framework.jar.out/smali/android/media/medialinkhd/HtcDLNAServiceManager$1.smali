.class Landroid/media/medialinkhd/HtcDLNAServiceManager$1;
.super Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcDLNAServiceManager;
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
    .line 1027
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadByteNotify(JJI)V
    .locals 6
    .parameter "id"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$500(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$500(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;->onReadByteNotify(JJI)V

    .line 1040
    :cond_0
    return-void
.end method

.method public onServiceStartComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1030
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$000(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, "HtcDLNAServiceManager "

    const-string/jumbo v1, "onServiceStartComplete()"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$400(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I

    move-result v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$200(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;->this$0:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->access$300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushEncryptBuffer(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    .line 1034
    :cond_0
    return-void
.end method
