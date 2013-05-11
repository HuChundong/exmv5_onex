.class Lcom/htc/server/WfdStateMachine$8;
.super Ljava/lang/Thread;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V
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
    .line 2783
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$8;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2786
    const-string v0, "WfdStateMachine"

    const-string v1, "[WFD]===>preloadDlnaService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$8;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2788
    return-void
.end method
