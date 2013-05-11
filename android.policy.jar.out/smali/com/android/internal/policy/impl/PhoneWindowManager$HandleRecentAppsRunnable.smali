.class Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleRecentAppsRunnable"
.end annotation


# instance fields
.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter
    .parameter "win"

    .prologue
    .line 6333
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6334
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6335
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6339
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.AutoMotive.Service.RecentKey"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6341
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.HTCSpeaker.ACCESS_VR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 6346
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 6344
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->startRecentApps(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method
