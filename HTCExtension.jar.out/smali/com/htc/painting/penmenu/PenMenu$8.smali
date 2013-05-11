.class Lcom/htc/painting/penmenu/PenMenu$8;
.super Landroid/content/BroadcastReceiver;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/PenMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$8;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 918
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$8;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->dismissPrompt()V

    .line 920
    if-eqz p2, :cond_1

    .line 921
    const-string v1, "SIP_VISIBLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 922
    .local v0, IME_Visible:Z
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 923
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received IME intent,  mIME_Visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$8;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    const-string v2, "key_ime_show"

    #calls: Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/htc/painting/penmenu/PenMenu;->access$1400(Lcom/htc/painting/penmenu/PenMenu;Ljava/lang/String;Z)V

    .line 928
    .end local v0           #IME_Visible:Z
    :cond_1
    return-void
.end method
