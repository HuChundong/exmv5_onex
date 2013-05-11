.class Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;
.super Ljava/lang/Object;
.source "MfFragmentMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showDialogNoConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onConnectionCancel()V

    .line 705
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoWirelessConnection(Landroid/app/Activity;)V

    .line 700
    return-void
.end method

.method public onDismiss()Z
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    return v0
.end method
