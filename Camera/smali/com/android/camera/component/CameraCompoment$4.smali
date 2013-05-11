.class Lcom/android/camera/component/CameraCompoment$4;
.super Ljava/lang/Object;
.source "CameraCompoment.java"

# interfaces
.implements Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CameraCompoment;->showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateRelativeLayout;Lcom/android/camera/rotate/UIRotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CameraCompoment;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CameraCompoment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CameraCompoment$4;->this$0:Lcom/android/camera/component/CameraCompoment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    check-cast p1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method
