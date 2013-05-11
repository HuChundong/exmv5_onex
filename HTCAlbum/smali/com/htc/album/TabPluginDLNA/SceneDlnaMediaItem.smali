.class public abstract Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneDlnaMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunnyCore/view/SView;",
        ">",
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<TVIEW;",
        "Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mErrorReason:Ljava/lang/String;

.field protected mErrorTitle:Ljava/lang/String;

.field private mProgressLoad:Lcom/htc/app/HtcProgressDialog;

.field protected mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorTitle:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorReason:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private onServerRemoved(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 212
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    return-void
.end method


# virtual methods
.method public enablePageProgressLoading(Z)V
    .locals 4
    .parameter "bShow"

    .prologue
    .line 99
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 104
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 107
    if-eqz p1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_2

    .line 111
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 112
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 216
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    const/16 v1, 0x1398

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 218
    const-string v1, "DMR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, selectDMR:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onDMRChanged(Ljava/lang/String;)V

    .line 222
    .end local v0           #selectDMR:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onDMRChanged(Ljava/lang/String;I)V
    .locals 3
    .parameter "DMR"
    .parameter "index"

    .prologue
    .line 226
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->DLNA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "mediaserver_photo_dmc_count"

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 234
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDMRChanged(Ljava/lang/String;I)V

    .line 236
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->launchMediaServerDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/TabPluginDLNA/DLNAServerInfo;Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V

    goto :goto_0
.end method

.method protected onErrorCommunication(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 127
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->enablePageProgressLoading(Z)V

    .line 131
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 132
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, nErrorID:I
    const-string v4, "error_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 138
    .end local v3           #nErrorID:I
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 140
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v2

    .line 146
    .local v2, dialog:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 151
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorTitle:Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorReason:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->showDialogErrorCommunication()Landroid/app/Dialog;

    move-result-object v2

    .line 155
    .restart local v2       #dialog:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected abstract onFilmstripViewScrollStateChanged(I)V
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 61
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 88
    .end local v0           #bResult:Z
    :cond_0
    :goto_0
    return v0

    .line 65
    .restart local v0       #bResult:Z
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 88
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 71
    .local v1, nScrollState:I
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onScrollStateChanged(I)V

    goto :goto_1

    .line 76
    .end local v1           #nScrollState:I
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 77
    .restart local v1       #nScrollState:I
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onFilmstripViewScrollStateChanged(I)V

    goto :goto_1

    .line 81
    .end local v1           #nScrollState:I
    :sswitch_2
    sget-object v2, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SceneDlnaMediaItem][onMessage]..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onErrorCommunication(Landroid/os/Message;)V

    goto :goto_1

    .line 85
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onServerRemoved(Landroid/os/Message;)V

    goto :goto_1

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_2
        0x4e9a -> :sswitch_3
        0x4f4f -> :sswitch_0
        0x4f50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract onScrollStateChanged(I)V
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 244
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendIDLEScrollState(I)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    const/16 v1, 0x4f4f

    .line 93
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onRemoveMessage(I)V

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onPostMessage(ILjava/lang/Object;I)V

    .line 95
    return-void
.end method

.method protected showDialogErrorCommunication()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 161
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 162
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 163
    const/4 v2, 0x0

    .line 178
    :goto_0
    return-object v2

    .line 165
    :cond_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 170
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x2040174

    new-instance v3, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 178
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 183
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 185
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 186
    const/4 v2, 0x0

    .line 207
    :goto_0
    return-object v2

    .line 188
    :cond_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00df

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0120

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 193
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x2040218

    new-instance v3, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 200
    const v2, 0x20401ee

    new-instance v3, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$3;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$3;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 207
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0
.end method
