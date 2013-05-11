.class Lcom/android/camera/HTCSnapbooth$19;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;

.field final synthetic val$aniThumbImageView:Landroid/widget/ImageView;

.field final synthetic val$animationCompleted:[Z

.field final synthetic val$updateThumbnail:Z


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;ZLandroid/widget/ImageView;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    iput-boolean p2, p0, Lcom/android/camera/HTCSnapbooth$19;->val$updateThumbnail:Z

    iput-object p3, p0, Lcom/android/camera/HTCSnapbooth$19;->val$aniThumbImageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/camera/HTCSnapbooth$19;->val$animationCompleted:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth$19;->val$updateThumbnail:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2800(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2600(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$4700(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2700(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$4700(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$4700(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/camera/HTCSnapbooth;->access$2802(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1, v4}, Lcom/android/camera/HTCSnapbooth;->access$4702(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->val$animationCompleted:[Z

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->val$animationCompleted:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->val$aniThumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$4700(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$19;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$4700(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
