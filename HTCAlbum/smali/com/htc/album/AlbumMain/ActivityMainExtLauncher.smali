.class public Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;
.super Lcom/htc/album/AlbumMain/ActivityMainDropList;
.source "ActivityMainExtLauncher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainExtLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;-><init>()V

    return-void
.end method


# virtual methods
.method protected CallMapViewByIntentExtra(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "callMapView"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 66
    const-string v2, "callMapView"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.album.action.LAUNCH_LOCATION_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ActivityMainExtLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CallMapViewByIntentExtra]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doFadeInOut()Z
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, szAction:Ljava/lang/String;
    iget v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getTrimMemoryLevel()I
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, action:Ljava/lang/String;
    :goto_0
    const-string v2, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const/16 v2, 0x14

    .line 87
    :goto_1
    return v2

    .line 83
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 87
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getTrimMemoryLevel()I

    move-result v2

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstance"

    .prologue
    const/16 v3, 0x400

    .line 17
    const-string v1, "ActivityMainExtLauncher"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onCreate]1: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, szAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onCreate(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->CallMapViewByIntentExtra(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected skipLandingPage()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
