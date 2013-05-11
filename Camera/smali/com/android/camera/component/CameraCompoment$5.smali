.class Lcom/android/camera/component/CameraCompoment$5;
.super Ljava/lang/Object;
.source "CameraCompoment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CameraCompoment;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CameraCompoment;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CameraCompoment;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CameraCompoment$5;->this$0:Lcom/android/camera/component/CameraCompoment;

    iput-object p2, p0, Lcom/android/camera/component/CameraCompoment$5;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment$5;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

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
