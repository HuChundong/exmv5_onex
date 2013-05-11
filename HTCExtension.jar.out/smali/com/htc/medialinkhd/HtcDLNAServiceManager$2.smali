.class Lcom/htc/medialinkhd/HtcDLNAServiceManager$2;
.super Landroid/os/Handler;
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
    .line 1517
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$2;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1522
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1537
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1541
    :goto_0
    return-void

    .line 1526
    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, Case MSG_CHANGE_STATE, setState(state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", false)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$2;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    goto :goto_0

    .line 1532
    :pswitch_1
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$2;->this$0:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    #calls: Lcom/htc/medialinkhd/HtcDLNAServiceManager;->updatePlayingPosition()V
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->access$600(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    goto :goto_0

    .line 1522
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
