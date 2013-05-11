.class Lcom/htc/painting/penmenu/PenManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/PenManager;->initPenTypes(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenManager;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenManager$1;->this$0:Lcom/htc/painting/penmenu/PenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 313
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "PenManager"

    const-string v1, "Received Pen Service intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenManager$1;->this$0:Lcom/htc/painting/penmenu/PenManager;

    #calls: Lcom/htc/painting/penmenu/PenManager;->refreshPenTypes(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/htc/painting/penmenu/PenManager;->access$200(Lcom/htc/painting/penmenu/PenManager;Landroid/content/Context;)V

    .line 317
    return-void
.end method
