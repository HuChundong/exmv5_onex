.class public Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;
.super Ljava/lang/Object;
.source "MfFragmentSceneMainBase.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "progressDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;->this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public onConfirm()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public onDismiss()Z
    .locals 4

    .prologue
    .line 509
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$progressDialogListener;->this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;

    invoke-virtual {v1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onProgressBackPressed()Z

    move-result v0

    .line 510
    .local v0, bResult:Z
    const-string v1, "MfFragmentSunnyMainBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentSunnyMainBase][onDismiss]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return v0
.end method
