.class Lcom/android/camera/HTCSnapbooth$20;
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

.field final synthetic val$animationCompleted:[Z


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$20;->this$0:Lcom/android/camera/HTCSnapbooth;

    iput-object p2, p0, Lcom/android/camera/HTCSnapbooth$20;->val$animationCompleted:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$20;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$4800(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$20;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$4900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$20;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$4900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$20;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/android/camera/HTCSnapbooth;->access$4902(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$20;->val$animationCompleted:[Z

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$20;->val$animationCompleted:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$20;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
