.class public Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaListThumbnail;
.super Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;
.source "MfFragmentMainMediaListThumbnail.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "MfFragmentMainMediaListThumbnail"

    sput-object v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaListThumbnail;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateScene()Z
    .locals 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaListThumbnail;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    sget v1, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    .line 12
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->onCreateScene()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaListThumbnail;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    sget v1, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    .line 17
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->onDestroy()V

    .line 18
    return-void
.end method
