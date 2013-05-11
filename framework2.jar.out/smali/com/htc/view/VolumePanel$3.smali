.class Lcom/htc/view/VolumePanel$3;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/htc/view/VolumePanel$3;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 688
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$3;->this$0:Lcom/htc/view/VolumePanel;

    const/4 v1, -0x1

    #setter for: Lcom/htc/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lcom/htc/view/VolumePanel;->access$402(Lcom/htc/view/VolumePanel;I)I

    .line 690
    iget-object v0, p0, Lcom/htc/view/VolumePanel$3;->this$0:Lcom/htc/view/VolumePanel;

    #getter for: Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/view/VolumePanel;->access$500(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/view/VolumePanel$3;->this$0:Lcom/htc/view/VolumePanel;

    #getter for: Lcom/htc/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$400(Lcom/htc/view/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 691
    return-void
.end method
