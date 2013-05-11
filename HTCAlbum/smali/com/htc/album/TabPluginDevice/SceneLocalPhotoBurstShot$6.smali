.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showDialogAskExpand()Landroid/app/Dialog;
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
    .line 2259
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/4 v1, 0x0

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->putAskExpand(Z)Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doExpand()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    .line 2266
    return-void
.end method
