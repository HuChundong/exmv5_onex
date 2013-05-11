.class Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;
.super Ljava/lang/Object;
.source "MfFragmentSceneMainBase.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->showDialogNoConnection(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;

.field final synthetic val$bIsFromKDDI:Z


# direct methods
.method constructor <init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;->this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;

    iput-boolean p2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;->val$bIsFromKDDI:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 611
    iget-boolean v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;->val$bIsFromKDDI:Z

    if-eqz v1, :cond_0

    .line 613
    invoke-static {}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->access$100()Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 614
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 617
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .prologue
    .line 595
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;->this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;

    #calls: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onGotoWirelessConnection()V
    invoke-static {v1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->access$000(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V

    .line 598
    iget-boolean v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;->val$bIsFromKDDI:Z

    if-eqz v1, :cond_0

    .line 600
    invoke-static {}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->access$100()Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 601
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 604
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onDismiss()Z
    .locals 2

    .prologue
    .line 624
    iget-boolean v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$2;->val$bIsFromKDDI:Z

    if-eqz v1, :cond_0

    .line 626
    invoke-static {}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->access$100()Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 627
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 628
    const/4 v1, 0x1

    .line 630
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
