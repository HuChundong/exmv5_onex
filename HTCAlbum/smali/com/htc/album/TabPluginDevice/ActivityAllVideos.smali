.class public Lcom/htc/album/TabPluginDevice/ActivityAllVideos;
.super Landroid/app/Activity;
.source "ActivityAllVideos.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const-class v0, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 26
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.ALL_VIDEOS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, startAlbum:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "KEY_FOLDER_SPECIFIED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    const-string v1, "folder_type"

    const-string v2, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "directmode"

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "directmode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->finish()V

    .line 51
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 57
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAllVideos;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method
