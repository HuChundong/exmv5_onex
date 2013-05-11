.class public Lcom/htc/album/TabPluginDLNA/DLNAHelper$DLNAPlayingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DLNAHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DLNAHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLNAPlayingReceiver"
.end annotation


# static fields
.field public static final DLNAPlayingAction:Ljava/lang/String; = "com.htc.album.DLNA_SERVICE_ACTIVITY"

.field public static final LOG_TAG:Ljava/lang/String; = "DLNAPlayingReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 425
    const-string v1, "DLNAPlayingReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNAPlayingReceiver][onReceive] action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :try_start_0
    const-string v1, "com.htc.album.DLNA_SERVICE_ACTIVITY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const-string v1, "DLNAPlayingReceiver"

    const-string v2, "[DLNAPlayingReceiver] DLNA is playing."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->setDLNAPlayingState(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DLNAPlayingReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNAPlayingReceiver] NG. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
