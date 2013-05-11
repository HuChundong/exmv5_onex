.class Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;
.super Ljava/lang/Object;
.source "MfFragmentBaseWithDLNAControl.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showDialogNoConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl.2;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 207
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl.2;"
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 201
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl.2;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoWirelessConnection(Landroid/app/Activity;)V

    .line 202
    return-void
.end method

.method public onDismiss()Z
    .locals 1

    .prologue
    .line 212
    .local p0, this:Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;,"Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl.2;"
    const/4 v0, 0x0

    return v0
.end method
