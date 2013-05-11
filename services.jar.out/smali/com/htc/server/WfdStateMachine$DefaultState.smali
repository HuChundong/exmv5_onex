.class Lcom/htc/server/WfdStateMachine$DefaultState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$DefaultState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 335
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 339
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 356
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " drop message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 342
    :sswitch_0
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DefaultState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$DefaultState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mLinkResetState:Lcom/htc/server/State;

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 343
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DefaultState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 346
    :sswitch_1
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DefaultState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$DefaultState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 347
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DefaultState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 350
    :sswitch_2
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>Finish in background."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DefaultState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->finishService()V

    goto :goto_0

    .line 354
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_1

    .line 340
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x32 -> :sswitch_1
        0x38 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
