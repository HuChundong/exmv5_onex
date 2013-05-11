.class Lcom/htc/album/helper/ImageProcessManager$5;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$featureID:I

.field final synthetic val$targetIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager;ILandroid/content/Intent;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2364
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$5;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iput p2, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$featureID:I

    iput-object p3, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$targetIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2367
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2368
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$5;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget v1, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$featureID:I

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$5;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$targetIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    iget-object v8, p0, Lcom/htc/album/helper/ImageProcessManager$5;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/helper/ImageProcessManager;->handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2369
    return-void
.end method
