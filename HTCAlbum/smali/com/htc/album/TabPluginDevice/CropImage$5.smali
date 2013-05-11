.class Lcom/htc/album/TabPluginDevice/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/CropImage;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2088
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3000(Lcom/htc/album/TabPluginDevice/CropImage;)S

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2186
    :goto_0
    return-void

    .line 2090
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3000(Lcom/htc/album/TabPluginDevice/CropImage;)S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 2092
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mFaceDetectionDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3702(Lcom/htc/album/TabPluginDevice/CropImage;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->createListAndThumb()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3800(Lcom/htc/album/TabPluginDevice/CropImage;)V

    .line 2105
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 2106
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "can not create bitmap thumbnail, finished"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->showLoadFailToast()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3900(Lcom/htc/album/TabPluginDevice/CropImage;)V

    .line 2108
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_0

    .line 2094
    :catch_0
    move-exception v0

    .line 2097
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cropimage showDialog fail : BadTokenException"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2116
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$4000(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2118
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->closeProgressDialog()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3400(Lcom/htc/album/TabPluginDevice/CropImage;)V

    goto :goto_0

    .line 2123
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mIsImageChanged:Z
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$4002(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 2125
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2127
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2130
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDevice/CropImage$5$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
