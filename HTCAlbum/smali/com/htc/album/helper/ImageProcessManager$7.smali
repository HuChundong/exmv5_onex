.class Lcom/htc/album/helper/ImageProcessManager$7;
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

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$pickedUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2459
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$7;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$7;->val$pickedUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/htc/album/helper/ImageProcessManager$7;->val$mime:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2462
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2463
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$7;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$7;->val$pickedUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$7;->val$mime:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    return-void
.end method
