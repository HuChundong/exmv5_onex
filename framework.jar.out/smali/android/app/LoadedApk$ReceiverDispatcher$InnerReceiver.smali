.class final Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .locals 1
    .parameter "rd"
    .parameter "strong"

    .prologue
    .line 718
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 719
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 720
    if-eqz p2, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 721
    return-void

    .line 720
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 9
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"

    .prologue
    const/4 v8, 0x0

    .line 724
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 726
    .local v0, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 728
    :try_start_0
    const-string v3, "LoadedApk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received performReceive() from server for broadcast "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 744
    invoke-virtual/range {v0 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 769
    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object v2, v8

    .line 728
    goto :goto_0

    .line 732
    :catch_0
    move-exception v7

    .line 733
    .local v7, e:Ljava/lang/Exception;
    const-string v2, "LoadedApk"

    const-string/jumbo v3, "received performReceive() from server but intent data has some problem"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 753
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 755
    .local v1, mgr:Landroid/app/IActivityManager;
    if-eqz p4, :cond_4

    .line 756
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 758
    :cond_4
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 760
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    .line 761
    const-string v3, "LoadedApk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called finishReceiver() from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " but unregistered"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 765
    :catch_1
    move-exception v7

    .line 766
    .local v7, e:Landroid/os/RemoteException;
    const-string v2, "ActivityThread"

    const-string v3, "Couldn\'t finish broadcast to unregistered receiver"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_5
    move-object v2, v8

    .line 761
    goto :goto_3
.end method
