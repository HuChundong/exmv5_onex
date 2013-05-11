.class Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;
.super Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/medialinkhd/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

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
    .line 1041
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$500(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$500(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;->onReadByteNotify(JJI)V

    .line 1043
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
    .line 1033
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$000(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "onServiceStartComplete()"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$400(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$100(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$200(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$300(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushEncryptBuffer(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    .line 1037
    :cond_0
    return-void
.end method
