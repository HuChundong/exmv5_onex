.class Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V
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
    .line 1973
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 1976
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "onServiceConnected()"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-static {p2}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v2

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v1, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$702(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 1978
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$700(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1992
    :goto_0
    return-void

    .line 1983
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDTCPServiceCallback mDTCPServiceCB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$800(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$700(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$800(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->registerDTCPServiceCallback(ILcom/awox/dtcpmiddlelayer/IDTCPServiceCB;)V

    .line 1986
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$700(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->startDTCPServer()V

    .line 1987
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$700(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$300(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getTotalFileSize()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->setFileSize(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1988
    :catch_0
    move-exception v0

    .line 1990
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1996
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$702(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 1998
    return-void
.end method
