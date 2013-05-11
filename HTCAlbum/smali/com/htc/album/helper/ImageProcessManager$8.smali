.class Lcom/htc/album/helper/ImageProcessManager$8;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;

.field final synthetic val$featureID:I

.field final synthetic val$finalPos:I

.field final synthetic val$pickerResult:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2451
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$8;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iput p2, p0, Lcom/htc/album/helper/ImageProcessManager$8;->val$featureID:I

    iput p3, p0, Lcom/htc/album/helper/ImageProcessManager$8;->val$finalPos:I

    iput-object p4, p0, Lcom/htc/album/helper/ImageProcessManager$8;->val$pickerResult:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2454
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2455
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$8;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget v1, p0, Lcom/htc/album/helper/ImageProcessManager$8;->val$featureID:I

    iget v2, p0, Lcom/htc/album/helper/ImageProcessManager$8;->val$finalPos:I

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$8;->val$pickerResult:Landroid/content/Intent;

    #calls: Lcom/htc/album/helper/ImageProcessManager;->doProcessSingleMedia(IILandroid/content/Intent;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$3300(Lcom/htc/album/helper/ImageProcessManager;IILandroid/content/Intent;)V

    .line 2456
    return-void
.end method
