.class public Lcom/htc/album/TabPluginDLNA/MediaServerDMCActivity;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "MediaServerDMCActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    const/16 v1, 0x400

    .line 16
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 17
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onStartFragment()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/htc/album/TabPluginDLNA/MediaServerDMCFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/MediaServerDMCActivity;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 25
    return-void
.end method
