.class Lcom/htc/view/VolumePanel$5;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/VolumePanel;->listenToMusicMuteRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    .line 886
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.view.music_mute"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    const-string v2, "VolumePanel"

    const-string v3, "MUSIC_MUTE_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    if-eqz p2, :cond_2

    .line 892
    const-string v2, "new_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 893
    .local v1, newState:I
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MUSIC_MUTE_ACTION newState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 896
    iget-object v2, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v2, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 897
    iget-object v2, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    iget-object v3, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v3, v5}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 904
    .end local v1           #newState:I
    :cond_2
    :goto_0
    return-void

    .line 898
    .restart local v1       #newState:I
    :cond_3
    if-nez v1, :cond_2

    .line 899
    iget-object v2, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v2, v6}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 900
    iget-object v2, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    iget-object v3, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v3, v6}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
