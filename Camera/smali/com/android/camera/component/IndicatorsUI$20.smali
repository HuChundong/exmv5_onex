.class Lcom/android/camera/component/IndicatorsUI$20;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;

.field final synthetic val$container:Lcom/android/camera/rotate/RotateRelativeLayout;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$20;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iput-object p2, p0, Lcom/android/camera/component/IndicatorsUI$20;->val$container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object p3, p0, Lcom/android/camera/component/IndicatorsUI$20;->val$imageView:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$20;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$20;->val$container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$20;->val$imageView:Landroid/widget/ImageView;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, v1, v2, p2}, Lcom/android/camera/component/IndicatorsUI;->access$1900(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method
