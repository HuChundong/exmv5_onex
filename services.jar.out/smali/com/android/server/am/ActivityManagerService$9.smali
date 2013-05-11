.class Lcom/android/server/am/ActivityManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4747
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4750
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    #calls: Lcom/android/server/am/ActivityManagerService;->onUserRemoved(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;)V

    .line 4751
    return-void
.end method
