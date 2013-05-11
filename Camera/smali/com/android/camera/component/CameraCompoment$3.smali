.class Lcom/android/camera/component/CameraCompoment$3;
.super Ljava/lang/Object;
.source "CameraCompoment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CameraCompoment;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CameraCompoment;

.field final synthetic val$callback:Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;

.field final synthetic val$rotation:Lcom/android/camera/rotate/UIRotation;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CameraCompoment;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CameraCompoment$3;->this$0:Lcom/android/camera/component/CameraCompoment;

    iput-object p2, p0, Lcom/android/camera/component/CameraCompoment$3;->val$callback:Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;

    iput-object p3, p0, Lcom/android/camera/component/CameraCompoment$3;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/camera/component/CameraCompoment$3;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment$3;->val$callback:Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment$3;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/CameraCompoment$3;->val$rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;->rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

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
