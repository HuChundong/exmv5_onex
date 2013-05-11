.class Lcom/htc/server/WfdStateMachine$1;
.super Landroid/os/Handler;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2432
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2436
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2437
    .local v2, state:I
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 2438
    .local v1, n:I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2467
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2469
    :goto_0
    return-void

    .line 2440
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 2442
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/wfdservice/IWfdServiceCallback;

    invoke-interface {v3, v2}, Lcom/htc/wfdservice/IWfdServiceCallback;->onServiceStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2440
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2446
    :cond_0
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 2449
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v1, :cond_1

    .line 2451
    :try_start_1
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/wfdservice/IWfdServiceCallback;

    invoke-interface {v3, v2}, Lcom/htc/wfdservice/IWfdServiceCallback;->onMirrorDisplayStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2449
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2455
    :cond_1
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 2458
    .end local v0           #i:I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    if-ge v0, v1, :cond_2

    .line 2460
    :try_start_2
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/htc/wfdservice/IWfdServiceCallback;

    invoke-interface {v3, v2}, Lcom/htc/wfdservice/IWfdServiceCallback;->onConfiguringProgressChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2458
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2464
    :cond_2
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$1;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 2461
    :catch_0
    move-exception v3

    goto :goto_6

    .line 2452
    :catch_1
    move-exception v3

    goto :goto_4

    .line 2443
    :catch_2
    move-exception v3

    goto :goto_2

    .line 2438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
