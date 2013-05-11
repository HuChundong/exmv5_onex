.class public Lcom/htc/lockscreen/music/MusicRemoteCtrl;
.super Ljava/lang/Object;
.source "MusicRemoteCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;,
        Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PLAYSTATE_HIDE_PANEL:I = 0x2711

.field public static final REMOTE_CONTROL_DISPLAY_CHANGED:Ljava/lang/String; = "com.htc.lockscreen.remote_control_display_changed"

.field public static final TAG:Ljava/lang/String; = "MusicRemoteCtrl"


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;)V
    .locals 5
    .parameter "context"
    .parameter "displayControl"

    .prologue
    .line 23
    iget-object v2, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    if-nez v2, :cond_0

    .line 24
    new-instance v2, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    invoke-direct {v2, p2}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;-><init>(Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;)V

    iput-object v2, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    .line 25
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mAudioManager:Landroid/media/AudioManager;

    .line 26
    iget-object v2, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.lockscreen.remote_control_display_changed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    const-string v2, "MusicRemoteCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl;->mDisplayCtrl:Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;

    .line 40
    :cond_0
    return-void
.end method
