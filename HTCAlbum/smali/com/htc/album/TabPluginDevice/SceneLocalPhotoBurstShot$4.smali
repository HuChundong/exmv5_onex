.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showDialogBestShot()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

.field final synthetic val$chkbox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/4 v1, 0x0

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->putAskBestShot(Z)Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)V

    .line 1201
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1202
    return-void
.end method
